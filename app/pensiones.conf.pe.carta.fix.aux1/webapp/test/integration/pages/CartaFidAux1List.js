sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'pensiones.conf.pe.carta.fix.aux1',
            componentId: 'CartaFidAux1List',
            entitySet: 'CartaFidAux1'
        },
        CustomPageDefinitions
    );
});