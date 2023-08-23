using PensionesService as service from './pensiones-service';

annotate service.Empleados @(Capabilities: {

    Insertable: false,
    Updatable : true,
    Deletable: false
});

annotate service.Aportacion @(Capabilities: {

    Insertable: true,
    Updatable : true,
    Deletable: true
});

annotate service.AportacionEmpresa @(Capabilities: {

    Insertable: true,
    Updatable : true,
    Deletable: true
});

annotate service.CoberturaMedica @(Capabilities: {

    Insertable: true,
    Updatable : true,
    Deletable: true
});

annotate service.AsignPlanPensiones @(Capabilities: {

    Insertable: true,
    Updatable : true,
    Deletable: true
});

annotate service.CompPlanPensiones @(Capabilities: {

    Insertable: true,
    Updatable : true,
    Deletable: true
});

annotate service.CatPensiones @(Capabilities: {

    Insertable: true,
    Updatable : true,
    Deletable: true
});

annotate service.TasaRendimiento @(Capabilities: {

    Insertable: true,
    Updatable : true,
    Deletable: true
});

annotate service.AntiPorcAport @(Capabilities: {

    Insertable: true,
    Updatable : true,
    Deletable: true
});

annotate service.AporPlanPrevPatri @(Capabilities: {

    Insertable: true,
    Updatable : true,
    Deletable: true
});

annotate service.CatDerAdquiridos @(Capabilities: {

    Insertable: true,
    Updatable : true,
    Deletable: true
});

annotate service.CatBenRet @(Capabilities: {

    Insertable: true,
    Updatable : true,
    Deletable: true
});

annotate service.MotivosBajas @(Capabilities: {

    Insertable: true,
    Updatable : true,
    Deletable: true
});

annotate service.CartaFid @(Capabilities: {

    Insertable: true,
    Updatable : true,
    Deletable: true
});
annotate service.CartaFidAux1 @(Capabilities: {

    Insertable: true,
    Updatable : true,
    Deletable: true
});
annotate service.CartaFidAux2 @(Capabilities: {

    Insertable: true,
    Updatable : true,
    Deletable: true
});
annotate service.CartaFidAux3 @(Capabilities: {

    Insertable: true,
    Updatable : true,
    Deletable: true
});
annotate service.CartaRecKee @(Capabilities: {

    Insertable: true,
    Updatable : true,
    Deletable: true
});
annotate service.CartaRecKeeAux1 @(Capabilities: {

    Insertable: true,
    Updatable : true,
    Deletable: true
});
annotate service.CartaRecKeeAux2 @(Capabilities: {

    Insertable: true,
    Updatable : true,
    Deletable: true
});
annotate service.CartaRecKeeAux3 @(Capabilities: {

    Insertable: true,
    Updatable : true,
    Deletable: true
});
annotate service.CartaRecKeeFil @(Capabilities: {

    Insertable: true,
    Updatable : true,
    Deletable: true
});
annotate service.CartaRecKeeFilAux1 @(Capabilities: {

    Insertable: true,
    Updatable : true,
    Deletable: true
});
annotate service.CartaRecKeeFilAux2 @(Capabilities: {

    Insertable: true,
    Updatable : true,
    Deletable: true
});
annotate service.CartaRecKeeFilAux3 @(Capabilities: {

    Insertable: true,
    Updatable : true,
    Deletable: true
});

