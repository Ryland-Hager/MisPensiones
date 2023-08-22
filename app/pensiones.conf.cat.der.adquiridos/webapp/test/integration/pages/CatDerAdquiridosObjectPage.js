sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'pensiones.conf.cat.der.adquiridos',
            componentId: 'CatDerAdquiridosObjectPage',
            entitySet: 'CatDerAdquiridos'
        },
        CustomPageDefinitions
    );
});