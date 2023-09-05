using PensionesService as service from '../../srv/pensiones-service';

annotate service.MotivosBajas with @(UI: {

    HeaderInfo     : {
        $Type         : 'UI.HeaderInfoType',
        TypeName      : 'Motivo de bajas',
        TypeNamePlural: 'Motivo de bajas',
        Title         : {
            $Type: 'UI.DataField',
            Value: motivoGlobal
        },
        Description   : {
            $Type: 'UI.DataField',
            Value: locales
        }
    },
    LineItem       : [
        {
            $Type: 'UI.DataField',
            Label: '{i18n>motivoGlobal}',
            Value: motivoGlobal,
        },
        {
            $Type: 'UI.DataField',
            Label: '{i18n>locales}',
            Value: locales,
        },
        {
            $Type: 'UI.DataField',
            Label: '{i18n>porcentaje}',
            Value: porcentaje,
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
        locales,
        motivoGlobal,
        porcentaje
    ],
});

annotate service.MotivosBajas with @(
    UI.FieldGroup #GeneratedGroup1: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Label: '{i18n>motivoGlobal}',
                Value: motivoGlobal,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>locales}',
                Value: locales,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>porcentaje}',
                Value: porcentaje,
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
