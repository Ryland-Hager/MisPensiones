sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'pensiones.conf.pe.carta.rec.kee.aux1',
            componentId: 'CartaRecKeeAux1List',
            entitySet: 'CartaRecKeeAux1'
        },
        CustomPageDefinitions
    );
});