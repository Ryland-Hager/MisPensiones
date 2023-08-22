sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'pensiones/conf/anti/porc/aport/test/integration/FirstJourney',
		'pensiones/conf/anti/porc/aport/test/integration/pages/AntiPorcAportList',
		'pensiones/conf/anti/porc/aport/test/integration/pages/AntiPorcAportObjectPage'
    ],
    function(JourneyRunner, opaJourney, AntiPorcAportList, AntiPorcAportObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('pensiones/conf/anti/porc/aport') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheAntiPorcAportList: AntiPorcAportList,
					onTheAntiPorcAportObjectPage: AntiPorcAportObjectPage
                }
            },
            opaJourney.run
        );
    }
);