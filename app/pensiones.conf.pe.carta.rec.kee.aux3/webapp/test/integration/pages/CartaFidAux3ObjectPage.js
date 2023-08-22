sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'pensiones.conf.pe.carta.rec.kee.aux3',
            componentId: 'CartaFidAux3ObjectPage',
            entitySet: 'CartaFidAux3'
        },
        CustomPageDefinitions
    );
});