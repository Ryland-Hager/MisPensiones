//@ui5-bundle pensiones/conf/pe/carta/rec/kee/fil/Component-preload.js
jQuery.sap.registerPreloadedModules({
"version":"2.0",
"modules":{
	"pensiones/conf/pe/carta/rec/kee/fil/Component.js":function(){sap.ui.define(["sap/fe/core/AppComponent"],function(e){"use strict";return e.extend("pensiones.conf.pe.carta.rec.kee.fil.Component",{metadata:{manifest:"json"}})});
},
	"pensiones/conf/pe/carta/rec/kee/fil/i18n/i18n.properties":'# This is the resource bundle for pensiones.conf.pe.carta.rec.kee.fil\n\n#Texts for manifest.json\n\n#XTIT: Application name\nappTitle=Configuracion Carta Recor Keeping Filiales\n\n#YDES: Application description\nappDescription=A Fiori application.',
	"pensiones/conf/pe/carta/rec/kee/fil/manifest.json":'{"_version":"1.49.0","sap.app":{"id":"pensiones.conf.pe.carta.rec.kee.fil","type":"application","i18n":"i18n/i18n.properties","applicationVersion":{"version":"0.0.1"},"title":"{{appTitle}}","description":"{{appDescription}}","resources":"resources.json","sourceTemplate":{"id":"@sap/generator-fiori:lrop","version":"1.10.5","toolsId":"dffbd80d-cdad-4795-966f-504fbb0e8978"},"dataSources":{"mainService":{"uri":"odata/v4/pensiones/","type":"OData","settings":{"annotations":[],"localUri":"localService/metadata.xml","odataVersion":"4.0"}}}},"sap.ui":{"technology":"UI5","icons":{"icon":"","favIcon":"","phone":"","phone@2":"","tablet":"","tablet@2":""},"deviceTypes":{"desktop":true,"tablet":true,"phone":true}},"sap.ui5":{"flexEnabled":true,"dependencies":{"minUI5Version":"1.117.0","libs":{"sap.m":{},"sap.ui.core":{},"sap.ushell":{},"sap.fe.templates":{}}},"contentDensities":{"compact":true,"cozy":true},"models":{"i18n":{"type":"sap.ui.model.resource.ResourceModel","settings":{"bundleName":"pensiones.conf.pe.carta.rec.kee.fil.i18n.i18n"}},"":{"dataSource":"mainService","preload":true,"settings":{"synchronizationMode":"None","operationMode":"Server","autoExpandSelect":true,"earlyRequests":true}},"@i18n":{"type":"sap.ui.model.resource.ResourceModel","uri":"i18n/i18n.properties"}},"resources":{"css":[]},"routing":{"config":{},"routes":[{"pattern":":?query:","name":"CartaRecKeeFilList","target":"CartaRecKeeFilList"},{"pattern":"CartaRecKeeFil({key}):?query:","name":"CartaRecKeeFilObjectPage","target":"CartaRecKeeFilObjectPage"}],"targets":{"CartaRecKeeFilList":{"type":"Component","id":"CartaRecKeeFilList","name":"sap.fe.templates.ListReport","options":{"settings":{"entitySet":"CartaRecKeeFil","variantManagement":"Page","navigation":{"CartaRecKeeFil":{"detail":{"route":"CartaRecKeeFilObjectPage"}}},"initialLoad":"Enabled"}}},"CartaRecKeeFilObjectPage":{"type":"Component","id":"CartaRecKeeFilObjectPage","name":"sap.fe.templates.ObjectPage","options":{"settings":{"editableHeaderContent":false,"entitySet":"CartaRecKeeFil"}}}}}},"sap.fiori":{"registrationIds":[],"archeType":"transactional"},"sap.cloud":{"public":true,"service":"MisPensiones"}}'
}});
