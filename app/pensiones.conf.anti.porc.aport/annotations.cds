using PensionesService as service from '../../srv/pensiones-service';

annotate service.AntiPorcAport with @(UI: {

    HeaderInfo     : {
        $Type         : 'UI.HeaderInfoType',
        TypeName      : 'Antigüedad/Porcentajes Aportación',
        TypeNamePlural: 'Antigüedad/Porcentajes Aportación',
        Title         : {
            $Type: 'UI.DataField',
            Value: antiguedad
        },
        Description   : {
            $Type: 'UI.DataField',
            Value: fechaEfectiva
        }
    },
    LineItem       : [
        {
            $Type: 'UI.DataField',
            Label: '{i18n>fechaEfectiva}',
            Value: fechaEfectiva,
        },
        {
            $Type: 'UI.DataField',
            Label: '{i18n>antiguedad}',
            Value: antiguedad,
        },
        {
            $Type: 'UI.DataField',
            Label: '{i18n>aportacionMaximaEmpleado}',
            Value: aportacionMaximaEmpleado,
        },
        {
            $Type: 'UI.DataField',
            Label: '{i18n>aportacionVariableEmpresa}',
            Value: aportacionVariableEmpresa,
        },
        {
            $Type: 'UI.DataField',
            Label: '{i18n>aportacionFijaEmpresa}',
            Value: aportacionFijaEmpresa,
        },
        {
            $Type : 'UI.DataField',
            Value : createdAt,
            Label : 'createdAt',
        },
        {
            $Type : 'UI.DataField',
            Value : createdBy,
        },
        {
            $Type : 'UI.DataField',
            Value : modifiedAt,
            Label : 'Fecha modificación',
        },
        {
            $Type : 'UI.DataField',
            Value : modifiedBy,
            Label : 'Usuario',
        },
    ],
    SelectionFields: [
        antiguedad,
        fechaEfectiva
    ],
});

annotate service.AntiPorcAport with @(
    UI.FieldGroup #GeneratedGroup1: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Label: '{i18n>fechaEfectiva}',
                Value: fechaEfectiva,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>antiguedad}',
                Value: antiguedad,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>aportacionMaximaEmpleado}',
                Value: aportacionMaximaEmpleado,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>aportacionVariableEmpresa}',
                Value: aportacionVariableEmpresa,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>aportacionFijaEmpresa}',
                Value: aportacionFijaEmpresa,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Fecha modificación',
                Value: modifiedAt,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Usuario',
                Value: modifiedBy,
            },
        ],
    },
    UI.Facets                     : [{
        $Type : 'UI.ReferenceFacet',
        ID    : 'GeneratedFacet1',
        Label : 'General Information',
        Target: '@UI.FieldGroup#GeneratedGroup1',
    }, ]
);
