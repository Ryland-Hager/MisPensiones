sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'pensiones.conf.cat.der.adquiridos',
            componentId: 'CatDerAdquiridosList',
            entitySet: 'CatDerAdquiridos'
        },
        CustomPageDefinitions
    );
});