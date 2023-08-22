sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'pensiones.conf.apor.plan.prev.patri',
            componentId: 'AporPlanPrevPatriList',
            entitySet: 'AporPlanPrevPatri'
        },
        CustomPageDefinitions
    );
});