sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'pensiones.conf.anti.porc.aport',
            componentId: 'AntiPorcAportList',
            entitySet: 'AntiPorcAport'
        },
        CustomPageDefinitions
    );
});