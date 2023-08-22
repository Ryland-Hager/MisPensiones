sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'pensiones/conf/apor/plan/prev/patri/test/integration/FirstJourney',
		'pensiones/conf/apor/plan/prev/patri/test/integration/pages/AporPlanPrevPatriList',
		'pensiones/conf/apor/plan/prev/patri/test/integration/pages/AporPlanPrevPatriObjectPage'
    ],
    function(JourneyRunner, opaJourney, AporPlanPrevPatriList, AporPlanPrevPatriObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('pensiones/conf/apor/plan/prev/patri') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheAporPlanPrevPatriList: AporPlanPrevPatriList,
					onTheAporPlanPrevPatriObjectPage: AporPlanPrevPatriObjectPage
                }
            },
            opaJourney.run
        );
    }
);