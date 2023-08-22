sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'pensiones/conf/pe/carta/fid/aux2/test/integration/FirstJourney',
		'pensiones/conf/pe/carta/fid/aux2/test/integration/pages/CartaFidAux2List',
		'pensiones/conf/pe/carta/fid/aux2/test/integration/pages/CartaFidAux2ObjectPage'
    ],
    function(JourneyRunner, opaJourney, CartaFidAux2List, CartaFidAux2ObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('pensiones/conf/pe/carta/fid/aux2') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheCartaFidAux2List: CartaFidAux2List,
					onTheCartaFidAux2ObjectPage: CartaFidAux2ObjectPage
                }
            },
            opaJourney.run
        );
    }
);