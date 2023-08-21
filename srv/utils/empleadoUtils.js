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


module.exports = {
    calculateVirtualData,
    getEmployeeData
};