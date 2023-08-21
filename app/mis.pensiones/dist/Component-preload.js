//@ui5-bundle mis/pensiones/Component-preload.js
jQuery.sap.registerPreloadedModules({
"version":"2.0",
"modules":{
	"mis/pensiones/Component.js":function(){sap.ui.define(["sap/fe/core/AppComponent"],function(e){"use strict";return e.extend("mis.pensiones.Component",{metadata:{manifest:"json"}})});
},
	"mis/pensiones/ext/controller/ListPageExt.controller.js":function(){sap.ui.define(["sap/ui/core/Fragment","sap/ui/core/mvc/ControllerExtension","sap/m/Dialog","sap/m/DialogType","sap/m/Text","sap/m/Button","sap/m/ButtonType","sap/m/Label","sap/m/Input","sap/m/MessageToast","sap/m/MessageBox","sap/ui/model/json/JSONModel","sap/ui/export/library","sap/ui/export/Spreadsheet"],function(e,t,o,a,n,i,s,r,l,c,p,u,d,g){"use strict";var h=d.EdmType;return t.extend("mis.pensiones.ext.controller.ListPageExt",{override:{onInit:function(){this._resourceBundle=this.base.getAppComponent().getModel("i18n").getResourceBundle();var e=new u({ID:"",primerNombre:"",apellidoPaterno:"",apellidoMaterno:"",maxAportacion:""});this.getView().setModel(e,"empleado")}},onCambioPorcentaje:function(t,o){this.getView().getModel("empleado");var a=this;this.aSelectedContexts=o;var n=this.getView().getModel("empleado");n.setProperty("/ID",o.map(function(e){return e.getObject().ID}));n.setProperty("/primerNombre",o.map(function(e){return e.getObject().primerNombre}));n.setProperty("/apellidoPaterno",o.map(function(e){return e.getObject().apellidoPaterno}));n.setProperty("/apellidoMaterno",o.map(function(e){return e.getObject().apellidoMaterno}));var i=1;var s=function(){this.base.editFlow.invokeAction("PensionesService.maxPorcentajeCheck",{contexts:this.aSelectedContexts,skipParameterDialog:true}).then(function(e){a.base.getExtensionAPI().refresh()})}.bind(this);s();n.setProperty("/maxAportacion",i);if(!this.pDialog){this.pDialog=e.load({id:"idupdatePorcentaje",name:"mis.pensiones.ext.fragments.UpdatePorcentaje",controller:this})}this.pDialog.then(function(e){e.open()})},onCargaManual:function(t){var o=this;if(!this.pDialog){this.pDialog=e.load({id:"idUploadFile",name:"mis.pensiones.ext.fragments.UploadFile",controller:this})}this.pDialog.then(function(e){e.open()})},onOkPorcentaje:function(e){this.setDialogBusy(true);var t=this;let o=this.byId("idupdatePorcentaje","idAportacion").getValue();var a=function(){this.base.editFlow.invokeAction("PensionesService.cambioPorcentaje",{contexts:this.aSelectedContexts,parameterValues:[{name:"aportacionFutura",value:o}],skipParameterDialog:true}).then(function(e){t.setDialogBusy(false);t.closeDialog();t.base.getExtensionAPI().refresh()})}.bind(this);a()},onBeforeOpen:function(e){this.oUploadDialog=e.getSource();this.base.getExtensionAPI().addDependent(this.oUploadDialog)},onBeforeOpenPorcentaje:function(e){this.oPorcentajeDialog=e.getSource();this.base.getExtensionAPI().addDependent(this.oPorcentajeDialog)},onAfterClosePorcentaje:function(e){this.base.getExtensionAPI().removeDependent(this.oPorcentajeDialog);this.oPorcentajeDialog.destroy();this.oPorcentajeDialog=null;this.pDialog=undefined},onAfterClose:function(e){this.base.getExtensionAPI().removeDependent(this.oUploadDialog);this.oUploadDialog.destroy();this.oUploadDialog=null;this.pDialog=undefined},setDialogBusy:function(e){this.oUploadDialog&&this.oUploadDialog.setBusy(e);this.oPorcentajeDialog&&this.oPorcentajeDialog.setBusy(e)},byId:function(t,o){return e.byId(t,o)},onCancel:function(e){this.closeDialog()},onCancelPorcentaje:function(e){this.closeDialog()},closeDialog:function(){this.oUploadDialog&&this.oUploadDialog.close();this.oPorcentajeDialog&&this.oPorcentajeDialog.close()},validateInput:function(e){var t=e.getBinding("aportacion")},onPorcentajeChange:function(e){this.setOkButtonEnabled(true)},setOkButtonEnabled:function(e){this.oUploadDialog&&this.oUploadDialog.getBeginButton().setEnabled(e);this.oPorcentajeDialog&&this.oPorcentajeDialog.getBeginButton().setEnabled(e)},onOk:function(e){this.setDialogBusy(true);var t=this.byId("idUploadFile","uploader");var o=new sap.ui.unified.FileUploaderParameter;o.setName("slug");o.setValue("Empleado");t.removeHeaderParameter("slug");t.addHeaderParameter(o);let a;if(window.location.href.search("port4004")>0)a=this.base.getExtensionAPI()._controller._oAppComponent.getManifestObject().resolveUri("/pensiones/cargaDeExcel/excel");else{a="pensiones/cargaDeExcel/excel"}t.setUploadUrl(a);t.checkFileReadable().then(function(){t.upload()}).catch(function(e){const t=this._resourceBundle.getText("fileNotReadable");this.showError(t);this.setDialogBusy(false)})},showError:function(e,t,o){const a=this._resourceBundle.getText("uploadFailed");p.error(a)},onTypeMismatch:function(e){var t=e.getSource().getFileType().map(function(e){return"*."+e}).join(", ");let o=this._resourceBundle.getText("fileTypeNotSupported");const a=this._resourceBundle.getText("supportedTypes");o=o+" *. "+e.getParameter("fileType")+". "+a+t;this.showError(o)},onFileAllowed:function(e){this.setOkButtonEnabled(true)},onFileEmpty:function(e){this.setOkButtonEnabled(false)},onUploadComplete:function(e){var t=e.getParameter("status");var o=e.getSource();o.clear();this.setOkButtonEnabled(false);this.setDialogBusy(false);if(t>=400){var a;try{a=JSON.parse(e.getParameter("responseRaw"))}catch(t){a=e.getParameter("responseRaw")}if(a&&a.error&&a.error.message){this.showError(a.error.code,a.error.target,a&&a.error&&a.error.message);this.closeDialog()}else{this.closeDialog()}}else{let t=JSON.parse(e.mParameters.responseRaw);if(t.length){this._downloadSpreadsheet(t,"Registros")}this.closeDialog()}},_createColumnConfig:function(e){return e.map(function(e){let t={};t.label=e.toUpperCase();t.property=e;return t})}})});
},
	"mis/pensiones/ext/controller/ObjectPageExt.controller.js":function(){sap.ui.define(["sap/ui/core/mvc/ControllerExtension"],function(e){"use strict";return e.extend("mis.pensiones.ext.controller.ObjectPageExt",{override:{onInit:function(){var e=this.base.getExtensionAPI().getModel()}}})});
},
	"mis/pensiones/ext/fragment/Comentarios.fragment.xml":'<core:FragmentDefinition \n\txmlns:core="sap.ui.core" \n\txmlns="sap.m" \n\txmlns:macros="sap.fe.macros"><mvc:View\n\tid="zView"\n\txmlns:core="sap.ui.core"\n\txmlns:mvc="sap.ui.core.mvc" \n\txmlns="sap.m"\n\txmlns:l="sap.ui.layout"><l:VerticalLayout id="verticalLayout" width="100%"><TextArea \n\t\tid="CommentBox" \n\t\tcore:require="{ handler: \'mis/pensiones/ext/fragment/Comentarios\'}" \n\t\tvalue="{comentarios}"\n\t\tvalueLiveUpdate="true"\n\t\tmaxLength="200" \n\t\twidth="100%"\n\t\trows="4"\n\t\tliveChange="handler.onHandleLiveChange"/></l:VerticalLayout></mvc:View></core:FragmentDefinition>',
	"mis/pensiones/ext/fragment/Comentarios.js":function(){sap.ui.define(["sap/m/MessageToast"],function(s){"use strict";return{onPress:function(e){s.show("Custom handler invoked.")}}});
},
	"mis/pensiones/ext/fragment/PorcentajeAportacion.fragment.xml":'<core:FragmentDefinition \n\txmlns:core="sap.ui.core" \n\txmlns="sap.m" \n\txmlns:macros="sap.fe.macros"><mvc:View\n\tid="zView"\n\txmlns:core="sap.ui.core"\n\txmlns:mvc="sap.ui.core.mvc" \n\txmlns="sap.m"\n\txmlns:l="sap.ui.layout"\n\txmlns:f="sap.ui.layout.form"\n\txmlns:u="sap.ui.unified"><l:VerticalLayout id="verticalLayout" width="100%"><VBox  id="poVBox" core:require="{ handler: \'mis/pensiones/ext/fragment/PorcentajeAportacion\'}" class="sapUiSmallMargin"><f:Form id="FormPorcentajeObj"\n\t\t\teditable="false"><f:layout><f:ColumnLayout id="poColumnLayout"\n\t\t\t\t\tcolumnsM="2"\n\t\t\t\t\tcolumnsL="3"\n\t\t\t\t\tcolumnsXL="3"\n\t\t\t\t/></f:layout><f:formContainers><f:FormContainer id="FC1" title=\'{i18n>PorcentajeAportacion}\'><f:formElements><f:FormElement id="FE1" label=\'{i18n>aportacionMaximaObj}\'><f:fields><Text text="{aportacionMaxima}%" id="maxText"  /></f:fields></f:FormElement><f:FormElement id="FE2" label=\'{i18n>quieresAhorrarObj}\'><f:fields><ComboBox id="quieresBox"></ComboBox></f:fields></f:FormElement></f:formElements></f:FormContainer><f:FormContainer id="FC2" title=\'{i18n>AportacionEmpleado}\'><f:formElements><f:FormElement id="FE4" label=\'{i18n>aportacionActualEmpleado}\'><f:fields><Text text="{aportacionActualEmpleado}" id="EmployActText"/></f:fields></f:FormElement><f:FormElement id="FE3" label=\'{i18n>aportacionProyeccionEmpleado}\'><f:fields><Text text="{aportacionProyeccionEmpleado}" id="EmployProyText" /></f:fields></f:FormElement></f:formElements></f:FormContainer><f:FormContainer id="FC3" title=\'{i18n>AportacionEmpresa}\'><f:formElements><f:FormElement id="FE6" label=\'{i18n>aportacionActualEmpresa}\'><f:fields><Text text="{aportacionActualEmpresa}" id="EmprActText"/></f:fields></f:FormElement><f:FormElement id="FE5" label=\'{i18n>aportacionProyeccionEmpresa}\'><f:fields><Text text="{aportacionProyeccionEmpresa}" id="EmprProyText"/></f:fields></f:FormElement></f:formElements></f:FormContainer></f:formContainers></f:Form></VBox></l:VerticalLayout></mvc:View></core:FragmentDefinition>',
	"mis/pensiones/ext/fragment/PorcentajeAportacion.js":function(){sap.ui.define(["sap/ui/core/mvc/Controller","sap/ui/model/json/JSONModel"],function(e,n){"use strict";var o=e.extend("mis/pensiones/ext/fragment/PorcentajeAportacion",{override:{onInit:function(){console.log("Controller Loaded");var e={SelectedPercent:"2",PercentCollection:[{PercentId:"1",Name:"1"},{PercentId:"2",Name:"2"},{PercentId:"3",Name:"3"}]};var o=new n(e);this.getView().setModel(o)}}});return o});
},
	"mis/pensiones/ext/fragment/ProyeccionFondo.fragment.xml":'<core:FragmentDefinition \n\txmlns:core="sap.ui.core" \n\txmlns="sap.m" \n\txmlns:macros="sap.fe.macros"><mvc:View\n\tid="zView"\n\txmlns:core="sap.ui.core"\n\txmlns:mvc="sap.ui.core.mvc" \n\txmlns="sap.m"\n\txmlns:l="sap.ui.layout"\n\txmlns:f="sap.ui.layout.form"\n\txmlns:u="sap.ui.unified"><l:VerticalLayout id="verticalLayout" width="100%"><VBox  id="poVBox" core:require="{ handler: \'mis/pensiones/ext/fragment/ProyeccionFondo\'}" class="sapUiSmallMargin"><f:Form id="FormProyeccionFondo"\n\t\t\teditable="false"><f:layout><f:ColumnLayout id="poColumnLayout"\n\t\t\t\t\tcolumnsM="2"\n\t\t\t\t\tcolumnsL="2"\n\t\t\t\t\tcolumnsXL="2"\n\t\t\t\t/></f:layout><f:formContainers><f:FormContainer id="FC1" title=\'{i18n>ProyeccionFondoObj}\'><f:formElements><f:FormElement id="FE1" label=\'{i18n>fondoInversion}\'><Select\n\t\t\t\t\t\t\t\tid="fondoSelect"\n\t\t\t\t\t\t\t\tforceSelection="false"\n\t\t\t\t\t\t\t\tselectedKey="{fondoAhorro}"\n\t\t\t\t\t\t\t\tautoAdjustWidth="true"\n\t\t\t\t\t\t\t\t><core:Item id="itemId" key="{/fondoId}" text="{/Name}" /></Select></f:FormElement><f:FormElement id="FE2" label=\'{i18n>razonSocial}\'><f:fields><Text text="{razonSocial}" id="razonText"  /></f:fields></f:FormElement><f:FormElement id="FE3" label=\'{i18n>razonSocial}\'><f:fields><Text text="{clavePizarra}" id="claveText"  /></f:fields></f:FormElement><f:FormElement id="FE4" label=\'{i18n>razonSocial}\'><f:fields><Text text="{horizonteInversion}" id="horizonteText"  /></f:fields></f:FormElement></f:formElements></f:FormContainer></f:formContainers></f:Form><Button id="realizarBtn" text="{i18n>realizarBtn}"\n\t\t\tpress="onPress"\n\t\t\ttype="Emphasized"><layoutData><FlexItemData id="btnLayout" growFactor="1"/></layoutData></Button></VBox></l:VerticalLayout></mvc:View></core:FragmentDefinition>',
	"mis/pensiones/ext/fragment/ProyeccionFondo.js":function(){sap.ui.define(["sap/m/MessageToast"],function(s){"use strict";return{onPress:function(e){s.show("Custom handler invoked.")}}});
},
	"mis/pensiones/i18n/i18n.properties":'# This is the resource bundle for mispensiones\n\n#Texts for manifest.json\n\n#XTIT: Application name\nappTitle=Mis Pensiones\n\n#YDES: Application description\nappDescription=Mis Pensiones Application\n\n##Actions on List Report\ncambioPorcentaje=Cambio de %\nUpdatePorcentaje=Cambio de %\nexcel_Upload=Carga de Excel\nplaceHolder=Elija un archivo xlsx...\ncontinue=Continuar\ncancel=Cancelar\nuploadFailed=Error al cargar archivos\nuploadSuccess=El archivo ha subido correctamente\nfileNotReadable=El archivo no se puede leer\nfileTypeNotSupported=Este tipo de archivo no es compatible ->\nsupportedTypes= Elija uno de los siguientes tipos:\nID = ID Empleado\nRFC = RFC\nprimerNombre = Nombres\napellidoPaterno = Apellido Paterno\napellidoMaterno = Apellido Materno\nworkdayID = ID Workday\nsueldoMensual = Sueldo Mensual\ntipoContracto = Tipo de Contrato\ngrupoPago = Grupo de Pago\nfechaAntiguedad = Fecha Antig\\u00fcedad\nfechaIngreso = Fecha de Ingreso a la Compa\\u00f1\\u00eda\nfechaIncorporacion = Fecha de Incorporaci\\u00f3n\nfechaActualizacion = Fecha de Ultima Actualizaci\\u00f3n \nfechaBeneficios = Fecha de Inicio de Beneficios\ncontracto = Tipo de Contrato\ncolaborador = Nombre del Colaborador\npuesto = Puesto\nempresaID = Empresa ID\nempresaText = Empresa Text\nmarcaPlanTOP = Marca de Plan TOP\nmarcaPlanMatch = Marca de plan Match\nmarcaPPR = Marca PPR\nfondoAhorro = Fondo de Ahorro\naportacionFutura = Aportaci\\u00f3n Futura en %\napartacionVigente = Aportaci\\u00f3n Vigente en %\nfondoVive = Fondo Vive\ncoberturaMedica = Cobertura Medica\nmedicoVitalicio = Servicio M\\u00e9dico Vitalicio\nplanBeneficio = Plan de Beneficio Definido\npuntajeAntiguedad = Puntaje Antig\\u00fcedad\npuntajeEdad = Puntaje Edad\npuntosActuales = Puntos Actuales\ncomentarios = Comentarios\nanosMesesDiasAntiguedad = A\\u00f1os, Meses, D\\u00edas de Antig\\u00fcedad\nmontoDerechosAdquiridos = Monto Derechos Adquiridos \nderechosAdquiridos = Derechos Adquiridos \naportacionMaxima = Aportaci\\u00f3n M\\u00e1xima\nquieresAhorrar = Cuanto Quieres Ahorrar\naportacionActualEmpleado = Aportacion Empleado-Actual\naportacionProyeccionEmpleado = Aportacion Empleado-Proyeccion\naportacionActualEmpresa = Aportacion Empresa-Actual\naportacionProyeccionEmpresa = Aportacion Empresa-Proyeccion\nfondoInversion = Fondo de Inversi\\u00f3n\nrazonSocial = Raz\\u00f3n Social\nclavePizarra = Clave de Pizarra\nhorizonteInversion = Horizonte de Inversi\\u00f3n\nDetalleEmpleado=Empleado\nComentarios=Comentarios\nDerechosAdquiridos=Derechos Adquiridos\nEstadoCuenta=Estado De Cuenta\nPorcentajeAportacion=Porcentaje De Aportaci\\u00f3n\nProyeccionFondo=Proyecci\\u00f3n Fondo De Ahorro\nEstadoCuenta = Estado De Cuenta\nEstadoCuentas = Estado De Cuentas\nempresaID = ID Empresa\nempleadoID = ID Empleado\nplanTOP = Plan Top\nporcentajePlanTOP = % Plan Top\nAEMP = AEMP\nrendimientosAEMP = Rendimientos AEMP\nACIA = ACIA\nrendimientosACIA = Rendimientos ACIA\nADP = ADP\nrendimientosADP = Rendimientos ADP\nACM = ACM\nrendimientosACM = Rendimientos ACM\nOBA = OBA\nrendimientosOBA = Rendimientos OBA\nASP = ASP\nrendimientosASP = Rendimientos ASP\nAEXT = AEXT\nrendimientosAEXT = Rendimientos AEXT\nASPCM = ASPCM\nrendimientosASPCM = Rendimientos ASPCM\nderechosEquivalen = Tus derechos adquiridos equivalen a\nAportacionEmpleado = Aportaci\\u00f3n Empleado\nAportacionEmpresa = Aportaci\\u00f3n Empresa\naportacionMaximaObj = Aportaci\\u00f3n m\\u00e1xima a caja de ahorro\nquieresAhorrarObj = Cuanto quieres ahorrar?\nProyeccionFondoObj = Seleccionar Fondo de Inversi\\u00f3n\nrealizarBtn = Realizar Proyecci\\u00f3n\nfondoA = Fondo A\nfondoB = Fondo B\nfondoC = Fondo C',
	"mis/pensiones/manifest.json":'{"_version":"1.49.0","sap.app":{"id":"mis.pensiones","type":"application","i18n":"i18n/i18n.properties","applicationVersion":{"version":"0.0.1"},"title":"{{appTitle}}","description":"{{appDescription}}","resources":"resources.json","sourceTemplate":{"id":"@sap/generator-fiori:lrop","version":"1.10.4","toolsId":"6daf5cbe-a01e-4aff-810f-efd27ea7d20c"},"dataSources":{"mainService":{"uri":"odata/v4/pensiones/","type":"OData","settings":{"annotations":[],"localUri":"localService/metadata.xml","odataVersion":"4.0"}}}},"sap.ui":{"technology":"UI5","icons":{"icon":"","favIcon":"","phone":"","phone@2":"","tablet":"","tablet@2":""},"deviceTypes":{"desktop":true,"tablet":true,"phone":true}},"sap.ui5":{"flexEnabled":true,"dependencies":{"minUI5Version":"1.116.0","libs":{"sap.m":{},"sap.ui.core":{},"sap.ushell":{},"sap.fe.templates":{}}},"contentDensities":{"compact":true,"cozy":true},"models":{"i18n":{"type":"sap.ui.model.resource.ResourceModel","settings":{"bundleName":"mis.pensiones.i18n.i18n"}},"":{"dataSource":"mainService","preload":true,"settings":{"synchronizationMode":"None","operationMode":"Server","autoExpandSelect":true,"earlyRequests":true}},"@i18n":{"type":"sap.ui.model.resource.ResourceModel","uri":"i18n/i18n.properties"}},"resources":{"css":[]},"routing":{"routes":[{"pattern":":?query:","name":"EmpleadosList","target":"EmpleadosList"},{"pattern":"Empleados({key}):?query:","name":"EmpleadosObjectPage","target":"EmpleadosObjectPage"}],"targets":{"EmpleadosList":{"type":"Component","id":"EmpleadosList","name":"sap.fe.templates.ListReport","options":{"settings":{"entitySet":"Empleados","variantManagement":"Page","navigation":{"Empleados":{"detail":{"route":"EmpleadosObjectPage"}}},"initialLoad":"Enabled","controlConfiguration":{"@com.sap.vocabularies.UI.v1.LineItem":{"tableSettings":{"enableExport":true,"personalization":{"column":true,"filter":true},"quickVariantSelection":{"showCounts":true},"selectAll":false,"selectionLimit":0,"type":"ResponsiveTable"},"actions":{"cambioPorcentaje":{"press":".extension.mis.pensiones.ext.controller.ListPageExt.onCambioPorcentaje","visible":true,"enabled":true,"requiresSelection":false,"text":"{i18n>cambioPorcentaje}"},"generarCartas":{"text":"Generación de las Cartas"},"reporteEsquemaContratacion":{"text":"Reporte Esquema de Contratación"},"reporteAportacions":{"text":"Reporte Aportaciones"},"reporteAuditoriaIncorporaciones":{"text":"Reporte Auditoria Incorporaciones"},"reporteEmpleadosActivos":{"text":"Reporte de Empleados Activos en Pensiones"},"reporteFiniquitos":{"text":"Reporte de Finiquitos"},"validarCumplimiento":{"text":"Validar Cumplimiento de Reglas"},"cargaManual":{"press":".extension.mis.pensiones.ext.controller.ListPageExt.onCargaManual","visible":true,"enabled":true,"text":"Carga Manual"}},"columns":{"DataField::ID":{"width":"20%"},"DataField::primerNombre":{"width":"20%"},"DataField::apellidoPaterno":{"width":"20%"},"DataField::apellidoMaterno":{"width":"20%"},"DataField::workdayID":{"width":"20%"}}}}}}},"EmpleadosObjectPage":{"type":"Component","id":"EmpleadosObjectPage","name":"sap.fe.templates.ObjectPage","options":{"settings":{"editableHeaderContent":false,"entitySet":"Empleados","content":{"body":{"sections":{"Comentarios":{"template":"mis.pensiones.ext.fragment.Comentarios","position":{"placement":"After","anchor":"DetalleEmpleado"},"title":"Comentarios","type":"XMLFragment"},"PorcentajeAportacion":{"template":"mis.pensiones.ext.fragment.PorcentajeAportacion","position":{"placement":"After","anchor":"EstadoCuenta"},"title":"{i18n>PorcentajeAportacion} ","type":"XMLFragment"},"ProyeccionFondo":{"template":"mis.pensiones.ext.fragment.ProyeccionFondo","position":{"placement":"After","anchor":"PorcentajeAportacion"},"title":"{18n>ProyeccionFondo}","type":"XMLFragment"}}}}}}}}},"extends":{"extensions":{"sap.ui.controllerExtensions":{"sap.fe.templates.ListReport.ListReportController":{"controllerName":"mis.pensiones.ext.controller.ListPageExt"},"sap.fe.templates.ObjectPage.ObjectPageController":{"controllerName":"mis.pensiones.ext.controller.ObjectPageExt"}}}}},"sap.fiori":{"registrationIds":[],"archeType":"transactional"},"sap.cloud":{"public":true,"service":"MisPensiones"}}'
}});
