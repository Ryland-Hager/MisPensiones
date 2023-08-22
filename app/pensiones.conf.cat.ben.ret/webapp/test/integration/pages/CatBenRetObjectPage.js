sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'pensiones.conf.cat.ben.ret',
            componentId: 'CatBenRetObjectPage',
            entitySet: 'CatBenRet'
        },
        CustomPageDefinitions
    );
});