using PensionesService as service from '../../srv/pensiones-service';

annotate service.TasaRendimiento with @(UI: {

    HeaderInfo     : {
        $Type         : 'UI.HeaderInfoType',
        TypeName      : 'Tasa de rendimiento',
        TypeNamePlural: 'Tasa de rendimiento',
        Title         : {
            $Type: 'UI.DataField',
            Value: ejercicio
        },
        Description   : {
            $Type: 'UI.DataField',
            Value: mes
        }
    },
    LineItem       : [
        {
            $Type: 'UI.DataField',
            Label: '{i18n>mes}',
            Value: mes,
        },
        {
            $Type: 'UI.DataField',
            Label: '{i18n>ejercicio}',
            Value: ejercicio,
        },
        {
            $Type: 'UI.DataField',
            Label: '{i18n>rendimiento}',
            Value: rendimiento,
        },
    ],
    SelectionFields: [
        mes,
        ejercicio,
        rendimiento
    ],
});

annotate service.TasaRendimiento with @(
    UI.FieldGroup #GeneratedGroup1: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Label: '{i18n>mes}',
                Value: mes,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>ejercicio}',
                Value: ejercicio,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>rendimiento}',
                Value: rendimiento,
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
