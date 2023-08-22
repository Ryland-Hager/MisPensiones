sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'pensiones.conf.pe.carta.rec.kee.aux3',
            componentId: 'CartaFidAux3List',
            entitySet: 'CartaFidAux3'
        },
        CustomPageDefinitions
    );
});