//Used to retreive the full Empleado entity so you have access to every field in the database
async function getEmployeeData(Empleados, ID, RFC) {
    let query = SELECT.from(Empleados);

    if (ID && RFC) {
        query = query.where({ ID: ID, RFC: RFC });
    }

    try {
        const employeeData = await cds.run(query);
        return employeeData;
    } catch (error) {
        console.error("Error fetching employee data:", error);
        throw error;
    }
}

//Used to check the maximum percentage a employee can contribute according to the CONF_PE_APORTACION table
async function getMaximumPercentage(Empleados, Aportacion, ID, RFC) {

    //Retreive each row of Aportacion table and store in porcentaje array
    let porcentaje = await SELECT.from(Aportacion);

    //Get specific employee entity data and store seniority score in sAntiguedad
    let employeeData = await getEmployeeData(Empleados, ID, RFC);
    let sAntiguedad = employeeData[0].puntajeAntiguedad;

    //Iterate through each row of Aportacion table
    //If the seniority score matches the criteria in the row, return the maximum percentage
    for (var i = 0; i < porcentaje.length; i++) {

        if ((porcentaje[i].antiguedadInicial <= sAntiguedad) && (porcentaje[i].antiguedadFinal >= sAntiguedad)) {
            return porcentaje[i].porcentajeMax;
        }
    }
}

//Calculate fields and assign them to Empleados entities
async function fillEmployeeData(Empleados, Aportacion, result) {

    //Iterate through each employee in the result array
    for (let i = 0; i < result.length; i++) {

        //Get all of the employees data and check their maximun percentage
        let employeeData = await getEmployeeData(Empleados, result[i].ID, result[i].RFC);
        let Maximum = await getMaximumPercentage(Empleados, Aportacion, employeeData[0].ID, employeeData[0].RFC);

        //Assign values
        result[i].aportacionMaxima = Maximum;
        result[i].aportacionActualEmpleado = Math.round((employeeData[0].sueldoMensual * (Maximum * .01)));
        if (result[i].aportacionProyeccionEmpleado === undefined) {
            result[i].aportacionProyeccionEmpleado = Math.round((employeeData[0].sueldoMensual * result[i].aportacionVigente));
        }
        
        //Dummy values assigned here
        result[i].aportacionActualEmpresa = 26543.23;
        result[i].aportacionProyeccionEmpresa = 32859.19;

    }
    return result;
}

async function updateEmployeeSavingsProjection(EmpleadosEntity, employeeData, savingPercentage) {
    let { sueldoMensual, ID, RFC } = employeeData[0]
    let savingProjections = (parseFloat(sueldoMensual) * savingPercentage) / 100
    savingProjections = savingProjections.toFixed(2)

    await cds.update(EmpleadosEntity.drafts)
        .where({ ID: ID, RFC: RFC })
        .set({
            aportacionProyeccionEmpleado: savingProjections
        });
}

module.exports = {
    getEmployeeData,
    fillEmployeeData,
    getMaximumPercentage,
    updateEmployeeSavingsProjection
};