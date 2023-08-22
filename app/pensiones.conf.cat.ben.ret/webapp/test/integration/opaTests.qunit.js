sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'pensiones/conf/cat/ben/ret/test/integration/FirstJourney',
		'pensiones/conf/cat/ben/ret/test/integration/pages/CatBenRetList',
		'pensiones/conf/cat/ben/ret/test/integration/pages/CatBenRetObjectPage'
    ],
    function(JourneyRunner, opaJourney, CatBenRetList, CatBenRetObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('pensiones/conf/cat/ben/ret') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheCatBenRetList: CatBenRetList,
					onTheCatBenRetObjectPage: CatBenRetObjectPage
                }
            },
            opaJourney.run
        );
    }
);