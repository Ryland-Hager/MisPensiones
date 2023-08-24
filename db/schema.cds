using {User, managed} from '@sap/cds/common';

namespace DATA.PE;

//@cds.persistence.exists
entity EMPLEADOS {
    key ID                          : String(8)        @readonly    @Common.Label: '{i18n>ID}';
    key RFC                         : String(50)       @readonly    @Common.Label:'{i18n>RFC}';
    primerNombre                    : String(15)       @readonly    @Common.Label:'{i18n>primerNombre}';
    apellidoPaterno                 : String(15)       @readonly    @Common.Label:'{i18n>apellidoPaterno}';
    apellidoMaterno                 : String(15)       @readonly    @Common.Label:'{i18n>apellidoMaterno}';
    workdayID                       : String(9)        @readonly    @Common.Label:'{i18n>workdayID}';
    sueldoMensual                   : Decimal(15,2)    @readonly    @Common.Label:'{i18n>sueldoMensual}';
    tipoContracto                   : String(15)       @readonly    @Common.Label:'{i18n>tipoContracto}';
    grupoPago                       : String(15)       @readonly    @Common.Label:'{i18n>grupoPago}';
    fechaAntiguedad                 : Date             @readonly    @Common.Label:'{i18n>fechaAntiguedad}';
    fechaIngreso                    : Date             @readonly    @Common.Label:'{i18n>fechaIngreso}';
    fechaIncorporacion              : Date             @readonly    @Common.Label:'{i18n>fechaIncorporacion}';
    fechaActualizacion              : Date             @readonly    @Common.Label:'{i18n>fechaActualizacion}';
    fechaBeneficios                 : Date             @readonly    @Common.Label:'{i18n>fechaBeneficios}';
    contracto                       : String(15)       @readonly    @Common.Label:'{i18n>contracto}';
    colaborador                     : String(50)       @readonly    @Common.Label:'{i18n>colaborador}';
    puesto                          : String(50)       @readonly    @Common.Label:'{i18n>puesto}';
    empresaID                       : String(15)       @readonly    @Common.Label:'{i18n>empresaID}';
    empresaText                     : String(50)       @readonly    @Common.Label:'{i18n>empresaText}';
    marcaPlanTOP                    : Boolean          @readonly    @Common.Label:'{i18n>marcaPlanTOP}';
    marcaPlanMatch                  : Boolean          @readonly    @Common.Label:'{i18n>marcaPlanMatch}';
    marcaPPR                        : Boolean          @readonly    @Common.Label:'{i18n>marcaPPR}';
    fondoAhorro                     : String(50)       @readonly    @Common.Label:'{i18n>fondoAhorro}';
    aportacionFutura                : String(15)       @readonly    @Common.Label:'{i18n>aportacionFutura}';
    aportacionVigente               : String(15)       @readonly    @Common.Label:'{i18n>apartacionVigente}';
    fondoVive                       : String(15)       @readonly    @Common.Label:'{i18n>fondoVive}';
    coberturaMedica                 : String(15)       @readonly    @Common.Label:'{i18n>coberturaMedica}';
    medicoVitalicio                 : String(15)       @readonly    @Common.Label:'{i18n>medicoVitalicio}';
    planBeneficio                   : String(15)       @readonly    @Common.Label:'{i18n>planBeneficio}';
    puntajeAntiguedad               : String(15)       @readonly    @Common.Label:'{i18n>puntajeAntiguedad}';
    puntajeEdad                     : String(15)       @readonly    @Common.Label:'{i18n>puntajeEdad}';
    puntosActuales                  : String(15)       @readonly    @Common.Label:'{i18n>puntosActuales}';
    comentarios                     : String(200)      @Common.Label:'{i18n>comentarios}';
    anosMesesDiasAntiguedad         : String(15)       @readonly    @Common.Label:'{i18n>anosMesesDiasAntiguedad}';
    montoDerechosAdquiridos         : Decimal(15,2)    @readonly    @Common.Label:'{i18n>montoDerechosAdquiridos}';
    derechosAdquiridos              : Decimal(3,2)     @readonly    @Common.Label:'{i18n>derechosAdquiridos}';
    quieresAhorrar                  : Integer          @Common.Label:'{i18n>quieresAhorrar}';
    fondoInversion                  : String(15)       @readonly    @Common.Label:'{i18n>fondoInversion}';
    razonSocial                     : String(50)       @readonly    @Common.Label:'{i18n>razonSocial}';
    clavePizarra                    : String(15)       @readonly    @Common.Label:'{i18n>clavePizarra}';
    horizonteInversion              : String(15)       @readonly    @Common.Label:'{i18n>horizonteInversion}';
    aportacionMaxima                : Integer          @readonly    @Common.Label:'{i18n>aportacionMaxima}';
    aportacionActualEmpleado        : Decimal(15,2)    @readonly    @Common.Label:'{i18n>aportacionActualEmpleado}';
    aportacionProyeccionEmpleado    : Decimal(15, 2)   @readonly    @Common.Label:'{i18n>aportacionProyeccionEmpleado}';
    aportacionActualEmpresa         : Decimal(15,2)    @readonly    @Common.Label:'{i18n>aportacionActualEmpresa}';
    aportacionProyeccionEmpresa     : Decimal(15, 2)   @readonly    @Common.Label:'{i18n>aportacionProyeccionEmpresa}';
    cuentas                         : Association to many ESTADO_CUENTA on cuentas.empleadoID = $self.ID;
    allowedPercentages              : Association to many ALLOWEDPERCENTAGES on allowedPercentages.empleadoID = $self.ID;
}

