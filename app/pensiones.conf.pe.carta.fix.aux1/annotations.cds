using PensionesService as service from '../../srv/pensiones-service';

annotate service.CartaFidAux1 with @(UI: {

    HeaderInfo: {
        $Type         : 'UI.HeaderInfoType',
        TypeName      : 'Carta Fiduciario - Destinatarios',
        TypeNamePlural: 'Carta Fiduciario - Destinatarios',
        Title         : {
            $Type: 'UI.DataField',
            Value: noCompania
        },
        Description   : {
            $Type: 'UI.DataField',
            Value: nombre
        }
    },
    LineItem  : [
        {
            $Type: 'UI.DataField',
            Label: '{i18n>noCompania}',
            Value: noCompania,
        },
        {
            $Type: 'UI.DataField',
            Label: '{i18n>compania}',
            Value: compania,
        },
        {
            $Type: 'UI.DataField',
            Label: '{i18n>nombre}',
            Value: nombre,
        },
        {
            $Type: 'UI.DataField',
            Label: '{i18n>cargo}',
            Value: cargo,
        },
    ],
});

annotate service.CartaFidAux1 with @(
    UI.FieldGroup #GeneratedGroup1: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Label: '{i18n>noCompania}',
                Value: noCompania,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>compania}',
                Value: compania,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>nombre}',
                Value: nombre,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>cargo}',
                Value: cargo,
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
