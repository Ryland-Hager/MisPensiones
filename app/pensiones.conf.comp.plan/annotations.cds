using PensionesService as service from '../../srv/pensiones-service';

annotate service.CompPlanPensiones with @(UI: {

    HeaderInfo     : {
        $Type         : 'UI.HeaderInfoType',
        TypeName      : 'Compañías Plan Pensiones',
        TypeNamePlural: 'Compañías Plan Pensiones',
        Title         : {
            $Type: 'UI.DataField',
            Value: seccion
        },
        Description   : {
            $Type: 'UI.DataField',
            Value: orden
        }
    },
    LineItem       : [
        {
            $Type: 'UI.DataField',
            Label: '{i18n>orden}',
            Value: orden,
        },
        {
            $Type: 'UI.DataField',
            Label: '{i18n>seccion}',
            Value: seccion,
        },
        {
            $Type: 'UI.DataField',
            Label: '{i18n>parametro1}',
            Value: parametro1,
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
        {
            $Type : 'UI.DataField',
            Value : createdAt,
            Label : 'createdAt',
        },
        {
            $Type : 'UI.DataField',
            Value : createdBy,
        },
    ],
    SelectionFields: [
        seccion,
        orden
    ],
});

annotate service.CompPlanPensiones with @(
    UI.FieldGroup #GeneratedGroup1: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Label: '{i18n>orden}',
                Value: orden,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>seccion}',
                Value: seccion,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>parametro1}',
                Value: parametro1,
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
            {
                $Type : 'UI.DataField',
                Value : createdAt,
                Label : 'createdAt',
            },
            {
                $Type : 'UI.DataField',
                Value : createdBy,
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
