using PensionesService as service from '../../srv/pensiones-service';

annotate service.CatDerAdquiridos with @(UI: {

    HeaderInfo     : {
        $Type         : 'UI.HeaderInfoType',
        TypeName      : 'Catálogo de derechos adquiridos',
        TypeNamePlural: 'Catálogo de derechos adquiridos',
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
            Label: '{i18n>bajaVoluntaria}',
            Value: bajaVoluntaria,
        },
        {
            $Type: 'UI.DataField',
            Label: '{i18n>bajaInvoluntaria}',
            Value: bajaInvoluntaria,
        },
        {
            $Type: 'UI.DataField',
            Label: '{i18n>porcentajePlanPensiones}',
            Value: porcentajePlanPensiones,
        },
        {
            $Type: 'UI.DataField',
            Label: '{i18n>porcentajePlanTOP}',
            Value: porcentajePlanTOP,
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

annotate service.CatDerAdquiridos with @(
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
                Label: '{i18n>bajaVoluntaria}',
                Value: bajaVoluntaria,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>bajaInvoluntaria}',
                Value: bajaInvoluntaria,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>porcentajePlanPensiones}',
                Value: porcentajePlanPensiones,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>porcentajePlanTOP}',
                Value: porcentajePlanTOP,
            },
            {
                $Type : 'UI.DataField',
                Value : modifiedAt,
                Label : 'Fecha modificación',
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
