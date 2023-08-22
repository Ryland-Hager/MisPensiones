sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'pensiones/conf/aportacion/empresa/test/integration/FirstJourney',
		'pensiones/conf/aportacion/empresa/test/integration/pages/AportacionEmpresaList',
		'pensiones/conf/aportacion/empresa/test/integration/pages/AportacionEmpresaObjectPage'
    ],
    function(JourneyRunner, opaJourney, AportacionEmpresaList, AportacionEmpresaObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('pensiones/conf/aportacion/empresa') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheAportacionEmpresaList: AportacionEmpresaList,
					onTheAportacionEmpresaObjectPage: AportacionEmpresaObjectPage
                }
            },
            opaJourney.run
        );
    }
);