sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'pensions.conf.pe.carta.rec.kee.aux2',
            componentId: 'CartaRecKeeAux2List',
            entitySet: 'CartaRecKeeAux2'
        },
        CustomPageDefinitions
    );
});