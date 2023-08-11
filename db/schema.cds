using {managed} from '@sap/cds/common';

namespace DATA.PE;

//@cds.persistence.exists
entity EMPLEADOS {
    key ID                          : String(8)        @Common.Label: '{i18n>ID}';
    key RFC                         : String(50)       @Common.Label:'{i18n>RFC}';
    primerNombre                    : String(15)       @Common.Label:'{i18n>primerNombre}';
    apellidoPaterno                 : String(15)       @Common.Label:'{i18n>apellidoPaterno}';
    apellidoMaterno                 : String(15)       @Common.Label:'{i18n>apellidoMaterno}';
    workdayID                       : String(9)        @Common.Label:'{i18n>workdayID}';
    sueldoMensual                   : Decimal(15,2)    @Common.Label:'{i18n>sueldoMensual}';
    tipoContracto                   : String(15)       @Common.Label:'{i18n>tipoContracto}';
    grupoPago                       : String(15)       @Common.Label:'{i18n>grupoPago}';
    fechaAntiguedad                 : Date             @Common.Label:'{i18n>fechaAntiguedad}';
    fechaIngreso                    : Date             @Common.Label:'{i18n>fechaIngreso}';
    fechaIncorporacion              : Date             @Common.Label:'{i18n>fechaIncorporacion}';
    fechaActualizacion              : Date             @Common.Label:'{i18n>fechaActualizacion}';
    fechaBeneficios                 : Date             @Common.Label:'{i18n>fechaBeneficios}';
    contracto                       : String(15)       @Common.Label:'{i18n>contracto}';
    colaborador                     : String(50)       @Common.Label:'{i18n>colaborador}';
    puesto                          : String(50)       @Common.Label:'{i18n>puesto}';
    empresaID                       : String(15)       @Common.Label:'{i18n>empresaID}';
    empresaText                     : String(50)       @Common.Label:'{i18n>empresaText}';
    marcaPlanTOP                    : Boolean          @Common.Label:'{i18n>marcaPlanTOP}';
    marcaPlanMatch                  : Boolean          @Common.Label:'{i18n>marcaPlanMatch}';
    marcaPPR                        : Boolean          @Common.Label:'{i18n>marcaPPR}';
    fondoAhorro                     : String(50)       @Common.Label:'{i18n>fondoAhorro}';
    aportacionFutura                : String(15)       @Common.Label:'{i18n>aportacionFutura}';
    aportacionVigente               : String(15)       @Common.Label:'{i18n>apartacionVigente}';
    fondoVive                       : String(15)       @Common.Label:'{i18n>fondoVive}';
    coberturaMedica                 : String(15)       @Common.Label:'{i18n>coberturaMedica}';
    medicoVitalicio                 : String(15)       @Common.Label:'{i18n>medicoVitalicio}';
    planBeneficio                   : String(15)       @Common.Label:'{i18n>planBeneficio}';
    puntajeAntiguedad               : String(15)       @Common.Label:'{i18n>puntajeAntiguedad}';
    puntajeEdad                     : String(15)       @Common.Label:'{i18n>puntajeEdad}';
    puntosActuales                  : String(15)       @Common.Label:'{i18n>puntosActuales}';
    comentarios                     : String(200)      @Common.Label:'{i18n>comentarios}';
    anosMesesDiasAntiguedad         : String(15)       @Common.Label:'{i18n>anosMesesDiasAntiguedad}';
    montoDerechosAdquiridos         : Decimal(15,2)    @Common.Label:'{i18n>montoDerechosAdquiridos}';
    derechosAdquiridos              : Decimal(3,2)     @Common.Label:'{i18n>derechosAdquiridos}';
    // aportacionMaxima                : Integer          @Common.Label:'{i18n>aportacionMaxima}';
    quieresAhorrar                  : Integer          @Common.Label:'{i18n>quieresAhorrar}';
    // aportacionActualEmpleado        : Decimal(15,2)    @Common.Label:'{i18n>aportacionActualEmpleado}';
    // aportacionProyeccionEmpleado    : Decimal(15, 2)   @Common.Label:'{i18n>aportacionProyeccionEmpleado}';
    // aportacionActualEmpresa         : Decimal(15,2)    @Common.Label:'{i18n>aportacionActualEmpresa}';
    // aportacionProyeccionEmpresa     : Decimal(15, 2)   @Common.Label:'{i18n>aportacionProyeccionEmpresa}';
    fondoInversion                  : String(15)       @Common.Label:'{i18n>fondoInversion}';
    razonSocial                     : String(50)       @Common.Label:'{i18n>razonSocial}';
    clavePizarra                    : String(15)       @Common.Label:'{i18n>clavePizarra}';
    horizonteInversion              : String(15)       @Common.Label:'{i18n>horizonteInversion}';
    cuentas                         : Association to many ESTADO_CUENTA on cuentas.empleadoID = $self.ID;
}