entity ESTADO_CUENTA {
    key cuentaID : String(8);                   @readonly
    key cuentaRFC : String(18);                 @readonly
    empresaID : String(15);                     @readonly
    planTOP : Decimal(15,2);                    @readonly
    porcentajePlanTOP : Decimal(15, 2);         @readonly
    AEMP : Decimal(15, 2);                      @readonly
    rendimientosAEMP : Decimal(15, 2);          @readonly
    ACIA : Decimal(15, 2);                      @readonly
    rendimientosACIA : Decimal(15, 2);          @readonly
    ADP : Decimal(15, 2);                       @readonly
    rendimientosADP : Decimal(15, 2);           @readonly
    ACM : Decimal(15, 2);                       @readonly
    rendimientosACM :Decimal(15, 2);            @readonly
    OBA : Decimal(15, 2);                       @readonly
    rendimientosOBA : Decimal(15, 2);           @readonly
    ASP : Decimal(15, 2);                       @readonly
    rendimientosASP : Decimal(15, 2);           @readonly
    AEXT : Decimal(15, 2);                      @readonly
    rendimientosAEXT : Decimal(15, 2);          @readonly
    ASPCM : Decimal(15, 2);                     @readonly
    rendimientosASPCM : Decimal(15, 2);         @readonly
    empleadoID : String(8);                     @readonly
    owner : Association to EMPLEADOS on owner.ID = empleadoID;
}

entity APORTACION : managed {
    key antiguedadInicial : Decimal(10, 2) @Common.Label:'{i18n>antiguedadInicial}';
    key antiguedadFinal : Decimal(10, 2)   @Common.Label:'{i18n>antiguedadFinal}';
    porcentajeMax : Integer                @Common.Label:'{i18n>porcentajeMax}';
    createdAt   : Timestamp  @cds.on.insert: $now;
    createdBy   : User       @cds.on.insert: $user;
    modifiedAt  : Timestamp  @cds.on.insert: $now   @cds.on.update: $now;
    modifiedBy  : User       @cds.on.insert: $user  @cds.on.update: $user;
}

entity APORTACION_EMPRESA : managed {
    key anosServicio : Decimal(10, 2)      @Common.Label:'{i18n>anosServicio}';
    adquisicionDerechos : Decimal(3, 2)    @Common.Label:'{i18n>adquisicionDerechos}';
    createdAt   : Timestamp  @cds.on.insert: $now;
    createdBy   : User       @cds.on.insert: $user;
    modifiedAt  : Timestamp  @cds.on.insert: $now   @cds.on.update: $now;
    modifiedBy  : User       @cds.on.insert: $user  @cds.on.update: $user;
}

