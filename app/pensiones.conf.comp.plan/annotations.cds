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
            Label: '{i18n>seccion}',
            Value: seccion,
        },
        {
            $Type: 'UI.DataField',
            Label: '{i18n>orden}',
            Value: orden,
        },
        {
            $Type: 'UI.DataField',
            Label: '{i18n>parametro1}',
            Value: parametro1,
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
