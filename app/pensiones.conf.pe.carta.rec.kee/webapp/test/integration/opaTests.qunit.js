sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'pensiones/conf/pe/carta/rec/kee/test/integration/FirstJourney',
		'pensiones/conf/pe/carta/rec/kee/test/integration/pages/CartaRecKeeList',
		'pensiones/conf/pe/carta/rec/kee/test/integration/pages/CartaRecKeeObjectPage'
    ],
    function(JourneyRunner, opaJourney, CartaRecKeeList, CartaRecKeeObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('pensiones/conf/pe/carta/rec/kee') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheCartaRecKeeList: CartaRecKeeList,
					onTheCartaRecKeeObjectPage: CartaRecKeeObjectPage
                }
            },
            opaJourney.run
        );
    }
);