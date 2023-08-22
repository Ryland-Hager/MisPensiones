sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'pensiones/conf/aportacion/test/integration/FirstJourney',
		'pensiones/conf/aportacion/test/integration/pages/AportacionList',
		'pensiones/conf/aportacion/test/integration/pages/AportacionObjectPage'
    ],
    function(JourneyRunner, opaJourney, AportacionList, AportacionObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('pensiones/conf/aportacion') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheAportacionList: AportacionList,
					onTheAportacionObjectPage: AportacionObjectPage
                }
            },
            opaJourney.run
        );
    }
);