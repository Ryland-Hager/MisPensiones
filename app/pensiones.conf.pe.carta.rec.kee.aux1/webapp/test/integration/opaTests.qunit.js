sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'pensiones/conf/pe/carta/rec/kee/aux1/test/integration/FirstJourney',
		'pensiones/conf/pe/carta/rec/kee/aux1/test/integration/pages/CartaRecKeeAux1List',
		'pensiones/conf/pe/carta/rec/kee/aux1/test/integration/pages/CartaRecKeeAux1ObjectPage'
    ],
    function(JourneyRunner, opaJourney, CartaRecKeeAux1List, CartaRecKeeAux1ObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('pensiones/conf/pe/carta/rec/kee/aux1') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheCartaRecKeeAux1List: CartaRecKeeAux1List,
					onTheCartaRecKeeAux1ObjectPage: CartaRecKeeAux1ObjectPage
                }
            },
            opaJourney.run
        );
    }
);