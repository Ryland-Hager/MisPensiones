sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'pensiones/conf/pe/carta/fid/test/integration/FirstJourney',
		'pensiones/conf/pe/carta/fid/test/integration/pages/CartaFidList',
		'pensiones/conf/pe/carta/fid/test/integration/pages/CartaFidObjectPage'
    ],
    function(JourneyRunner, opaJourney, CartaFidList, CartaFidObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('pensiones/conf/pe/carta/fid') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheCartaFidList: CartaFidList,
					onTheCartaFidObjectPage: CartaFidObjectPage
                }
            },
            opaJourney.run
        );
    }
);