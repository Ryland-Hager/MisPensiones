sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'pensiones/conf/comp/plan/test/integration/FirstJourney',
		'pensiones/conf/comp/plan/test/integration/pages/CompPlanPensionesList',
		'pensiones/conf/comp/plan/test/integration/pages/CompPlanPensionesObjectPage'
    ],
    function(JourneyRunner, opaJourney, CompPlanPensionesList, CompPlanPensionesObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('pensiones/conf/comp/plan') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheCompPlanPensionesList: CompPlanPensionesList,
					onTheCompPlanPensionesObjectPage: CompPlanPensionesObjectPage
                }
            },
            opaJourney.run
        );
    }
);