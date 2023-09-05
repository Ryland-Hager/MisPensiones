using PensionesService as service from '../../srv/pensiones-service';

annotate service.CartaRecKeeFil with @(UI: {

    HeaderInfo: {
        $Type         : 'UI.HeaderInfoType',
        TypeName      : 'Carta Recor Keeping Filiales',
        TypeNamePlural: 'Carta Recor Keeping Filiales',
        Title         : {
            $Type: 'UI.DataField',
            Value: noCompania
        },
        Description   : {
            $Type: 'UI.DataField',
            Value: compania
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
            Label: '{i18n>logo}',
            Value: logo,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Fecha',
            Value: fecha,
        },
        {
            $Type: 'UI.DataField',
            Label: '{i18n>destinatario}',
            Value: destinatario,
        },
        {
            $Type: 'UI.DataField',
            Label: '{i18n>parrafo1}',
            Value: parrafo1,
        },
        {
            $Type: 'UI.DataField',
            Label: '{i18n>parrafo2}',
            Value: parrafo2,
        },
        {
            $Type: 'UI.DataField',
            Label: '{i18n>parrafo3}',
            Value: parrafo3,
        },
        {
            $Type: 'UI.DataField',
            Label: '{i18n>parrafo4}',
            Value: parrafo4,
        },
        {
            $Type: 'UI.DataField',
            Label: '{i18n>parrafo5}',
            Value: parrafo5,
        },
        {
            $Type: 'UI.DataField',
            Label: '{i18n>parrafo6}',
            Value: parrafo6,
        },
        {
            $Type: 'UI.DataField',
            Label: '{i18n>firma}',
            Value: firma,
        },
        {
            $Type: 'UI.DataField',
            Label: '{i18n>lineaFirma}',
            Value: lineaFirma,
        },
        {
            $Type: 'UI.DataField',
            Label: '{i18n>remitente}',
            Value: remitente,
        },
        {
            $Type: 'UI.DataField',
            Label: '{i18n>puesto}',
            Value: puesto,
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
});

annotate service.CartaRecKeeFil with @(
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
                Label: '{i18n>logo}',
                Value: logo,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Fecha',
                Value: fecha,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>destinatario}',
                Value: destinatario,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>parrafo1}',
                Value: parrafo1,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>parrafo2}',
                Value: parrafo2,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>parrafo3}',
                Value: parrafo3,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>parrafo4}',
                Value: parrafo4,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>parrafo5}',
                Value: parrafo5,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>parrafo6}',
                Value: parrafo6,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>firma}',
                Value: firma,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>lineaFirma}',
                Value: lineaFirma,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>remitente}',
                Value: remitente,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>puesto}',
                Value: puesto,
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
