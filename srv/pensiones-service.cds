using DATA.PE as DATA from '../db/schema';

// @path: 'pension'
@requires: 'authenticated-user'
service PensionesService {
    entity Empleados as select from DATA.EMPLEADOS {
        *,
        null as aportacionMaxima: Integer,
        null as aportacionActualEmpleado: Decimal(15, 2),
        null as aportacionProyeccionEmpleado: Decimal(15, 2), 
        null as aportacionActualEmpresa: Decimal(15, 2), 
        null as aportacionProyeccionEmpresa: Decimal(15, 2)     
        } actions { 
        action cambioPorcentaje(aportacionFutura: String(15));
        action maxPorcentajeCheck() returns String(15);
        action updateComment(comentarios: String(200));
    };
    annotate Empleados with @odata.draft.enabled;



    // entity Empleados as projection on DATA.EMPLEADOS actions {
    //     action cambioPorcentaje(aportacionFutura: String(15));
    //     action maxPorcentajeCheck() returns String(15);
    //     action updateComment(comentarios: String(200));
    // };

    @cds.persistence.skip
    @odata.singleton
    entity cargaDeExcel {
        @Core.MediaType: 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet'
        excel: LargeBinary; 
    }

    entity EstadoCuenta as projection on DATA.ESTADO_CUENTA;
    entity Aportacion as projection on DATA.APORTACION;
    entity AportacionEmpresa as projection on DATA.APORTACION_EMPRESA;
    entity CoberturaMedica as projection on DATA.COBERTURA_MEDICA;
    entity AsignPlanPensiones as projection on DATA.ASIGN_PLAN_PENSIONES;
    entity CompPlanPensiones as projection on DATA.COMP_PLAN_PENSIONES;
    entity CatPensiones as projection on DATA.CAT_PENSIONES;
    entity TasaRendimiento as projection on DATA.TASA_RENDIMIENTO;
    entity AntiPorcAport as projection on DATA.ANTI_PORC_APORT;
    entity AporPlanPrevPatri as projection on DATA.APOR_PLAN_PREV_PATRI;
    entity CatDerAdquiridos as projection on DATA.CAT_DER_ADQUIRIDOS;
    entity CatBenRet as projection on DATA.CAT_BEN_RET;
    entity MotivosBajas as projection on DATA.MOTIVOS_BAJAS;
    entity CartaFid as projection on DATA.CARTA_FID;
    entity CartaFidAux1 as projection on DATA.CARTA_FID_AUX1;
    entity CartaFidAux2 as projection on DATA.CARTA_FID_AUX2;
    entity CartaFidAux3 as projection on DATA.CARTA_FID_AUX3;
    entity CartaRecKee as projection on DATA.CARTA_REC_KEE;
    entity CartaRecKeeAux1 as projection on DATA.CARTA_REC_KEE_AUX1;
    entity CartaRecKeeAux2 as projection on DATA.CARTA_REC_KEE_AUX2;
    entity CartaRecKeeAux3 as projection on DATA.CARTA_REC_KEE_AUX3;
    entity CartaRecKeeFil as projection on DATA.CARTA_REC_KEE_FIL;
    entity CartaRecKeeFilAux1 as projection on DATA.CARTA_REC_KEE_FIL_AUX1;
    entity CartaRecKeeFilAux2 as projection on DATA.CARTA_REC_KEE_FIL_AUX2;
    entity CartaRecKeeFilAux3 as projection on DATA.CARTA_REC_KEE_FIL_AUX3;

    entity MapaElementos as projection on DATA.MAPAELEMENTOS;
}