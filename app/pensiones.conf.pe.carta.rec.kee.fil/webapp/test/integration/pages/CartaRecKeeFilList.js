sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'pensiones.conf.pe.carta.rec.kee.fil',
            componentId: 'CartaRecKeeFilList',
            entitySet: 'CartaRecKeeFil'
        },
        CustomPageDefinitions
    );
});