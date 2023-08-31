using PensionesService as service from '../../srv/pensiones-service';

annotate service.Empleados with @(
    UI: {
        Facets : [
            {
                $Type : 'UI.ReferenceFacet',
                Label : '{i18n>DetalleEmpleado}',
                ID : 'DetalleEmpleado',
                Target : '@UI.FieldGroup#DetalleEmpleado'
            },
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
            {
                //Collection Facet used to seperate section into three columns
                $Type : 'UI.CollectionFacet',
                Label : '{i18n>PorcentajeAportacion}',
                ID : 'PorcentajeAportacion',
                Facets : [
                    {
                        $Type : 'UI.ReferenceFacet',
                        Label : '{i18n>PorcentajeAportacion}',
                        ID : 'PorcentajeAportacionFacet',
                        Target : '@UI.FieldGroup#PorcentajeAportacion'
                    },
                    {
                        $Type : 'UI.ReferenceFacet',
                        Label : '{i18n>AportacionEmpleado}',
                        ID : 'AportacionEmpleadoFacet',
                        Target : '@UI.FieldGroup#AportacionEmpleado'
                    },
                    {
                        $Type : 'UI.ReferenceFacet',
                        Label : '{i18n>AportacionEmpresa}',
                        ID : 'AportacionEmpresaFacet',
                        Target : '@UI.FieldGroup#AportacionEmpresa'
                    },
                ]
            },
            {
                $Type : 'UI.CollectionFacet',
                Label : '{i18n>ProyeccionFondo}',
                ID : 'ProyeccionFondo',
                Facets : [
                    {
                        $Type : 'UI.ReferenceFacet',
                        Label : '{i18n>ProyeccionFondoObj}',
                        ID : 'ProyeccionFondoFacet',
                        Target : '@UI.FieldGroup#ProyeccionFondo'
                    },
                ]
            },
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
            ]
        },
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
        FieldGroup #PorcentajeAportacion : {
            $Type : 'UI.FieldGroupType',
            Data : [
                {
                    $Type: 'UI.DataField',
                    Label: '{i18n>aportacionMaximaObj}',
                    Value: aportacionMaxima,
                },
                {
                    $Type: 'UI.DataField',
                    Label: '{i18n>quieresAhorrarObj}',
                    Value: quieresAhorrar
                },
            ]
        },
        FieldGroup #AportacionEmpleado : {
            $Type : 'UI.FieldGroupType',
            Data : [
                {
                    $Type: 'UI.DataField',
                    Label: '{i18n>aportacionActualEmpleado}',
                    Value: aportacionActualEmpleado,
                },
                {
                    $Type: 'UI.DataField',
                    Label: '{i18n>aportacionProyeccionEmpleado}',
                    Value: aportacionProyeccionEmpleado,
                },
            ]
        },
        FieldGroup #AportacionEmpresa : {
            $Type : 'UI.FieldGroupType',
            Data : [
                {
                    $Type: 'UI.DataField',
                    Label: '{i18n>aportacionActualEmpresa}',
                    Value: aportacionActualEmpresa,
                },
                {
                    $Type: 'UI.DataField',
                    Label: '{i18n>aportacionProyeccionEmpresa}',
                    Value: aportacionProyeccionEmpresa,
                },
            ]
        },
        FieldGroup #ProyeccionFondo : {
            $Type : 'UI.FieldGroupType',
            Data : [
                {
                    $Type: 'UI.DataField',
                    Value: fondoInversion,
                },
                {
                    $Type: 'UI.DataField',
                    Value: razonSocial,
                },
                {
                    $Type: 'UI.DataField',
                    Value: clavePizarra,
                },
                {
                    $Type: 'UI.DataField',
                    Value: horizonteInversion,
                },
            ]
        }
    }
);

//Value List Help implementation for the "quieresAhorrar" field
//Passes in the Employee ID and RFC as the filter and displays the percentage property
//from the 'AllowedPercentages" entity
annotate service.Empleados with {
    quieresAhorrar @(Common: {
        
        // Text : ,
        // TextArrangement : #TextOnly,
        ValueListWithFixedValues: true,
        ValueList : {
            Label : 'quieresAhorrar',
            // $Type : 'Common.ValueListType',
            CollectionPath : 'AllowedPercentages',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    ValueListProperty : 'empleadoID',
                    LocalDataProperty : ID
                },
                {
                    $Type : 'Common.ValueListParameterInOut',
                    ValueListProperty : 'empleadoRFC',
                    LocalDataProperty : RFC
                },
                {
                    $Type : 'Common.ValueListParameterInOut',
                    ValueListProperty : 'percentage',
                    LocalDataProperty: quieresAhorrar
                }
            ]
        },
    });
}


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
);

annotate service.Empleados @(Common : {
    SideEffects #employeeSavingProjection     : {
        SourceProperties   : ['quieresAhorrar'],
        TargetProperties : ['aportacionProyeccionEmpleado']
    }
});