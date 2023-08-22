sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'pensiones.conf.aportacion.empresa',
            componentId: 'AportacionEmpresaList',
            entitySet: 'AportacionEmpresa'
        },
        CustomPageDefinitions
    );
});