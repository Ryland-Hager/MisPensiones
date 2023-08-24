sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'pensions.conf.pe.carta.rec.kee.aux2',
            componentId: 'CartaRecKeeAux2ObjectPage',
            entitySet: 'CartaRecKeeAux2'
        },
        CustomPageDefinitions
    );
});