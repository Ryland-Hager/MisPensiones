sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'pensiones.conf.pe.carta.fix.aux1',
            componentId: 'CartaFidAux1ObjectPage',
            entitySet: 'CartaFidAux1'
        },
        CustomPageDefinitions
    );
});