const { requestUserToken } = require("@sap/xssec/lib/requests");

async function calculateVirtualData(result) {

    // if (Array.isArray(result)) {

    //     result.forEach(employee => {
    //         const seniority = 5;

    //         employee.aportacionMaxima = seniority;
    //     })

    // } else {
        
    //     const employee = result;

    //     const seniority = 6;

    //     employee.aportacionMaxima = seniority;
    // }

}

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

async function fillEmployeeData(Empleados, Aportacion, result) {

    let porcentaje = await SELECT.from (Aportacion);

    for (let i = 0; i < result.length; i++) {

        let employeeData = await getEmployeeData(Empleados, result[i].ID, result[i].RFC);

        let sAntiguedad = employeeData[0].puntajeAntiguedad;

        for(var x = 0; x < porcentaje.length; x++) {
            
            if((porcentaje[x].antiguedadInicial <= sAntiguedad) && (porcentaje[x].antiguedadFinal >= sAntiguedad))
            {
                result[i].aportacionMaxima = porcentaje[x].porcentajeMax;
            }
        }
            // employee.aportacionActualEmpleado = (parseFloat(employee.sueldoMensual) * (employee.aportacionMaxima * .01)).toFixed(2);
            // employee.aportacionProyeccionEmpleado = (parseFloat(employee.sueldoMensual) * parseFloat(employee.aportacionVigente)).toFixed(2);
            result[i].aportacionActualEmpleado = Math.round((employeeData[0].sueldoMensual * (result[i].aportacionMaxima * .01)));
            result[i].aportacionProyeccionEmpleado = Math.round((employeeData[0].sueldoMensual * result[i].aportacionVigente));
            result[i].aportacionActualEmpresa = 26543.23;
            result[i].aportacionProyeccionEmpresa = 32859.19;


            var max = result[i].aportacionMaxima;
            var options = [];

            for (var num = 1; num <= max; num++) {
                options.push(num); 
              }

            result[i].allowedPercentages = options.map(percentage => ({
                percentage: percentage
            }))
    }


    // if (Array.isArray(result)) {
        
    //     result.forEach(employee => {

    //         let sEmployee = await getEmployeeData(Empleados, employee.ID, employee.RFC);

    //     })

    // }
    

    return result;
}


module.exports = {
    calculateVirtualData,
    getEmployeeData,
    fillEmployeeData
};