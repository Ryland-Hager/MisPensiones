sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'pensiones.conf.pe.carta.fid.aux2',
            componentId: 'CartaFidAux2ObjectPage',
            entitySet: 'CartaFidAux2'
        },
        CustomPageDefinitions
    );
});