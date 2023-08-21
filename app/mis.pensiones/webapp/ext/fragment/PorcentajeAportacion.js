sap.ui.define([
    'sap/ui/core/mvc/Controller',
	'sap/ui/model/json/JSONModel'
], function(Controller, JSONModel) {
    'use strict';

    var PageController = Controller.extend("mis/pensiones/ext/fragment/PorcentajeAportacion", {
        
        override: {

            onInit: function () {

                console.log("Controller Loaded");
                
                var oData = { 
                    "SelectedPercent": "2",
                    "PercentCollection": [
                        {
                            "PercentId": "1",
                            "Name": "1"
                        },
                        {
                            "PercentId": "2",
                            "Name": "2"
                        },
                        {
                            "PercentId": "3",
                            "Name": "3"
                        }
                    ]
                };
    
                var oModel = new JSONModel(oData);
                this.getView().setModel(oModel);
    
                // this.getView().setModel(oModel, "TestBox");
            }

        }

    }); 

    return PageController;
});
