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
            Label: '{i18n>antiguedad}',
            Value: antiguedad,
        },
        {
            $Type: 'UI.DataField',
            Label: '{i18n>fechaEfectiva}',
            Value: fechaEfectiva,
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
                Label: '{i18n>antiguedad}',
                Value: antiguedad,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>fechaEfectiva}',
                Value: fechaEfectiva,
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
                Label: '{18n>createdAt}',
                Value: createdAt,
            },
            {
                $Type: 'UI.DataField',
                Label: '{18n>createdBy}',
                Value: createdBy,
            },
            {
                $Type: 'UI.DataField',
                Label: '{18n>modifiedAt}',
                Value: modifiedAt,
            },
            {
                $Type: 'UI.DataField',
                Label: '{18n>modifiedBy}',
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
