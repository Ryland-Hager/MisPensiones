sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'mis/pensiones/test/integration/FirstJourney',
		'mis/pensiones/test/integration/pages/EmpleadosList',
		'mis/pensiones/test/integration/pages/EmpleadosObjectPage'
    ],
    function(JourneyRunner, opaJourney, EmpleadosList, EmpleadosObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('mis/pensiones') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheEmpleadosList: EmpleadosList,
					onTheEmpleadosObjectPage: EmpleadosObjectPage
                }
            },
            opaJourney.run
        );
    }
);