entity ESTADO_CUENTA {
    key cuentaID : String(8);
    key cuentaRFC : String(18);
    empresaID : String(15);
    planTOP : Boolean;
    porcentajePlanTOP : Decimal(15, 2);
    AEMP : Decimal(15, 2);
    rendimientosAEMP : Decimal(15, 2);
    ACIA : Decimal(15, 2);
    rendimientosACIA : Decimal(15, 2);
    ADP : Decimal(15, 2);
    rendimientosADP : Decimal(15, 2);
    ACM : Decimal(15, 2);
    rendimientosACM :Decimal(15, 2);
    OBA : Decimal(15, 2);
    rendimientosOBA : Decimal(15, 2);
    ASP : Decimal(15, 2);
    rendimientosASP : Decimal(15, 2);
    AEXT : Decimal(15, 2);
    rendimientosAEXT : Decimal(15, 2);
    ASPCM : Decimal(15, 2);
    rendimientosASPCM : Decimal(15, 2);
    empleadoID : String(8);
    owner : Association to EMPLEADOS on owner.ID = empleadoID;
}

entity APORTACION : managed {
    key antiguedadInicial : Decimal(10, 2);
    key antiguedadFinal : Decimal(10, 2);
    porcentajeMax : Integer;
}

entity APORTACION_EMPRESA : managed {
    key anosServicio : Decimal(10, 2);
    adquisicionDerechos : Decimal(3, 2);
}

entity COBERTURA_MEDICA : managed  {
    key antiguedad : Decimal(10, 2);
    aportacionPesos : Decimal(15, 2);
}

entity ASIGN_PLAN_PENSIONES : managed {
    key modulo : Decimal(15, 2);
    key procesoID : Decimal(15, 2);
    descripcion : Date;
    orden : String(15);
    secciones : String(15);
    tipoElemento : String(15);
    elemento : String(15);
    setID : String(15);
    cuenta : String(15);
    descripcion2 : String(15);
    valorLargo : String(15);
    parametro1 : String(15);
    parametro2 : String(15);
    parametro3 : String(15);
    parametro4 : String(15);
    parametro5 : String(15);
    parametro6 : String(15);
    parametro7 : String(15);
    parametro8 : String(15);
    parametro9 : String(15);
    parametro10 : String(15);
}

entity COMP_PLAN_PENSIONES : managed {
    key orden : String(15);
    key seccion : String(15);
    parametro1 : String(15);
}

entity CAT_PENSIONES : managed {
    key fechaEfectiva : Date;
    key estado : String(15);
    descripcion : String(30);
    descripcionCorta : String(15);
    horizonteInversion : String(15);
    clavePizarra : String(15);
    razonSocial : String(15);
    rentaFija : Decimal(15, 2);
    rentaVariable : Decimal(15, 2);
}

entity TASA_RENDIMIENTO : managed {
    key ejercicio : Integer;
    key mes : Integer;
    rendimiento : Decimal(15, 2);
}

entity ANTI_PORC_APORT : managed {
    key fechaEfectiva : Date;
    key antiguedad : Decimal(15, 2);
    aportacionMaximaEmpleado : Decimal(15, 2);
    aportacionVariableEmpresa : Decimal(15, 2);
    aportacionFijaEmpresa : Decimal(15, 2);
}

