using PensionesService as service from './pensiones-service';

annotate service.Empleados @(Capabilities: {

    Insertable: false,
    Updatable : true,
    Deletable: false
});

annotate service.Aportacion @(Capabilities: {

    Insertable: false,
    Updatable : true,
    Deletable: false
});

annotate service.AportacionEmpresa @(Capabilities: {

    Insertable: false,
    Updatable : true,
    Deletable: false
});

annotate service.CoberturaMedica @(Capabilities: {

    Insertable: false,
    Updatable : true,
    Deletable: false
});

annotate service.AsignPlanPensiones @(Capabilities: {

    Insertable: false,
    Updatable : true,
    Deletable: false
});

annotate service.CompPlanPensiones @(Capabilities: {

    Insertable: false,
    Updatable : true,
    Deletable: false
});

annotate service.CatPensiones @(Capabilities: {

    Insertable: false,
    Updatable : true,
    Deletable: false
});

annotate service.TasaRendimiento @(Capabilities: {

    Insertable: false,
    Updatable : true,
    Deletable: false
});

annotate service.AntiPorcAport @(Capabilities: {

    Insertable: false,
    Updatable : true,
    Deletable: false
});

annotate service.AporPlanPrevPatri @(Capabilities: {

    Insertable: false,
    Updatable : true,
    Deletable: false
});

annotate service.CatDerAdquiridos @(Capabilities: {

    Insertable: false,
    Updatable : true,
    Deletable: false
});

annotate service.CatBenRet @(Capabilities: {

    Insertable: false,
    Updatable : true,
    Deletable: false
});

annotate service.MotivosBajas @(Capabilities: {

    Insertable: false,
    Updatable : true,
    Deletable: false
});

