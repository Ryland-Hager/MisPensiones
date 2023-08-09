using PensionesService as service from '../../srv/pensiones-service';

annotate service.Empleados with @(
    UI: {
        HeaderInfo  : {
            $Type : 'UI.HeaderInfoType',
            TypeName : 'Empleado',
            TypeNamePlural : 'Empleados',
            Title : {
                $Type : 'UI.DataField',
                Value : primerNombre
            },
            Description : {
                $Type : 'UI.DataField',
                Value : apellidoMaterno
            }
        },
        Identification  : [
            {Value: ID},
        ],
        LineItem : [
            {
                $Type : 'UI.DataField',
                Label : 'ID Empleado',
                Value : ID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Nombres',
                Value : primerNombre,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Apellido Paterno',
                Value : apellidoPaterno,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Apellido Materno',
                Value : apellidoMaterno,
            },
            {
                $Type : 'UI.DataField',
                Label : 'ID Workday',
                Value : workdayID,
            },
        ],
        SelectionFields : [
            ID,
            primerNombre,
            apellidoPaterno,
            apellidoMaterno,
            workdayID
        ],
        Facets : [
            {
                $Type : 'UI.ReferenceFacet',
                Label : '{i18n>DetalleEmpleado}',
                ID : 'DetalleEmpleado',
                Target : '@UI.FieldGroup#DetalleEmpleado'
            },
            // {
            //     $Type : 'UI.ReferenceFacet',
            //     Label : '{i18n>Comentarios}',
            //     ID : 'Comentarios',
            //     Target : '@UI.FieldGroup#Comentarios'
            // },
            {
                $Type : 'UI.ReferenceFacet',
                Label : '{i18n>DerechosAdquiridos}',
                ID : 'DerechosAdquiridos',
                Target : '@UI.FieldGroup#DerechosAdquiridos'
            },
            {
                $Type : 'UI.ReferenceFacet',
                Label : '{i18n>EstadoCuenta}',
                ID : 'EstadoCuenta',
                Target : 'cuentas/@UI.LineItem'
            },
            // {
            //     $Type : 'UI.CollectionFacet',
            //     Label : '{i18n>PorcentajeAportacion}',
            //     ID : 'PorcentajeAportacion',
            //     Facets : [
            //         {
            //             $Type : 'UI.ReferenceFacet',
            //             Label : '{i18n>PorcentajeAportacion}',
            //             ID : 'PorcentajeAportacionFacet',
            //             Target : '@UI.FieldGroup#PorcentajeAportacion'
            //         },
            //         {
            //             $Type : 'UI.ReferenceFacet',
            //             Label : '{i18n>AportacionEmpleado}',
            //             ID : 'AportacionEmpleadoFacet',
            //             Target : '@UI.FieldGroup#AportacionEmpleado'
            //         },
            //         {
            //             $Type : 'UI.ReferenceFacet',
            //             Label : '{i18n>AportacionEmpresa}',
            //             ID : 'AportacionEmpresaFacet',
            //             Target : '@UI.FieldGroup#AportacionEmpresa'
            //         },
            //     ]
            // },
            // {
            //     $Type : 'UI.CollectionFacet',
            //     Label : '{i18n>ProyeccionFondo}',
            //     ID : 'ProyeccionFondo',
            //     // Target : '@UI.FieldGroup#ProyeccionFondo'
            //     Facets : [
            //         {
            //             $Type : 'UI.ReferenceFacet',
            //             Label : '{i18n>ProyeccionFondoObj}',
            //             ID : 'ProyeccionFondoFacet',
            //             Target : '@UI.FieldGroup#ProyeccionFondo'
            //         },
            //     ]
            // },
        ],
        FieldGroup #DetalleEmpleado : {
            $Type : 'UI.FieldGroupType',
            Data : [
                {
                    $Type: 'UI.DataField',
                    Value: ID,
                },
                {
                    $Type: 'UI.DataField',
                    Value: workdayID,
                },
                {
                    $Type: 'UI.DataField',
                    Value: fechaAntiguedad,
                },
                {
                    $Type: 'UI.DataField',
                    Value: fechaIngreso,
                },
                {
                    $Type: 'UI.DataField',
                    Value: fechaIncorporacion,
                },
                {
                    $Type: 'UI.DataField',
                    Value: fechaActualizacion,
                },
                {
                    $Type: 'UI.DataField',
                    Value: fechaBeneficios,
                },
                {
                    $Type: 'UI.DataField',
                    Value: tipoContracto,
                },
                {
                    $Type: 'UI.DataField',
                    Value: colaborador,
                },
                {
                    $Type: 'UI.DataField',
                    Value: puesto,
                },
                {
                    $Type: 'UI.DataField',
                    Value: empresaID,
                },
                {
                    $Type: 'UI.DataField',
                    Value: marcaPlanTOP,
                },
                {
                    $Type: 'UI.DataField',
                    Value: marcaPlanMatch,
                },
                {
                    $Type: 'UI.DataField',
                    Value: marcaPPR,
                },
                {
                    $Type: 'UI.DataField',
                    Value: marcaPlanMatch,
                },
                {
                    $Type: 'UI.DataField',
                    Value: marcaPPR,
                },
                {
                    $Type: 'UI.DataField',
                    Value: fondoAhorro,
                },
                {
                    $Type: 'UI.DataField',
                    Value: aportacionVigente,
                },
                {
                    $Type: 'UI.DataField',
                    Value: fondoVive,
                },
                {
                    $Type: 'UI.DataField',
                    Value: coberturaMedica,
                },
                {
                    $Type: 'UI.DataField',
                    Value: medicoVitalicio,
                },
                {
                    $Type: 'UI.DataField',
                    Value: planBeneficio,
                },
                {
                    $Type: 'UI.DataField',
                    Value: puntajeAntiguedad,
                },
                {
                    $Type: 'UI.DataField',
                    Value: puntajeEdad,
                },
                {
                    $Type: 'UI.DataField',
                    Value: puntosActuales,
                },
                {
                    $Type: 'UI.DataField',
                    Value: anosMesesDiasAntiguedad,
                },
                {
                    $Type: 'UI.DataField',
                    Value: comentarios,
                }
            ]
        },
        // FieldGroup #Comentarios : {
        //     $Type : 'UI.FieldGroupType',
        //     Data : [
        //         {
        //             $Type: 'UI.DataField',
        //             Value: ID,
        //         }
        //     ]
        // },
        FieldGroup #DerechosAdquiridos : {
            $Type : 'UI.FieldGroupType',
            Data : [
                {
                    $Type: 'UI.DataField',
                    Label: '{i18n>derechosEquivalen}',
                    Value: montoDerechosAdquiridos,
                },
                {
                    $Type: 'UI.DataField',
                    Value: derechosAdquiridos,
                }
            ]
        },
        FieldGroup #EstadoCuenta : {
            $Type : 'UI.FieldGroupType',
            Data : [
                {
                    $Type: 'UI.DataField',
                    Value: ID,
                }
            ]
        },
        // FieldGroup #PorcentajeAportacion : {
        //     $Type : 'UI.FieldGroupType',
        //     Data : [
        //         {
        //             $Type: 'UI.DataField',
        //             Label: '{i18n>aportacionMaximaObj}',
        //             Value: aportacionMaxima,
        //         },
        //         {
        //             $Type: 'UI.DataField',
        //             Label: '{i18n>quieresAhorrarObj}',
        //             Value: quieresAhorrar,
        //         },
        //     ]
        // },
        // FieldGroup #AportacionEmpleado : {
        //     $Type : 'UI.FieldGroupType',
        //     Data : [
        //         {
        //             $Type: 'UI.DataField',
        //             Value: aportacionProyeccionEmpleado,
        //         },
        //         {
        //             $Type: 'UI.DataField',
        //             Value: aportacionActualEmpleado,
        //         },
        //     ]
        // },
        // FieldGroup #AportacionEmpresa : {
        //     $Type : 'UI.FieldGroupType',
        //     Data : [
        //         {
        //             $Type: 'UI.DataField',
        //             Value: aportacionProyeccionEmpresa,
        //         },
        //         {
        //             $Type: 'UI.DataField',
        //             Value: aportacionActualEmpresa,
        //         },
        //     ]
        // },
        // FieldGroup #ProyeccionFondo : {
        //     $Type : 'UI.FieldGroupType',
        //     Data : [
        //         {
        //             $Type: 'UI.DataField',
        //             Value: fondoInversion,
        //         },
        //         {
        //             $Type: 'UI.DataField',
        //             Value: razonSocial,
        //         },
        //         {
        //             $Type: 'UI.DataField',
        //             Value: clavePizarra,
        //         },
        //         {
        //             $Type: 'UI.DataField',
        //             Value: horizonteInversion,
        //         },
        //     ]
        // }
    },
    Capabilities.DeleteRestrictions: {
        Deletable: false
    }
)
{
    @UI.HiddenFilter
    sueldoMensual;
    @UI.HiddenFilter
    tipoContracto;
    @UI.HiddenFilter
    grupoPago;
    @UI.HiddenFilter
    fechaAntiguedad;
    @UI.HiddenFilter
    fechaIngreso;
    @UI.HiddenFilter
    fechaIncorporacion;
    @UI.HiddenFilter
    fechaActualizacion;
    @UI.HiddenFilter
    fechaBeneficios;
    @UI.HiddenFilter
    contracto;
    @UI.HiddenFilter
    colaborador;
    @UI.HiddenFilter
    puesto;
    @UI.HiddenFilter
    empresaID;
    @UI.HiddenFilter
    empresaText;
    @UI.HiddenFilter
    marcaPlanTOP;
    @UI.HiddenFilter
    marcaPlanMatch;
    @UI.HiddenFilter
    marcaPPR;
    @UI.HiddenFilter
    fondoAhorro;
    @UI.HiddenFilter
    aportacionFutura;
    @UI.HiddenFilter
    aportacionVigente;
    @UI.HiddenFilter
    fondoVive;
    @UI.HiddenFilter
    coberturaMedica;
    @UI.HiddenFilter
    medicoVitalicio;
    @UI.HiddenFilter
    planBeneficio;
    @UI.HiddenFilter
    puntajeAntiguedad;
    @UI.HiddenFilter
    puntajeEdad;
    @UI.HiddenFilter
    puntosActuales;
    @UI.HiddenFilter
    comentarios;
    @UI.HiddenFilter
    anosMesesDiasAntiguedad;
    @UI.HiddenFilter
    montoDerechosAdquiridos;
    @UI.HiddenFilter
    derechosAdquiridos;
    @UI.HiddenFilter
    aportacionMaxima;
    @UI.HiddenFilter
    quieresAhorrar;
    @UI.HiddenFilter
    aportacionActualEmpleado;
    @UI.HiddenFilter
    aportacionProyeccionEmpleado;
    @UI.HiddenFilter
    aportacionActualEmpresa;
    @UI.HiddenFilter
    aportacionProyeccionEmpresa;
    @UI.HiddenFilter
    fondoInversion;
    @UI.HiddenFilter
    razonSocial;
    @UI.HiddenFilter
    clavePizarra;
    @UI.HiddenFilter
    horizonteInversion;
};

