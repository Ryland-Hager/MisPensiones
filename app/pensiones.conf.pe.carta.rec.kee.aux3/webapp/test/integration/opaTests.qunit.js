sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'pensiones/conf/pe/carta/rec/kee/aux3/test/integration/FirstJourney',
		'pensiones/conf/pe/carta/rec/kee/aux3/test/integration/pages/CartaRecKeeAux3List',
		'pensiones/conf/pe/carta/rec/kee/aux3/test/integration/pages/CartaRecKeeAux3ObjectPage'
    ],
    function(JourneyRunner, opaJourney, CartaRecKeeAux3List, CartaRecKeeAux3ObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('pensiones/conf/pe/carta/rec/kee/aux3') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheCartaRecKeeAux3List: CartaRecKeeAux3List,
					onTheCartaRecKeeAux3ObjectPage: CartaRecKeeAux3ObjectPage
                }
            },
            opaJourney.run
        );
    }
);