entity COBERTURA_MEDICA : managed  {
    key antiguedad : Decimal(10, 2)        @Common.Label:'{i18n>antiguedad}';
    aportacionPesos : Decimal(15, 2)       @Common.Label:'{i18n>aportacionPesos}';
    createdAt   : Timestamp  @cds.on.insert: $now;
    createdBy   : User       @cds.on.insert: $user;
    modifiedAt  : Timestamp  @cds.on.insert: $now   @cds.on.update: $now;
    modifiedBy  : User       @cds.on.insert: $user  @cds.on.update: $user;
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
    createdAt   : Timestamp  @cds.on.insert: $now;
    createdBy   : User       @cds.on.insert: $user;
    modifiedAt  : Timestamp  @cds.on.insert: $now   @cds.on.update: $now;
    modifiedBy  : User       @cds.on.insert: $user  @cds.on.update: $user;
}

entity COMP_PLAN_PENSIONES : managed {
    key orden : String(15)         @Common.Label:'{i18n>orden}';
    key seccion : String(15)       @Common.Label:'{i18n>seccion}';
    parametro1 : String(15)        @Common.Label:'{i18n>parametro1}';
    createdAt   : Timestamp  @cds.on.insert: $now;
    createdBy   : User       @cds.on.insert: $user;
    modifiedAt  : Timestamp  @cds.on.insert: $now   @cds.on.update: $now;
    modifiedBy  : User       @cds.on.insert: $user  @cds.on.update: $user;
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
    createdAt   : Timestamp  @cds.on.insert: $now;
    createdBy   : User       @cds.on.insert: $user;
    modifiedAt  : Timestamp  @cds.on.insert: $now   @cds.on.update: $now;
    modifiedBy  : User       @cds.on.insert: $user  @cds.on.update: $user;
}

entity TASA_RENDIMIENTO : managed {
    key ejercicio : Integer            @Common.Label:'{i18n>ejercicio}';
    key mes : Integer                  @Common.Label:'{i18n>mes}';
    rendimiento : Decimal(15, 2)       @Common.Label:'{i18n>antiguedadInicial}';
    createdAt   : Timestamp  @cds.on.insert: $now;
    createdBy   : User       @cds.on.insert: $user;
    modifiedAt  : Timestamp  @cds.on.insert: $now   @cds.on.update: $now;
    modifiedBy  : User       @cds.on.insert: $user  @cds.on.update: $user;
}

entity ANTI_PORC_APORT : managed {
    key fechaEfectiva : Date                       @Common.Label:'{i18n>fechaEfectiva}';
    key antiguedad : Decimal(15, 2)                @Common.Label:'{i18n>antiguedad}';
    aportacionMaximaEmpleado : Decimal(15, 2)      @Common.Label:'{i18n>aportacionMaximaEmpleado}';
    aportacionVariableEmpresa : Decimal(15, 2)     @Common.Label:'{i18n>aportacionVariableEmpresa}';
    aportacionFijaEmpresa : Decimal(15, 2)         @Common.Label:'{i18n>aportacionFijaEmpresa}';
    createdAt   : Timestamp  @cds.on.insert: $now;
    createdBy   : User       @cds.on.insert: $user;
    modifiedAt  : Timestamp  @cds.on.insert: $now   @cds.on.update: $now;
    modifiedBy  : User       @cds.on.insert: $user  @cds.on.update: $user;
}

entity APOR_PLAN_PREV_PATRI : managed {
    key fechaEfectiva : Date                   @Common.Label:'{i18n>fechaEfectiva}';
    key setID : String(15)                     @Common.Label:'{i18n>setID}';
    codigoNivel : Integer                      @Common.Label:'{i18n>codigoNivel}';
    descripcion : String(15)                   @Common.Label:'{i18n>descripcion}';
    antiguedad : Decimal(10, 2)                @Common.Label:'{i18n>antiguedad}';
    porcentajeAportacion : Decimal(3, 2)       @Common.Label:'{i18n>porcentajeAportacion}';
    createdAt   : Timestamp  @cds.on.insert: $now;
    createdBy   : User       @cds.on.insert: $user;
    modifiedAt  : Timestamp  @cds.on.insert: $now   @cds.on.update: $now;
    modifiedBy  : User       @cds.on.insert: $user  @cds.on.update: $user;
}

