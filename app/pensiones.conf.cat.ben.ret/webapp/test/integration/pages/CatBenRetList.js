sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'pensiones.conf.cat.ben.ret',
            componentId: 'CatBenRetList',
            entitySet: 'CatBenRet'
        },
        CustomPageDefinitions
    );
});