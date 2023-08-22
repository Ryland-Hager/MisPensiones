sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'pensiones/conf/pe/carta/fix/aux1/test/integration/FirstJourney',
		'pensiones/conf/pe/carta/fix/aux1/test/integration/pages/CartaFidAux1List',
		'pensiones/conf/pe/carta/fix/aux1/test/integration/pages/CartaFidAux1ObjectPage'
    ],
    function(JourneyRunner, opaJourney, CartaFidAux1List, CartaFidAux1ObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('pensiones/conf/pe/carta/fix/aux1') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheCartaFidAux1List: CartaFidAux1List,
					onTheCartaFidAux1ObjectPage: CartaFidAux1ObjectPage
                }
            },
            opaJourney.run
        );
    }
);