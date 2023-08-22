using {User, managed} from '@sap/cds/common';

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
    allowedPercentages              : Association to many ALLOWEDPERCENTAGES on allowedPercentages.empleadoID = $self.ID;
    // virtual aportacionMaxima        : Integer           @readonly;
    // virtual aportacionActualEmpleado        : Decimal(15,2)     @readonly;
    // virtual aportacionProyeccionEmpleado    : Decimal(15, 2)    @readonly;
    // virtual aportacionActualEmpresa         : Decimal(15,2)     @readonly;
    // virtual aportacionProyeccionEmpresa     : Decimal(15, 2)    @readonly;
}

entity ESTADO_CUENTA {
    key cuentaID : String(8);
    key cuentaRFC : String(18);
    empresaID : String(15);
    planTOP : Decimal(15,2);
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
    key antiguedadInicial : Decimal(10, 2) @Common.Label:'{i18n>antiguedadInicial}';
    key antiguedadFinal : Decimal(10, 2)   @Common.Label:'{i18n>antiguedadFinal}';
    porcentajeMax : Integer                @Common.Label:'{i18n>porcentajeMax}';
}

entity APORTACION_EMPRESA : managed {
    key anosServicio : Decimal(10, 2)      @Common.Label:'{i18n>anosServicio}';
    adquisicionDerechos : Decimal(3, 2)    @Common.Label:'{i18n>adquisicionDerechos}';
}

entity COBERTURA_MEDICA : managed  {
    key antiguedad : Decimal(10, 2)        @Common.Label:'{i18n>antiguedad}';
    aportacionPesos : Decimal(15, 2)       @Common.Label:'{i18n>aportacionPesos}';
}

entity ASIGN_PLAN_PENSIONES : managed {
    key modulo : Decimal(15, 2)            @Common.Label:'{i18n>modulo}';
    key procesoID : Decimal(15, 2)         @Common.Label:'{i18n>procesoID}';
    descripcion : Date                     @Common.Label:'{i18n>descripcion}';
    orden : String(15)                     @Common.Label:'{i18n>orden}';
    secciones : String(15)                 @Common.Label:'{i18n>secciones}';
    tipoElemento : String(15)              @Common.Label:'{i18n>tipoElemento}';
    elemento : String(15)                  @Common.Label:'{i18n>elemento}';
    setID : String(15)                     @Common.Label:'{i18n>setID}';
    cuenta : String(15)                    @Common.Label:'{i18n>cuenta}';
    descripcion2 : String(15)              @Common.Label:'{i18n>descripcion2}';
    valorLargo : String(15)                @Common.Label:'{i18n>valorLargo}';
    parametro1 : String(15)                @Common.Label:'{i18n>parametro1}';
    parametro2 : String(15)                @Common.Label:'{i18n>parametro2}';
    parametro3 : String(15)                @Common.Label:'{i18n>parametro3}';
    parametro4 : String(15)                @Common.Label:'{i18n>parametro4}';
    parametro5 : String(15)                @Common.Label:'{i18n>parametro5}';
    parametro6 : String(15)                @Common.Label:'{i18n>parametro6}';
    parametro7 : String(15)                @Common.Label:'{i18n>parametro7}';
    parametro8 : String(15)                @Common.Label:'{i18n>parametro8}';
    parametro9 : String(15)                @Common.Label:'{i18n>parametro9}';
    parametro10 : String(15)               @Common.Label:'{i18n>parametro10}';
}

entity COMP_PLAN_PENSIONES : managed {
    key orden : String(15)         @Common.Label:'{i18n>orden}';
    key seccion : String(15)       @Common.Label:'{i18n>seccion}';
    parametro1 : String(15)        @Common.Label:'{i18n>parametro1}';
}

entity CAT_PENSIONES : managed {
    key fechaEfectiva : Date               @Common.Label:'{i18n>fechaEfectiva}';
    key estado : String(15)                @Common.Label:'{i18n>estado}';
    descripcion : String(30)               @Common.Label:'{i18n>descripcion}';
    descripcionCorta : String(15)          @Common.Label:'{i18n>descripcionCorta}';
    horizonteInversion : String(15)        @Common.Label:'{i18n>horizonteInversion}';
    clavePizarra : String(15)              @Common.Label:'{i18n>clavePizarra}';
    razonSocial : String(15)               @Common.Label:'{i18n>razonSocial}';
    rentaFija : Decimal(15, 2)             @Common.Label:'{i18n>rentaFija}';
    rentaVariable : Decimal(15, 2)         @Common.Label:'{i18n>rentaVariable}';
}