entity APOR_PLAN_PREV_PATRI : managed {
    key fechaEfectiva : Date;
    key setID : String(15);
    codigoNivel : Integer;
    descripcion : String(15);
    antiguedad : Decimal(10, 2);
    porcentajeAportacion : Decimal(3, 2);
}

entity CAT_DER_ADQUIRIDOS : managed {
    key fechaEfectiva : Date;
    key antiguedad : Decimal(10, 2);
    bajaVoluntaria : Decimal(3, 2);
    bajaInvoluntaria : Decimal(3, 2);
    porcentajePlanPensiones : Decimal(3, 2);
    porcentajePlanTOP : Decimal(3, 2);
}

entity CAT_BEN_RET : managed {
    key fechaEfectiva : Date;
    key estado : String(15);
    descripcion : String(15);
    beneficiosRetiro : String(15);
    premisas : String(50);
}

entity MOTIVOS_BAJAS : managed {
    key motivoGlobal : String(15);
    key locales : String(15);
    porcentaje : Decimal(3, 2);
}

entity CARTA_FID : managed {
    key noCompania : String(10);
    compania : String(15);
    logo : String(200);
    fecha : String(200);
    destinatario : String(200);
    referencia : String(100);
    parrafo1 : String(800);
    parrafo2 : String(800); 
    parrafo3 : String(800); 
    parrafo4 : String(800); 
    parrafo5 : String(800); 
    firma : String(200);
    lineaFirma : String(100);
    remitente : String(200);
    puesto : String(100);
}

entity CARTA_FID_AUX1 {
    key noCompania : String(10);
    compania : String(15);
    key nombre : String (100);
    cargo : String (100);
}

entity CARTA_FID_AUX2 {
    key noCompania : String(10);
    key compania : String(15);
    key nombre : String (100);
}

entity CARTA_FID_AUX3 : managed {
    key fondo : String(10);
    contracto : Integer;
    fideicomiso : String(20);
    chequeraPropia : String(20);
}

entity CARTA_REC_KEE : managed {
    key noCompania : String(10);
    key compania : String(15);
    logo : String(200);
    fecha : String(200);
    destinatario : String(200);
    parrafo1 : String(800);
    parrafo2 : String(800); 
    parrafo3 : String(800); 
    parrafo4 : String(800); 
    parrafo5 : String(800); 
    parrafo6 : String(800);
    firma : String(200);
    lineaFirma : String(100);
    remitente : String(200);
    puesto : String(100);
}

entity CARTA_REC_KEE_AUX1 {
    key noCompania : String(10);
    key compania : String(15);
    key nombre : String (100);
    cargo : String (100);
}

entity CARTA_REC_KEE_AUX2 {
    key fondo : String(10);
    contracto : Integer;
    fideicomiso : String(20);
    chequeraPropia : String(20);
}

entity CARTA_REC_KEE_AUX3 : managed {
    key fondo : String(10);
    contracto : Integer;
    fideicomiso : String(20);
    chequeraPropia : String(20);
}

entity CARTA_REC_KEE_FIL : managed {
    key noCompania : String(10);
    compania : String(15);
    logo : String(200);
    fecha : String(200);
    destinatario : String(200);
    parrafo1 : String(800);
    parrafo2 : String(800); 
    parrafo3 : String(800); 
    parrafo4 : String(800); 
    parrafo5 : String(800); 
    parrafo6 : String(800);
    firma : String(200);
    lineaFirma : String(100);
    remitente : String(200);
    puesto : String(100);
}

entity CARTA_REC_KEE_FIL_AUX1 {
    key noCompania : String(10);
    compania : String(15);
    key nombre : String (100);
    cargo : String (100);
}

entity CARTA_REC_KEE_FIL_AUX2 {
    key noCompania : String(10);
    key compania : String(15);
    key nombre : String (100);
}

entity CARTA_REC_KEE_FIL_AUX3 : managed {
    key noCompania : String(10);
    compania : Integer;
    aportacion : String(20);
    fondo : String(20);
    contrato : Integer;
    chequeraPropia : String(20);
}