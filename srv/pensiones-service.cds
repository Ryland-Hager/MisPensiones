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
    annotate Aportacion with @odata.draft.enabled;
    entity AportacionEmpresa as projection on DATA.APORTACION_EMPRESA;
    annotate AportacionEmpresa with @odata.draft.enabled;
    entity CoberturaMedica as projection on DATA.COBERTURA_MEDICA;
    annotate CoberturaMedica with @odata.draft.enabled;
    entity AsignPlanPensiones as projection on DATA.ASIGN_PLAN_PENSIONES;
    annotate AsignPlanPensiones with @odata.draft.enabled;
    entity CompPlanPensiones as projection on DATA.COMP_PLAN_PENSIONES;
    annotate CompPlanPensiones with @odata.draft.enabled;
    entity CatPensiones as projection on DATA.CAT_PENSIONES;
    annotate CatPensiones with @odata.draft.enabled;
    entity TasaRendimiento as projection on DATA.TASA_RENDIMIENTO;
    annotate TasaRendimiento with @odata.draft.enabled;
    entity AntiPorcAport as projection on DATA.ANTI_PORC_APORT;
    annotate AntiPorcAport with @odata.draft.enabled;
    entity AporPlanPrevPatri as projection on DATA.APOR_PLAN_PREV_PATRI;
    annotate AporPlanPrevPatri with @odata.draft.enabled;
    entity CatDerAdquiridos as projection on DATA.CAT_DER_ADQUIRIDOS;
    annotate CatDerAdquiridos with @odata.draft.enabled;
    entity CatBenRet as projection on DATA.CAT_BEN_RET;
    annotate CatBenRet with @odata.draft.enabled;
    entity MotivosBajas as projection on DATA.MOTIVOS_BAJAS;
    annotate MotivosBajas with @odata.draft.enabled;
    entity CartaFid as projection on DATA.CARTA_FID;
    annotate CartaFid with @odata.draft.enabled;
    entity CartaFidAux1 as projection on DATA.CARTA_FID_AUX1;
    annotate CartaFidAux1 with @odata.draft.enabled;
    entity CartaFidAux2 as projection on DATA.CARTA_FID_AUX2;
    annotate CartaFidAux2 with @odata.draft.enabled;
    entity CartaFidAux3 as projection on DATA.CARTA_FID_AUX3;
    annotate CartaFidAux3 with @odata.draft.enabled;
    entity CartaRecKee as projection on DATA.CARTA_REC_KEE;
    annotate CartaRecKee with @odata.draft.enabled;
    entity CartaRecKeeAux1 as projection on DATA.CARTA_REC_KEE_AUX1;
    annotate CartaRecKeeAux1 with @odata.draft.enabled;
    entity CartaRecKeeAux2 as projection on DATA.CARTA_REC_KEE_AUX2;
    annotate CartaRecKeeAux2 with @odata.draft.enabled;
    entity CartaRecKeeAux3 as projection on DATA.CARTA_REC_KEE_AUX3;
    annotate CartaRecKeeAux3 with @odata.draft.enabled;
    entity CartaRecKeeFil as projection on DATA.CARTA_REC_KEE_FIL;
    annotate CartaRecKeeFil with @odata.draft.enabled;
    entity CartaRecKeeFilAux1 as projection on DATA.CARTA_REC_KEE_FIL_AUX1;
    annotate CartaRecKeeFilAux1 with @odata.draft.enabled;
    entity CartaRecKeeFilAux2 as projection on DATA.CARTA_REC_KEE_FIL_AUX2;
    annotate CartaRecKeeFilAux2 with @odata.draft.enabled;
    entity CartaRecKeeFilAux3 as projection on DATA.CARTA_REC_KEE_FIL_AUX3;
    annotate CartaRecKeeFilAux3 with @odata.draft.enabled;

    entity MapaElementos as projection on DATA.MAPAELEMENTOS;
}