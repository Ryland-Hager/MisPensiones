sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'pensiones.conf.pe.carta.rec.kee.aux2',
            componentId: 'CartaFidAux2List',
            entitySet: 'CartaFidAux2'
        },
        CustomPageDefinitions
    );
});