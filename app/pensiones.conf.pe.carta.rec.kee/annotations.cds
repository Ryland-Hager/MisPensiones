using PensionesService as service from '../../srv/pensiones-service';

annotate service.CartaRecKee with @(
    UI : {

        HeaderInfo     : {
            $Type         : 'UI.HeaderInfoType',
            TypeName      : 'Carta Recor Keeping Banco',
            TypeNamePlural: 'Carta Recor Keeping Banco',
            Title         : {
                $Type: 'UI.DataField',
                Value: compania
            },
            Description   : {
                $Type: 'UI.DataField',
                Value: noCompania
            }
        },
        LineItem : [
        {
            $Type : 'UI.DataField',
            Label : '{i18n>antiguedadInicial}',
            Value : compania,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>antiguedadInicial}',
            Value : noCompania,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>antiguedadInicial}',
            Value : logo,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>antiguedadInicial}',
            Value : fecha,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>antiguedadInicial}',
            Value : destinatario,
        },
        ],
    }
);
annotate service.CartaRecKee with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : '{i18n>noCompania}',
                Value : noCompania,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>compania}',
                Value : compania,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>logo}',
                Value : logo,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>fecha}',
                Value : fecha,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>destinatario}',
                Value : destinatario,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>parrafo1}',
                Value : parrafo1,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>parrafo2}',
                Value : parrafo2,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>parrafo3}',
                Value : parrafo3,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>parrafo4}',
                Value : parrafo4,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>parrafo5}',
                Value : parrafo5,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>parrafo6}',
                Value : parrafo6,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>firma}',
                Value : firma,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>lineaFirma}',
                Value : lineaFirma,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>remitente}',
                Value : remitente,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>puesto}',
                Value : puesto,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
    ]
);