entity CAT_DER_ADQUIRIDOS : managed {
    key fechaEfectiva : Date                       @Common.Label:'{i18n>fechaEfectiva}';
    key antiguedad : Decimal(10, 2)                @Common.Label:'{i18n>antiguedad}';
    bajaVoluntaria : Decimal(3, 2)                 @Common.Label:'{i18n>bajaVoluntaria}';
    bajaInvoluntaria : Decimal(3, 2)               @Common.Label:'{i18n>bajaInvoluntaria}';
    porcentajePlanPensiones : Decimal(3, 2)        @Common.Label:'{i18n>porcentajePlanPensiones}';
    porcentajePlanTOP : Decimal(3, 2)              @Common.Label:'{i18n>porcentajePlanTOP}';
    createdAt   : Timestamp  @cds.on.insert: $now;
    createdBy   : User       @cds.on.insert: $user;
    modifiedAt  : Timestamp  @cds.on.insert: $now   @cds.on.update: $now;
    modifiedBy  : User       @cds.on.insert: $user  @cds.on.update: $user;
}

entity CAT_BEN_RET : managed {
    key fechaEfectiva : Date               @Common.Label:'{i18n>fechaEfectiva}';
    key estado : String(15)                @Common.Label:'{i18n>estado}';
    descripcion : String(15)               @Common.Label:'{i18n>descripcion}';
    beneficiosRetiro : String(15)          @Common.Label:'{i18n>beneficiosRetiro}';
    premisas : String(50)                  @Common.Label:'{i18n>premisas}';
    createdAt   : Timestamp  @cds.on.insert: $now;
    createdBy   : User       @cds.on.insert: $user;
    modifiedAt  : Timestamp  @cds.on.insert: $now   @cds.on.update: $now;
    modifiedBy  : User       @cds.on.insert: $user  @cds.on.update: $user;
}

entity MOTIVOS_BAJAS : managed {
    key motivoGlobal : String(15)          @Common.Label:'{i18n>motivoGlobal}';
    key locales : String(15)               @Common.Label:'{i18n>locales}';
    porcentaje : Decimal(3, 2)             @Common.Label:'{i18n>porcentaje}';
    createdAt   : Timestamp  @cds.on.insert: $now;
    createdBy   : User       @cds.on.insert: $user;
    modifiedAt  : Timestamp  @cds.on.insert: $now   @cds.on.update: $now;
    modifiedBy  : User       @cds.on.insert: $user  @cds.on.update: $user;
}

entity CARTA_FID : managed {
    key noCompania : String(10)        @Common.Label:'{i18n>noCompania}';
    compania : String(15)              @Common.Label:'{i18n>compania}';
    logo : String(200)                 @Common.Label:'{i18n>logo}';
    fecha : String(200)                @Common.Label:'{i18n>fecha}';
    destinatario : String(200)         @Common.Label:'{i18n>destinatario}';
    referencia : String(100)           @Common.Label:'{i18n>referencia}';
    parrafo1 : String(800)             @Common.Label:'{i18n>parrafo1}';
    parrafo2 : String(800)             @Common.Label:'{i18n>parrafo2}';
    parrafo3 : String(800)             @Common.Label:'{i18n>parrafo3}';
    parrafo4 : String(800)             @Common.Label:'{i18n>parrafo4}';
    parrafo5 : String(800)             @Common.Label:'{i18n>parrafo5}';
    firma : String(200)                @Common.Label:'{i18n>firma}';
    lineaFirma : String(100)           @Common.Label:'{i18n>lineaFirma}';
    remitente : String(200)            @Common.Label:'{i18n>remitente}';
    puesto : String(100)               @Common.Label:'{i18n>puesto}';
    createdAt   : Timestamp  @cds.on.insert: $now;
    createdBy   : User       @cds.on.insert: $user;
    modifiedAt  : Timestamp  @cds.on.insert: $now   @cds.on.update: $now;
    modifiedBy  : User       @cds.on.insert: $user  @cds.on.update: $user;
}

entity CARTA_FID_AUX1 {
    key noCompania : String(10)        @Common.Label:'{i18n>noCompania}';
    compania : String(15)              @Common.Label:'{i18n>String}';
    key nombre : String (100)          @Common.Label:'{i18n>nombre}';
    cargo : String (100)               @Common.Label:'{i18n>cargo}';
    createdAt   : Timestamp  @cds.on.insert: $now;
    createdBy   : User       @cds.on.insert: $user;
    modifiedAt  : Timestamp  @cds.on.insert: $now   @cds.on.update: $now;
    modifiedBy  : User       @cds.on.insert: $user  @cds.on.update: $user;
}

