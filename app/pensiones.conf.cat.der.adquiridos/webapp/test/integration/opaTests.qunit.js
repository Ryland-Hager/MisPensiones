sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'pensiones/conf/cat/der/adquiridos/test/integration/FirstJourney',
		'pensiones/conf/cat/der/adquiridos/test/integration/pages/CatDerAdquiridosList',
		'pensiones/conf/cat/der/adquiridos/test/integration/pages/CatDerAdquiridosObjectPage'
    ],
    function(JourneyRunner, opaJourney, CatDerAdquiridosList, CatDerAdquiridosObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('pensiones/conf/cat/der/adquiridos') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheCatDerAdquiridosList: CatDerAdquiridosList,
					onTheCatDerAdquiridosObjectPage: CatDerAdquiridosObjectPage
                }
            },
            opaJourney.run
        );
    }
);