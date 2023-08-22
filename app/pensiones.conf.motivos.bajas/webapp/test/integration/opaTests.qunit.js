sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'pensiones/conf/motivos/bajas/test/integration/FirstJourney',
		'pensiones/conf/motivos/bajas/test/integration/pages/MotivosBajasList',
		'pensiones/conf/motivos/bajas/test/integration/pages/MotivosBajasObjectPage'
    ],
    function(JourneyRunner, opaJourney, MotivosBajasList, MotivosBajasObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('pensiones/conf/motivos/bajas') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheMotivosBajasList: MotivosBajasList,
					onTheMotivosBajasObjectPage: MotivosBajasObjectPage
                }
            },
            opaJourney.run
        );
    }
);