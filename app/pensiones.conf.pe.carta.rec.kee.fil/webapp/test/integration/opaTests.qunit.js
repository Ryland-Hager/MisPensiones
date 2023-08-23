sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'pensiones/conf/pe/carta/rec/kee/fil/test/integration/FirstJourney',
		'pensiones/conf/pe/carta/rec/kee/fil/test/integration/pages/CartaRecKeeFilList',
		'pensiones/conf/pe/carta/rec/kee/fil/test/integration/pages/CartaRecKeeFilObjectPage'
    ],
    function(JourneyRunner, opaJourney, CartaRecKeeFilList, CartaRecKeeFilObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('pensiones/conf/pe/carta/rec/kee/fil') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheCartaRecKeeFilList: CartaRecKeeFilList,
					onTheCartaRecKeeFilObjectPage: CartaRecKeeFilObjectPage
                }
            },
            opaJourney.run
        );
    }
);