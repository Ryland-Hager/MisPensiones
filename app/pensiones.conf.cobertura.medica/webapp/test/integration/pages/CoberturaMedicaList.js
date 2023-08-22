sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'pensiones.conf.cobertura.medica',
            componentId: 'CoberturaMedicaList',
            entitySet: 'CoberturaMedica'
        },
        CustomPageDefinitions
    );
});