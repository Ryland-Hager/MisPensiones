const { requestUserToken } = require("@sap/xssec/lib/requests");

async function getEmployeeData(Empleados, ID, RFC) {
    let query = SELECT.from(Empleados);

    if (ID && RFC) {
        query = query.where({ ID: ID, RFC: RFC});
    }

    try {
        const employeeData = await cds.run(query);
        return employeeData;
    } catch (error) {
        console.error("Error fetching employee data:", error);
        throw error;
    }
}

async function getMaximumPercentage(Empleados, Aportacion, ID, RFC) {

    let porcentaje = await SELECT.from (Aportacion);
    
    let employeeData = await getEmployeeData(Empleados, ID, RFC);
    let sAntiguedad = employeeData[0].puntajeAntiguedad;

    for(var i = 0; i < porcentaje.length; i++) {
            
        if((porcentaje[i].antiguedadInicial <= sAntiguedad) && (porcentaje[i].antiguedadFinal >= sAntiguedad))
        {
            return porcentaje[i].porcentajeMax;
        }
    }
}

async function fillEmployeeData(Empleados, Aportacion, result) {

    for (let i = 0; i < result.length; i++) {

        let employeeData = await getEmployeeData(Empleados, result[i].ID, result[i].RFC);

        let Maximum = await getMaximumPercentage(Empleados, Aportacion, employeeData[0].ID, employeeData[0].RFC);

        // employee.aportacionActualEmpleado = (parseFloat(employee.sueldoMensual) * (employee.aportacionMaxima * .01)).toFixed(2);
        // employee.aportacionProyeccionEmpleado = (parseFloat(employee.sueldoMensual) * parseFloat(employee.aportacionVigente)).toFixed(2);
        result[i].aportacionMaxima = Maximum;
        result[i].aportacionActualEmpleado = Math.round((employeeData[0].sueldoMensual * (Maximum * .01)));
        result[i].aportacionProyeccionEmpleado = Math.round((employeeData[0].sueldoMensual * result[i].aportacionVigente));
        result[i].aportacionActualEmpresa = 26543.23;
        result[i].aportacionProyeccionEmpresa = 32859.19;

    }
    return result;
}

module.exports = {
    getEmployeeData,
    fillEmployeeData,
    getMaximumPercentage
};