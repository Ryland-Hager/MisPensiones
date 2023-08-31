sap.ui.define([
	"sap/ui/core/Fragment",
    "sap/ui/core/mvc/ControllerExtension",
    "sap/m/Dialog",
    "sap/m/DialogType",
    "sap/m/Text",
    "sap/m/Button",
    "sap/m/ButtonType",
    "sap/m/Label",
    "sap/m/Input",
    "sap/m/MessageToast",
    "sap/m/MessageBox",
    "sap/ui/model/json/JSONModel",
    'sap/ui/export/library',
	'sap/ui/export/Spreadsheet'
], function (Fragment, ControllerExtension, Dialog, DialogType, Text, Button, ButtonType, Label, Input, MessageToast, MessageBox, JSONModel,exportLibrary, Spreadsheet) {
	'use strict';

	var EdmType = exportLibrary.EdmType;

	return ControllerExtension.extend('mis.pensiones.ext.controller.ListPageExt', {
		// this section allows to extend lifecycle hooks or hooks provided by Fiori elements
		override: {
			/**
             * Called when a controller is instantiated and its View controls (if available) are already created.
             * Can be used to modify the View before it is displayed, to bind event handlers and do other one-time initialization.
             * @memberOf mispensiones.ext.controller.ListPageExt
             */
			onInit: function () {
				this._resourceBundle = this.base.getAppComponent().getModel("i18n").getResourceBundle();

                // var oModel = new JSONModel({ 
                //     ID: "",
                //     primerNombre: "",
                //     apellidoPaterno: "",
                //     apellidoMaterno: "",
                //     maxAportacion: ""
                // });
                // this.getView().setModel(oModel, "empleado");
			}
		},

        //Funcionality changed, potentially delete?
		onCambioPorcentaje: function (oContext, aSelectedContexts) {
			this.getView().getModel("empleado");
            var that = this;
            this.aSelectedContexts = aSelectedContexts;

            // MessageToast.show("You have chosen " + aSelectedContexts.map(function (oContext) { return oContext.getObject().primerNombre; }).join(", "));
            
            var oModel = this.getView().getModel('empleado');
            oModel.setProperty("/ID", aSelectedContexts.map(function (oContext) { return oContext.getObject().ID; }));
            oModel.setProperty("/primerNombre", aSelectedContexts.map(function (oContext) { return oContext.getObject().primerNombre; }));
            oModel.setProperty("/apellidoPaterno", aSelectedContexts.map(function (oContext) { return oContext.getObject().apellidoPaterno; }));
            oModel.setProperty("/apellidoMaterno", aSelectedContexts.map(function (oContext) { return oContext.getObject().apellidoMaterno; }));

            var max = 1;

            var maxPorcentajeCheck = function () {
                this.base.editFlow
                    .invokeAction("PensionesService.maxPorcentajeCheck", {
                        contexts: this.aSelectedContexts,
                        skipParameterDialog: true
                    }

                    )
                    .then(function (results) {
                        // max = results.value;
                        // console.log(results.value);
                        that.base.getExtensionAPI().refresh();
                    });
            }.bind(this);
            maxPorcentajeCheck();
            // MessageToast.show(max);

            oModel.setProperty("/maxAportacion", max);

			if (!this.pDialog) {
                this.pDialog = Fragment.load({
                    id: "idupdatePorcentaje",
                    name: "mis.pensiones.ext.fragment.UpdatePorcentaje",
                    controller: this,
                })
            }
            this.pDialog.then(function (oDialog) {
                // var oModel = that.getView().getModel("StatusUpdate");
                // oDialog.setModel(oModel);
                oDialog.open();
            });
		},

        // Carga Manual Implementation
        // Calls Upload File Fragment
        onCargaManual: function (oContext) {
            var that = this;

            if (!this.pDialog) {
                this.pDialog = Fragment.load({
                    id: "idUploadFile",
                    name: "mis.pensiones.ext.fragment.UploadFile",
                    controller: this
                })
            }
            this.pDialog.then(function (oDialog) {
                oDialog.open();
            })
        },

        // Carga Manual Helper Functions 
        onBeforeOpen: function (oEvent) {
            this.oUploadDialog = oEvent.getSource();
            this.base.getExtensionAPI().addDependent(this.oUploadDialog);
        },
        onAfterClose: function (oEvent) {
            this.base.getExtensionAPI().removeDependent(this.oUploadDialog);
            this.oUploadDialog.destroy();
            this.oUploadDialog = null;
            this.pDialog = undefined;
        },
        setDialogBusy: function (bBusy) {
            this.oUploadDialog && this.oUploadDialog.setBusy(bBusy);
            this.oPorcentajeDialog && this.oPorcentajeDialog.setBusy(bBusy);
            // this.oStatusDialogLiq && this.oStatusDialogLiq.setBusy(bBusy);
        },
        byId: function (sFragmentId, sId) {
            return Fragment.byId(sFragmentId, sId);
        },
		onCancel: function (oEvent) {
            this.closeDialog();
        },
        onCancelPorcentaje: function (oEvent) {
            this.closeDialog();
        },
		closeDialog: function () {
            this.oUploadDialog && this.oUploadDialog.close()
            this.oPorcentajeDialog && this.oPorcentajeDialog.close()
            // this.oStatusDialogLiq && this.oStatusDialogLiq.close()
        },
        validateInput: function (oInput) {
            var oBinding = oInput.getBinding("aportacion")
        },
        setOkButtonEnabled: function (bOk) {
            this.oUploadDialog && this.oUploadDialog.getBeginButton().setEnabled(bOk);
            this.oPorcentajeDialog && this.oPorcentajeDialog.getBeginButton().setEnabled(bOk);
        },
        onOk: function (oEvent) {
            this.setDialogBusy(true)

            var oFileUploader = this.byId("idUploadFile", "uploader");
            var headPar = new sap.ui.unified.FileUploaderParameter();
            headPar.setName('slug');
            headPar.setValue('Empleado');
            oFileUploader.removeHeaderParameter('slug');
            oFileUploader.addHeaderParameter(headPar);
            let sUploadUri; 
            if(window.location.href.search("port4004")> 0 ) //l
            sUploadUri = this.base.getExtensionAPI()._controller._oAppComponent
                .getManifestObject().resolveUri("/pensiones/cargaDeExcel/excel");
            else{
                sUploadUri = "pensiones/cargaDeExcel/excel";
            }
            oFileUploader.setUploadUrl(sUploadUri);
            oFileUploader
                .checkFileReadable()
                .then(function () {
                    oFileUploader.upload();
                })
                .catch(function (error) {
                    const sText = this._resourceBundle.getText("fileNotReadable");
                    this.showError(sText);
                    this.setDialogBusy(false);
                })
        },
        showError: function (code, target, sMessage) {
            const sText = this._resourceBundle.getText("uploadFailed");
            MessageBox.error(sText);
        },
        onTypeMismatch: function (oEvent) {
            var sSupportedFileTypes = oEvent
                .getSource()
                .getFileType()
                .map(function (sFileType) {
                    return "*." + sFileType;
                })
                .join(", ");

                let sText = this._resourceBundle.getText("fileTypeNotSupported");
                const sText1 = this._resourceBundle.getText("supportedTypes");
                sText = sText + " *. "  + oEvent.getParameter("fileType") +  ". " + sText1 + sSupportedFileTypes ;
            this.showError( sText);
        },
		onFileAllowed: function (oEvent) {
            this.setOkButtonEnabled(true)
        },
        onFileEmpty: function (oEvent) {
            this.setOkButtonEnabled(false)
        },
		onUploadComplete: function (oEvent) {
            var iStatus = oEvent.getParameter("status");
            var oFileUploader = oEvent.getSource()

            oFileUploader.clear();
            this.setOkButtonEnabled(false)
            this.setDialogBusy(false)

            if (iStatus >= 400) {
                var oRawResponse;
                try {
                    oRawResponse = JSON.parse(oEvent.getParameter("responseRaw"));
                } catch (e) {
                    oRawResponse = oEvent.getParameter("responseRaw");
                }
                if (oRawResponse && oRawResponse.error && oRawResponse.error.message) {
                    this.showError(oRawResponse.error.code, oRawResponse.error.target, oRawResponse && oRawResponse.error && oRawResponse.error.message);
                    this.closeDialog();
                }
                else {
                    this.closeDialog();
                }
            } else {
                let aJSONData = JSON.parse(oEvent.mParameters.responseRaw);
                if(aJSONData.length){
                  this._downloadSpreadsheet(aJSONData,"Registros");
                }
                // const sText = this._resourceBundle.getText("uploadSuccess");
                // MessageBox.success(sText);
                this.closeDialog();
                // this.base.getExtensionAPI().refresh();

            }
        },
        _createColumnConfig: function(aKeys){
          return aKeys.map(function(elem){
            let oConfig = {};
            oConfig.label = elem.toUpperCase();
            oConfig.property = elem
            return oConfig;
          })
        },




        //Cambio Porcentaje Helper Functions
        //Potentially delete?
		onOkPorcentaje: function (oEvent) {
            this.setDialogBusy(true);
            var that = this;
            // let sStatusCB = this.byId("idupdateStatus", "idCBStatus").getSelectedKey();
            let sAportacion = this.byId("idupdatePorcentaje", "idAportacion").getValue();

            var cambioPorcentaje = function () {
                this.base.editFlow
                    .invokeAction("PensionesService.cambioPorcentaje", {
                        contexts: this.aSelectedContexts,
                        parameterValues: [{ name: "aportacionFutura", value: sAportacion }],
                        // { name: "motivo_de_rechazo", value: sReasonCB }],
                        skipParameterDialog: true
                    }

                    )
                    .then(function (results) {
                        that.setDialogBusy(false);
                        that.closeDialog();
                        that.base.getExtensionAPI().refresh();
                    });
            }.bind(this);
            cambioPorcentaje();

        },
        onBeforeOpenPorcentaje: function (oEvent) {
            this.oPorcentajeDialog = oEvent.getSource();
            this.base.getExtensionAPI().addDependent(this.oPorcentajeDialog);
        },
		onAfterClosePorcentaje: function (oEvent) {
            this.base.getExtensionAPI().removeDependent(this.oPorcentajeDialog);
            this.oPorcentajeDialog.destroy();
            this.oPorcentajeDialog = null;
            this.pDialog = undefined;
        },
        onPorcentajeChange: function (oEvent) {
            
            // var oInput = oEvent.getSource();
            // this.validateInput(oInput);
                     
            this.setOkButtonEnabled(true);
        }
		
	});
});

