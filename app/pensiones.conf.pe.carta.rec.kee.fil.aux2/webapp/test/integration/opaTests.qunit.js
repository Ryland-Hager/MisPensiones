sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'pensiones/conf/pe/carta/rec/kee/fil/aux2/test/integration/FirstJourney',
		'pensiones/conf/pe/carta/rec/kee/fil/aux2/test/integration/pages/CartaRecKeeFilAux2List',
		'pensiones/conf/pe/carta/rec/kee/fil/aux2/test/integration/pages/CartaRecKeeFilAux2ObjectPage'
    ],
    function(JourneyRunner, opaJourney, CartaRecKeeFilAux2List, CartaRecKeeFilAux2ObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('pensiones/conf/pe/carta/rec/kee/fil/aux2') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheCartaRecKeeFilAux2List: CartaRecKeeFilAux2List,
					onTheCartaRecKeeFilAux2ObjectPage: CartaRecKeeFilAux2ObjectPage
                }
            },
            opaJourney.run
        );
    }
);