entity CARTA_FID_AUX2 {
    key noCompania : String(10)        @Common.Label:'{i18n>noCompania}';
    key compania : String(15)          @Common.Label:'{i18n>compania}';
    key nombre : String (100)          @Common.Label:'{i18n>nombre}';
    createdAt   : Timestamp  @cds.on.insert: $now;
    createdBy   : User       @cds.on.insert: $user;
    modifiedAt  : Timestamp  @cds.on.insert: $now   @cds.on.update: $now;
    modifiedBy  : User       @cds.on.insert: $user  @cds.on.update: $user;
}

entity CARTA_FID_AUX3 : managed {
    key fondo : String(10)             @Common.Label:'{i18n>fondo}';
    contracto : Integer                @Common.Label:'{i18n>contracto}';
    fideicomiso : String(20)           @Common.Label:'{i18n>fideicomiso}';
    chequeraPropia : String(20)        @Common.Label:'{i18n>chequeraPropia}';
    createdAt   : Timestamp  @cds.on.insert: $now;
    createdBy   : User       @cds.on.insert: $user;
    modifiedAt  : Timestamp  @cds.on.insert: $now   @cds.on.update: $now;
    modifiedBy  : User       @cds.on.insert: $user  @cds.on.update: $user;
}

entity CARTA_REC_KEE : managed {
    key noCompania : String(10)        @Common.Label:'{i18n>noCompania}';
    key compania : String(15)          @Common.Label:'{i18n>compania}';
    logo : String(200)                 @Common.Label:'{i18n>logo}';
    fecha : String(200)                @Common.Label:'{i18n>fecha}';
    destinatario : String(200)         @Common.Label:'{i18n>destinatario}';
    parrafo1 : String(800)             @Common.Label:'{i18n>parrafo1}';
    parrafo2 : String(800)             @Common.Label:'{i18n>parrafo2}';
    parrafo3 : String(800)             @Common.Label:'{i18n>parrafo3}';
    parrafo4 : String(800)             @Common.Label:'{i18n>parrafo4}';
    parrafo5 : String(800)             @Common.Label:'{i18n>parrafo5}';
    parrafo6 : String(800)             @Common.Label:'{i18n>parrafo6}';
    firma : String(200)                @Common.Label:'{i18n>firma}';
    lineaFirma : String(100)           @Common.Label:'{i18n>lineaFirma}';
    remitente : String(200)            @Common.Label:'{i18n>remitente}';
    puesto : String(100)               @Common.Label:'{i18n>puesto}';
    createdAt   : Timestamp  @cds.on.insert: $now;
    createdBy   : User       @cds.on.insert: $user;
    modifiedAt  : Timestamp  @cds.on.insert: $now   @cds.on.update: $now;
    modifiedBy  : User       @cds.on.insert: $user  @cds.on.update: $user;
}

entity CARTA_REC_KEE_AUX1 {
    key noCompania : String(10)        @Common.Label:'{i18n>noCompania}';
    key compania : String(15)          @Common.Label:'{i18n>compania}';
    key nombre : String (100)          @Common.Label:'{i18n>nombre}';
    cargo : String (100)               @Common.Label:'{i18n>cargo}';
    createdAt   : Timestamp  @cds.on.insert: $now;
    createdBy   : User       @cds.on.insert: $user;
    modifiedAt  : Timestamp  @cds.on.insert: $now   @cds.on.update: $now;
    modifiedBy  : User       @cds.on.insert: $user  @cds.on.update: $user;
}

entity CARTA_REC_KEE_AUX2 {
    key fondo : String(10)             @Common.Label:'{i18n>fondo}';
    contracto : Integer                @Common.Label:'{i18n>contracto}';
    fideicomiso : String(20)           @Common.Label:'{i18n>fideicomiso}';
    chequeraPropia : String(20)        @Common.Label:'{i18n>chequeraPropia}';
    createdAt   : Timestamp  @cds.on.insert: $now;
    createdBy   : User       @cds.on.insert: $user;
    modifiedAt  : Timestamp  @cds.on.insert: $now   @cds.on.update: $now;
    modifiedBy  : User       @cds.on.insert: $user  @cds.on.update: $user;
}

