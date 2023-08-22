sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'pensiones.conf.pe.carta.rec.kee.aux1',
            componentId: 'CartaRecKeeAux1ObjectPage',
            entitySet: 'CartaRecKeeAux1'
        },
        CustomPageDefinitions
    );
});