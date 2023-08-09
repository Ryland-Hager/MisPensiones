using PensionesService as service from '../../srv/pensiones-service';

annotate service.Empleados with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : RFC,
        },
        {
            $Type : 'UI.DataField',
            Value : ID,
        },
        {
            $Type : 'UI.DataField',
            Value : primerNombre,
        },
        {
            $Type : 'UI.DataField',
            Value : apellidoPaterno,
        },
        {
            $Type : 'UI.DataField',
            Value : apellidoMaterno,
        },
    ]
);
annotate service.Empleados with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : ID,
            },
            {
                $Type : 'UI.DataField',
                Value : RFC,
            },
            {
                $Type : 'UI.DataField',
                Value : primerNombre,
            },
            {
                $Type : 'UI.DataField',
                Value : apellidoPaterno,
            },
            {
                $Type : 'UI.DataField',
                Value : apellidoMaterno,
            },
            {
                $Type : 'UI.DataField',
                Value : workdayID,
            },
            {
                $Type : 'UI.DataField',
                Value : sueldoMensual,
            },
            {
                $Type : 'UI.DataField',
                Value : tipoContracto,
            },
            {
                $Type : 'UI.DataField',
                Value : grupoPago,
            },
            {
                $Type : 'UI.DataField',
                Value : fechaAntiguedad,
            },
            {
                $Type : 'UI.DataField',
                Value : fechaIngreso,
            },
            {
                $Type : 'UI.DataField',
                Value : fechaIncorporacion,
            },
            {
                $Type : 'UI.DataField',
                Value : fechaActualizacion,
            },
            {
                $Type : 'UI.DataField',
                Value : fechaBeneficios,
            },
            {
                $Type : 'UI.DataField',
                Value : contracto,
            },
            {
                $Type : 'UI.DataField',
                Value : colaborador,
            },
            {
                $Type : 'UI.DataField',
                Value : puesto,
            },
            {
                $Type : 'UI.DataField',
                Value : empresaID,
            },
            {
                $Type : 'UI.DataField',
                Value : empresaText,
            },
            {
                $Type : 'UI.DataField',
                Value : marcaPlanTOP,
            },
            {
                $Type : 'UI.DataField',
                Value : marcaPlanMatch,
            },
            {
                $Type : 'UI.DataField',
                Value : marcaPPR,
            },
            {
                $Type : 'UI.DataField',
                Value : fondoAhorro,
            },
            {
                $Type : 'UI.DataField',
                Value : aportacionFutura,
            },
            {
                $Type : 'UI.DataField',
                Value : aportacionVigente,
            },
            {
                $Type : 'UI.DataField',
                Value : fondoVive,
            },
            {
                $Type : 'UI.DataField',
                Value : coberturaMedica,
            },
            {
                $Type : 'UI.DataField',
                Value : medicoVitalicio,
            },
            {
                $Type : 'UI.DataField',
                Value : planBeneficio,
            },
            {
                $Type : 'UI.DataField',
                Value : puntajeAntiguedad,
            },
            {
                $Type : 'UI.DataField',
                Value : puntajeEdad,
            },
            {
                $Type : 'UI.DataField',
                Value : puntosActuales,
            },
            {
                $Type : 'UI.DataField',
                Value : comentarios,
            },
            {
                $Type : 'UI.DataField',
                Value : anosMesesDiasAntiguedad,
            },
            {
                $Type : 'UI.DataField',
                Value : montoDerechosAdquiridos,
            },
            {
                $Type : 'UI.DataField',
                Value : derechosAdquiridos,
            },
            {
                $Type : 'UI.DataField',
                Value : quieresAhorrar,
            },
            {
                $Type : 'UI.DataField',
                Value : fondoInversion,
            },
            {
                $Type : 'UI.DataField',
                Value : razonSocial,
            },
            {
                $Type : 'UI.DataField',
                Value : clavePizarra,
            },
            {
                $Type : 'UI.DataField',
                Value : horizonteInversion,
            },
            {
                $Type : 'UI.DataField',
                Label : 'aportacionMaxima',
                Value : aportacionMaxima,
            },
            {
                $Type : 'UI.DataField',
                Label : 'aportacionActualEmpleado',
                Value : aportacionActualEmpleado,
            },
            {
                $Type : 'UI.DataField',
                Label : 'aportacionProyeccionEmpleado',
                Value : aportacionProyeccionEmpleado,
            },
            {
                $Type : 'UI.DataField',
                Label : 'aportacionActualEmpresa',
                Value : aportacionActualEmpresa,
            },
            {
                $Type : 'UI.DataField',
                Label : 'aportacionProyeccionEmpresa',
                Value : aportacionProyeccionEmpresa,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
    ]
);
