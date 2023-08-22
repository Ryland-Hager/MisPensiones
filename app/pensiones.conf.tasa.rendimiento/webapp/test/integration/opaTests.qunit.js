sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'pensiones/conf/tasa/rendimiento/test/integration/FirstJourney',
		'pensiones/conf/tasa/rendimiento/test/integration/pages/TasaRendimientoList',
		'pensiones/conf/tasa/rendimiento/test/integration/pages/TasaRendimientoObjectPage'
    ],
    function(JourneyRunner, opaJourney, TasaRendimientoList, TasaRendimientoObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('pensiones/conf/tasa/rendimiento') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheTasaRendimientoList: TasaRendimientoList,
					onTheTasaRendimientoObjectPage: TasaRendimientoObjectPage
                }
            },
            opaJourney.run
        );
    }
);