entity CARTA_REC_KEE_AUX3 : managed {
    key fondo : String(10)             @Common.Label:'{i18n>fondo}';
    contracto : Integer                @Common.Label:'{i18n>contracto}';
    fideicomiso : String(20)           @Common.Label:'{i18n>fideicomiso}';
    chequeraPropia : String(20)        @Common.Label:'{i18n>chequeraPropia}';
    createdAt   : Timestamp  @cds.on.insert: $now;
    createdBy   : User       @cds.on.insert: $user;
    modifiedAt  : Timestamp  @cds.on.insert: $now   @cds.on.update: $now;
    modifiedBy  : User       @cds.on.insert: $user  @cds.on.update: $user;
}

entity CARTA_REC_KEE_FIL : managed {
    key noCompania : String(10)        @Common.Label:'{i18n>noCompania}';
    compania : String(15)              @Common.Label:'{i18n>compania}';
    logo : String(200)                 @Common.Label:'{i18n>logo}';
    fecha : String(200)                @Common.Label:'{i18n>fecha}';
    destinatario : String(200)         @Common.Label:'{i18n>destinatario}';
    parrafo1 : String(800)             @Common.Label:'{i18n>parrafo1}';
    parrafo2 : String(800)             @Common.Label:'{i18n>parrafo2}';
    parrafo3 : String(800)             @Common.Label:'{i18n>parrafo3}';
    parrafo4 : String(800)             @Common.Label:'{i18n>parrafo4}';
    parrafo5 : String(800)             @Common.Label:'{i18n>parrafo5}';
    parrafo6 : String(800)             @Common.Label:'{i18n>parrafo6}';
    firma : String(200)                @Common.Label:'{i18n>firma}';
    lineaFirma : String(100)           @Common.Label:'{i18n>lineaFirma}';
    remitente : String(200)            @Common.Label:'{i18n>remitente}';
    puesto : String(100)               @Common.Label:'{i18n>puesto}';
    createdAt   : Timestamp  @cds.on.insert: $now;
    createdBy   : User       @cds.on.insert: $user;
    modifiedAt  : Timestamp  @cds.on.insert: $now   @cds.on.update: $now;
    modifiedBy  : User       @cds.on.insert: $user  @cds.on.update: $user;
}

entity CARTA_REC_KEE_FIL_AUX1 {
    key noCompania : String(10)        @Common.Label:'{i18n>noCompania}';
    compania : String(15)              @Common.Label:'{i18n>compania}';
    key nombre : String (100)          @Common.Label:'{i18n>nombre}';
    cargo : String (100)               @Common.Label:'{i18n>cargo}';
    createdAt   : Timestamp  @cds.on.insert: $now;
    createdBy   : User       @cds.on.insert: $user;
    modifiedAt  : Timestamp  @cds.on.insert: $now   @cds.on.update: $now;
    modifiedBy  : User       @cds.on.insert: $user  @cds.on.update: $user;
}

entity CARTA_REC_KEE_FIL_AUX2 {
    key noCompania : String(10)        @Common.Label:'{i18n>noCompania}';
    key compania : String(15)          @Common.Label:'{i18n>compania}';
    key nombre : String (100)          @Common.Label:'{i18n>nombre}';
    createdAt   : Timestamp  @cds.on.insert: $now;
    createdBy   : User       @cds.on.insert: $user;
    modifiedAt  : Timestamp  @cds.on.insert: $now   @cds.on.update: $now;
    modifiedBy  : User       @cds.on.insert: $user  @cds.on.update: $user;
}

entity CARTA_REC_KEE_FIL_AUX3 : managed {
    key noCompania : String(10)        @Common.Label:'{i18n>noCompania}';
    compania : Integer                 @Common.Label:'{i18n>compania}';
    aportacion : String(20)            @Common.Label:'{i18n>aportacion}';
    fondo : String(20)                 @Common.Label:'{i18n>fondo}';
    contrato : Integer                 @Common.Label:'{i18n>contrato}';
    chequeraPropia : String(20)        @Common.Label:'{i18n>chequeraPropia}';
    createdAt   : Timestamp  @cds.on.insert: $now;
    createdBy   : User       @cds.on.insert: $user;
    modifiedAt  : Timestamp  @cds.on.insert: $now   @cds.on.update: $now;
    modifiedBy  : User       @cds.on.insert: $user  @cds.on.update: $user;
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
    key percentage : Integer;
    empleadoID : String(8);
    empleadoRFC : String(50);
}