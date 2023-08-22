sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'pensiones/conf/cat/pensiones/test/integration/FirstJourney',
		'pensiones/conf/cat/pensiones/test/integration/pages/CatPensionesList',
		'pensiones/conf/cat/pensiones/test/integration/pages/CatPensionesObjectPage'
    ],
    function(JourneyRunner, opaJourney, CatPensionesList, CatPensionesObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('pensiones/conf/cat/pensiones') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheCatPensionesList: CatPensionesList,
					onTheCatPensionesObjectPage: CatPensionesObjectPage
                }
            },
            opaJourney.run
        );
    }
);