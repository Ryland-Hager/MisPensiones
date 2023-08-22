sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'pensiones/conf/cobertura/medica/test/integration/FirstJourney',
		'pensiones/conf/cobertura/medica/test/integration/pages/CoberturaMedicaList',
		'pensiones/conf/cobertura/medica/test/integration/pages/CoberturaMedicaObjectPage'
    ],
    function(JourneyRunner, opaJourney, CoberturaMedicaList, CoberturaMedicaObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('pensiones/conf/cobertura/medica') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheCoberturaMedicaList: CoberturaMedicaList,
					onTheCoberturaMedicaObjectPage: CoberturaMedicaObjectPage
                }
            },
            opaJourney.run
        );
    }
);