entity TASA_RENDIMIENTO : managed {
    key ejercicio : Integer            @Common.Label:'{i18n>ejercicio}';
    key mes : Integer                  @Common.Label:'{i18n>mes}';
    rendimiento : Decimal(15, 2)       @Common.Label:'{i18n>antiguedadInicial}';
}

entity ANTI_PORC_APORT : managed {
    key fechaEfectiva : Date                       @Common.Label:'{i18n>fechaEfectiva}';
    key antiguedad : Decimal(15, 2)                @Common.Label:'{i18n>antiguedad}';
    aportacionMaximaEmpleado : Decimal(15, 2)      @Common.Label:'{i18n>aportacionMaximaEmpleado}';
    aportacionVariableEmpresa : Decimal(15, 2)     @Common.Label:'{i18n>aportacionVariableEmpresa}';
    aportacionFijaEmpresa : Decimal(15, 2)         @Common.Label:'{i18n>aportacionFijaEmpresa}';
}

entity APOR_PLAN_PREV_PATRI : managed {
    key fechaEfectiva : Date                   @Common.Label:'{i18n>fechaEfectiva}';
    key setID : String(15)                     @Common.Label:'{i18n>setID}';
    codigoNivel : Integer                      @Common.Label:'{i18n>codigoNivel}';
    descripcion : String(15)                   @Common.Label:'{i18n>descripcion}';
    antiguedad : Decimal(10, 2)                @Common.Label:'{i18n>antiguedad}';
    porcentajeAportacion : Decimal(3, 2)       @Common.Label:'{i18n>porcentajeAportacion}';
}

entity CAT_DER_ADQUIRIDOS : managed {
    key fechaEfectiva : Date                       @Common.Label:'{i18n>fechaEfectiva}';
    key antiguedad : Decimal(10, 2)                @Common.Label:'{i18n>antiguedad}';
    bajaVoluntaria : Decimal(3, 2)                 @Common.Label:'{i18n>bajaVoluntaria}';
    bajaInvoluntaria : Decimal(3, 2)               @Common.Label:'{i18n>bajaInvoluntaria}';
    porcentajePlanPensiones : Decimal(3, 2)        @Common.Label:'{i18n>porcentajePlanPensiones}';
    porcentajePlanTOP : Decimal(3, 2)              @Common.Label:'{i18n>porcentajePlanTOP}';
}

entity CAT_BEN_RET : managed {
    key fechaEfectiva : Date               @Common.Label:'{i18n>fechaEfectiva}';
    key estado : String(15)                @Common.Label:'{i18n>estado}';
    descripcion : String(15)               @Common.Label:'{i18n>descripcion}';
    beneficiosRetiro : String(15)          @Common.Label:'{i18n>beneficiosRetiro}';
    premisas : String(50)                  @Common.Label:'{i18n>premisas}';
}

entity MOTIVOS_BAJAS : managed {
    key motivoGlobal : String(15)          @Common.Label:'{i18n>motivoGlobal}';
    key locales : String(15)               @Common.Label:'{i18n>locales}';
    porcentaje : Decimal(3, 2)             @Common.Label:'{i18n>porcentaje}';
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

entity MAPAELEMENTOS : managed{
    key anosMesesDiasAntiguedad : String(15);
    filterID : String;
    filterRFC : String;
    elementType : String(1);
    comment : String(100);
    createdAt   : Timestamp  @cds.on.insert: $now;
    createdBy   : User       @cds.on.insert: $user;
    modifiedAt  : Timestamp  @cds.on.insert: $now   @cds.on.update: $now;
    modifiedBy  : User       @cds.on.insert: $user  @cds.on.update: $user;
}

entity ALLOWEDPERCENTAGES {
    key allowedPercentages : Integer;
    empleadoID : String(8);
}