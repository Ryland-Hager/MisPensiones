sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'pensiones/conf/pe/carta/rec/kee/aux2/test/integration/FirstJourney',
		'pensiones/conf/pe/carta/rec/kee/aux2/test/integration/pages/CartaRecKeeAux2List',
		'pensiones/conf/pe/carta/rec/kee/aux2/test/integration/pages/CartaRecKeeAux2ObjectPage'
    ],
    function(JourneyRunner, opaJourney, CartaRecKeeAux2List, CartaRecKeeAux2ObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('pensiones/conf/pe/carta/rec/kee/aux2') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheCartaRecKeeAux2List: CartaRecKeeAux2List,
					onTheCartaRecKeeAux2ObjectPage: CartaRecKeeAux2ObjectPage
                }
            },
            opaJourney.run
        );
    }
);