sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'pensiones/conf/asign/plan/test/integration/FirstJourney',
		'pensiones/conf/asign/plan/test/integration/pages/AsignPlanPensionesList',
		'pensiones/conf/asign/plan/test/integration/pages/AsignPlanPensionesObjectPage'
    ],
    function(JourneyRunner, opaJourney, AsignPlanPensionesList, AsignPlanPensionesObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('pensiones/conf/asign/plan') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheAsignPlanPensionesList: AsignPlanPensionesList,
					onTheAsignPlanPensionesObjectPage: AsignPlanPensionesObjectPage
                }
            },
            opaJourney.run
        );
    }
);