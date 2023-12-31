const cds = require('@sap/cds')
const { PassThrough } = require("stream")
const { getEmployeeData, fillEmployeeData, getMaximumPercentage, updateEmployeeSavingsProjection } = require('./utils/empleadoUtils')

class PensionesService extends cds.ApplicationService {

    init() {

        //Get entities
        const { Empleados, Aportacion, MapaElementos } = this.entities;

        this.after('READ', 'Empleados', async (req) => {

            //Pass array of all Empleado entities to fill the calculated fields and return new array
            const result = req;
            const employeeData = await fillEmployeeData(Empleados, Aportacion, result);

            return employeeData;
        })

        this.after('PATCH', 'Empleados', async (data) => {
            if ('quieresAhorrar' in data) {

                let employeeData = await getEmployeeData(Empleados, data.ID, data.RFC)
                await updateEmployeeSavingsProjection(Empleados, employeeData, data.quieresAhorrar)

            }
        })

        //Populate the allowed percentages in the Porcentaje de Aportacion section in the Object Page 
        this.on('READ', 'AllowedPercentages', async (req) => {

            let percentages = [];
            let filterString = req._query.$filter;

            if (filterString) {

                let ID = filterString.split("'")[1];
                let RFC = filterString.split("'")[3];
                let Maximum = await getMaximumPercentage(Empleados, Aportacion, ID, RFC);

                //array of integers counting up to Maximum
                var options = [];
                for (let i = 1; i <= Maximum; i++) {
                    options.push(i);
                }

                //array of percentage properties with values
                percentages = options.map(percentage => ({
                    percentage: percentage
                }))

                return percentages;
            }
        })


        //Functionality changed, delete?
        this.on('cambioPorcentaje', async (req) => {

            if (req.context.params) {

                let aID = req.context.params.map(function (elem) {
                    return elem.ID;
                })

                try {
                    let result = await UPDATE(Empleados)
                        .set({ aportacionFutura: req.data.aportacionFutura })
                        .where({ ID: aID });

                    if (result) {
                        req.info(200, "Estado actualizado para las entradas seleccionadas");
                    }
                }
                catch (e) {
                    req.error(400, "Error durante la actualización");
                }
            }
        })

        this.on('PUT', "cargaDeExcel", async (req, next) => {

            // const bundle = textBundle.getTextBundle(req.user.locale);
            var buffer;
            if (req.data.excel) {
                // var entity = req.headers.slug;
                const stream = new PassThrough();
                var buffers = [];
                req.data.excel.pipe(stream);
                let aResults = await new Promise((resolve, reject) => {
                    stream.on('data', dataChunk => {
                        buffers.push(dataChunk);
                    });
                    stream.on('end', async () => {
                        buffer = Buffer.concat(buffers);
                        let aData = buffer.toString().split("\n");
                        let sHeader = aData[0];
                        let aCols = sHeader.split(",");
                        let aDataRow = []
                        let aInsertCols = [];
                        let aInsertableRows = [];
                        let aResults = [];
                        for (var i = 0; i < aCols.length; i++) {
                            if (aCols[i].includes("\r")) {
                                aCols[i] = aCols[i].substring(0, aCols[i].length - 1)
                            }
                            switch (aCols[i]) {
                                case "ID":
                                    aInsertCols.push("ID");
                                    break;
                                case "RFC":
                                    aInsertCols.push("rfc");
                                    break;
                                case "PRIMERNOMBRE":
                                    aInsertCols.push("primerNombre");
                                    break;
                                case "APELLIDOPATERNO":
                                    aInsertCols.push("apellidoPaterno");
                                    break;
                                case "APELLIDOMATERNO":
                                    aInsertCols.push("apellidoMaterno");
                                    break;
                                case "WORKDAYID":
                                    aInsertCols.push("workdayID");
                                    break;
                                case "SUELDOMENSUAL":
                                    aInsertCols.push("sueldoMensual");
                                    break;
                                case "TIPOCONTRACTO":
                                    aInsertCols.push("tipoContracto");
                                    break;
                                case "GRUPOPAGO":
                                    aInsertCols.push("grupoPago")
                                    break;
                                case "FECHAANTIGUEDAD":
                                    aInsertCols.push("fechaAntiguedad")
                                    break;
                                case "FECHAINGRESO":
                                    aInsertCols.push("fechaIngreso");
                                    break;
                                case "FECHAINCORPORACION":
                                    aInsertCols.push("fechaIncorporacion");
                                    break;
                                case "FECHAACTUALIZACION":
                                    aInsertCols.push("fechaActualizacion");
                                    break;
                                case "FECHABENEFICIOS":
                                    aInsertCols.push("fechaBeneficios");
                                    break;
                                case "CONTRACTO":
                                    aInsertCols.push("contracto");
                                    break;
                                case "COLABORADOR":
                                    aInsertCols.push("colaborador");
                                    break;
                                case "PUESTO":
                                    aInsertCols.push("puesto");
                                    break;
                                case "EMPRESAID":
                                    aInsertCols.push("empresaID");
                                    break;
                                case "EMPRESATEXT":
                                    aInsertCols.push("empresaText");
                                    break;
                                case "MARCAPLANTOP":
                                    aInsertCols.push("marcaPlanTOP");
                                    break;
                                case "MARCAPLANMATCH":
                                    aInsertCols.push("marcaPlanMatch");
                                    break;
                                case "MARCAPPR":
                                    aInsertCols.push("marcaPPR");
                                    break;
                                case "FONDOAHORRO":
                                    aInsertCols.push("fondoAhorro");
                                    break;
                                case "APORTACIONFUTURA":
                                    aInsertCols.push("aportacionFutura");
                                    break;
                                case "APARTACIONVIGENTE":
                                    aInsertCols.push("apartacionVigente");
                                    break;
                                case "FONDOVIVE":
                                    aInsertCols.push("fondoVive");
                                    break;
                                case "COBERTURAMEDICA":
                                    aInsertCols.push("coberturaMedica");
                                    break;
                                case "MEDICOVITALICIO":
                                    aInsertCols.push("medicoVitalicio");
                                    break;
                                case "PLANBENEFICIO":
                                    aInsertCols.push("planBeneficio");
                                    break;
                                case "PUNTAJEANTIGUEDAD":
                                    aInsertCols.push("puntajeAntiguedad");
                                    break;
                                case "PUNTAJEEDAD":
                                    aInsertCols.push("puntajeEdad");
                                    break;
                                case "PUNTOSACTUALES":
                                    aInsertCols.push("puntosActuales");
                                    break;
                                case "COMENTARIOS":
                                    aInsertCols.push("comentarios");
                                    break;
                                case "ANOSMESESDIASANTIGUEDAD":
                                    aInsertCols.push("anosMesesDiasAntiguedad");
                                    break;
                                case "MONTODERECHOSADQUIRIDOS":
                                    aInsertCols.push("montoDerechosAdquiridos");
                                    break;
                                case "DERECHOSADQUIRIDOS":
                                    aInsertCols.push("derechosAdquiridos");
                                    break;
                                case "APORTACIONMAXIMA":
                                    aInsertCols.push("aportacionMaxima");
                                    break;
                                case "QUIERESAHORRAR":
                                    aInsertCols.push("quieresAhorrar");
                                    break;
                                case "APORTACIONACTUALEMPLEADO":
                                    aInsertCols.push("aportacionActualEmpleado");
                                    break;
                                case "APORTACIONPROYECCIONEMPLEADO":
                                    aInsertCols.push("aportacionProyeccionEmpleado");
                                    break;
                                case "APORTACIONACTUALEMPRESA":
                                    aInsertCols.push("aportacionActualEmpresa");
                                    break;
                                case "APORTACIONPROYECCIONEMPRESA":
                                    aInsertCols.push("aportacionProyeccionEmpresa");
                                    break;
                                case "FONDOINVERSION":
                                    aInsertCols.push("fondoInversion");
                                    break;
                                case "RAZONSOCIAL":
                                    aInsertCols.push("razonSocial");
                                    break;
                                case "CLAVEPIZARRA":
                                    aInsertCols.push("clavePizarra");
                                    break;
                                case "HORIZONTEINVERSION":
                                    aInsertCols.push("horizonteInversion");
                                    break;
                            }
                        }
                        if (aInsertCols.length === 0) {  //Cols not correct.File not received in correct format
                            aResults.push({
                                "Fila": "NA",
                                "Message": 'Encabezados incorrectos en el archivo'
                            })
                            resolve(aResults)
                        }
                        else {
                            for (var i = 1; i < aData.length; i++) {
                                aDataRow = aData[i].split(",");
                                if (aDataRow.length != aInsertCols.length) {
                                    continue;
                                }
                                let oInsertDataRow = {};
                                for (var j = 0; j < aDataRow.length; j++) {
                                    if (aDataRow[j].includes("\r")) {
                                        aDataRow[j] = aDataRow[j].substring(0, aDataRow[j].length - 1)
                                    }
                                    oInsertDataRow[aInsertCols[j]] = aDataRow[j];
                                }
                                if (!!oInsertDataRow) {
                                    aInsertableRows.push(oInsertDataRow);
                                }
                            }
                        }
                        if (aInsertableRows.length > 0) {
                            for (var i = 0; i < aInsertableRows.length; i++) {

                                try {
                                    let result = await UPSERT.entity(Empleados)
                                        .set({
                                            ID: aInsertableRows[i].ID,
                                            rfc: aInsertableRows[i].rfc,
                                            primerNombre: aInsertableRows[i].primerNombre,
                                            apellidoPaterno: aInsertableRows[i].apellidoPaterno,
                                            apellidoMaterno: aInsertableRows[i].apellidoMaterno,
                                            workdayID: aInsertableRows[i].workdayID,
                                            sueldoMensual: aInsertableRows[i].sueldoMensual,
                                            tipoContracto: aInsertableRows[i].tipoContracto,
                                            grupoPago: aInsertableRows[i].grupoPago,
                                            fechaAntiguedad: aInsertableRows[i].fechaAntiguedad,
                                            fechaIngreso: aInsertableRows[i].fechaIngreso,
                                            fechaIncorporacion: aInsertableRows[i].fechaIncorporacion,
                                            fechaActualizacion: aInsertableRows[i].fechaActualizacion,
                                            fechaBeneficios: aInsertableRows[i].fechaBeneficios,
                                            contracto: aInsertableRows[i].contracto,
                                            colaborador: aInsertableRows[i].colaborador,
                                            puesto: aInsertableRows[i].puesto,
                                            empresaID: aInsertableRows[i].empresaID,
                                            empresaText: aInsertableRows[i].empresaText,
                                            marcaPlanTOP: aInsertableRows[i].marcaPlanTOP,
                                            marcaPlanMatch: aInsertableRows[i].marcaPlanMatch,
                                            marcaPPR: aInsertableRows[i].marcaPPR,
                                            fondoAhorro: aInsertableRows[i].fondoAhorro,
                                            aportacionFutura: aInsertableRows[i].aportacionFutura,
                                            apartacionVigente: aInsertableRows[i].apartacionVigente,
                                            fondoVive: aInsertableRows[i].fondoVive,
                                            coberturaMedica: aInsertableRows[i].coberturaMedica,
                                            medicoVitalicio: aInsertableRows[i].medicoVitalicio,
                                            planBeneficio: aInsertableRows[i].planBeneficio,
                                            puntajeAntiguedad: aInsertableRows[i].puntajeAntiguedad,
                                            puntajeEdad: aInsertableRows[i].puntajeEdad,
                                            puntosActuales: aInsertableRows[i].puntosActuales,
                                            comentarios: aInsertableRows[i].comentarios,
                                            anosMesesDiasAntiguedad: aInsertableRows[i].anosMesesDiasAntiguedad,
                                            montoDerechosAdquiridos: aInsertableRows[i].montoDerechosAdquiridos,
                                            derechosAdquiridos: aInsertableRows[i].derechosAdquiridos,
                                            aportacionMaxima: aInsertableRows[i].aportacionMaxima,
                                            quieresAhorrar: aInsertableRows[i].quieresAhorrar,
                                            aportacionActualEmpleado: aInsertableRows[i].aportacionActualEmpleado,
                                            aportacionProyeccionEmpleado: aInsertableRows[i].aportacionProyeccionEmpleado,
                                            aportacionActualEmpresa: aInsertableRows[i].aportacionActualEmpresa,
                                            aportacionProyeccionEmpresa: aInsertableRows[i].aportacionProyeccionEmpresa,
                                            fondoInversion: aInsertableRows[i].fondoInversion,
                                            razonSocial: aInsertableRows[i].razonSocial,
                                            clavePizarra: aInsertableRows[i].clavePizarra,
                                            horizonteInversion: aInsertableRows[i].horizonteInversion
                                        })
                                        .where({
                                            ID: aInsertableRows[i].ID
                                            //  and: {
                                            //      _estado_llave: { 'in': [1, null] },
                                            //      // or: { _estado_llave: { '=': 1 }, _estado_llave: { '=': null } },
                                            //      up__up__RFC: aInsertableRows[i].up__up__RFC
                                            //  }
                                        });
                                    if (result) {
                                        aResults.push({
                                            "Fila": i + 1,
                                            "Message": 'actualizado exitosamente'
                                        })
                                    }
                                    else {
                                        aResults.push({
                                            "Fila": i + 1,
                                            "Message": 'No hay registro para actualizar'
                                        })
                                    }
                                }
                                catch (e) {
                                    aResults.push({
                                        "Fila": i + 1,
                                        "Message": 'Error en la actualización'
                                    })
                                }
                            }
                        }
                        else {
                            aResults.push({
                                "Fila": "NA",
                                "Message": 'No se encontraron datos para cargar'
                            })
                        }
                        resolve(aResults)
                    });
                });
                if (aResults.length) {
                    let { res } = req.http;
                    res.send(aResults);
                }
            } else {
                return next();
            }
        })

        return super.init()
    }
};
module.exports = { PensionesService }