annotate service.EstadoCuenta with @(
    UI : {
        HeaderInfo : {
            $Type : 'UI.HeaderInfoType',
            TypeName : '{i18n>EstadoCuenta}',
            TypeNamePlural : '{i18n>EstadoCuentas}',
        },
        LineItem : [
            {
                $Type : 'UI.DataField',
                Label : '{i18n>empresaID}',
                Value : empresaID,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>empleadoID}',
                Value : empleadoID,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>planTOP}',
                Value : planTOP,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>porcentajePlanTOP}',
                Value : porcentajePlanTOP,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>AEMP}',
                Value : AEMP,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>rendimientosAEMP}',
                Value : rendimientosAEMP,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>ACIA}',
                Value : ACIA,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>rendimientosACIA}',
                Value : rendimientosACIA,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>ADP}',
                Value : ADP,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>rendimientosADP}',
                Value : rendimientosADP,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>ACM}',
                Value : ACM,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>rendimientosACM}',
                Value : rendimientosACM,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>OBA}',
                Value : OBA,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>rendimientosOBA}',
                Value : rendimientosOBA,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>ASP}',
                Value : ASP,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>rendimientosASP}',
                Value : rendimientosASP,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>AEXT}',
                Value : AEXT,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>rendimientosAEXT}',
                Value : rendimientosAEXT,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>ASPCM}',
                Value : ASPCM,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>rendimientosASPCM}',
                Value : rendimientosASPCM,
            }
        ]
    },

    // Capabilities : {

    // }
);



annotate service.Empleados with {
    ID @title:'{i18n>ID}' @UI.HiddenFilter;
    primerNombre @title:'{i18n>primerNombre}';
    apellidoPaterno @title:'{i18n>apellidoPaterno}';
    apellidoMaterno @title:'{i18n>apellidoMaterno}';
    workdayID @title:'{i18n>workdayID}';
}
