sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'pensiones/conf/pe/carta/rec/kee/fil/aux3/test/integration/FirstJourney',
		'pensiones/conf/pe/carta/rec/kee/fil/aux3/test/integration/pages/CartaFidAux3List',
		'pensiones/conf/pe/carta/rec/kee/fil/aux3/test/integration/pages/CartaFidAux3ObjectPage'
    ],
    function(JourneyRunner, opaJourney, CartaFidAux3List, CartaFidAux3ObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('pensiones/conf/pe/carta/rec/kee/fil/aux3') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheCartaFidAux3List: CartaFidAux3List,
					onTheCartaFidAux3ObjectPage: CartaFidAux3ObjectPage
                }
            },
            opaJourney.run
        );
    }
);