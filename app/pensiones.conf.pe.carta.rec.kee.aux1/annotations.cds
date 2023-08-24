using PensionesService as service from '../../srv/pensiones-service';

annotate service.CartaRecKeeAux1 with @(
    UI : {

        HeaderInfo     : {
            $Type         : 'UI.HeaderInfoType',
            TypeName      : 'Carta Recor Keeping Banco - Destinatarios',
            TypeNamePlural: 'Carta Recor Keeping Banco - Destinatarios',
            Title         : {
                $Type: 'UI.DataField',
                Value: nombre
            },
            Description   : {
                $Type: 'UI.DataField',
                Value: compania
            }
        },
        LineItem : [
        {
            $Type : 'UI.DataField',
            Label : '{i18n>nombre}',
            Value : nombre,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>compania}',
            Value : compania,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>noCompania}',
            Value : noCompania,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>cargo}',
            Value : cargo,
        },
        ],
    }
);
annotate service.CartaRecKeeAux1 with @(
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
                Label : '{i18n>nombre}',
                Value : nombre,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>cargo}',
                Value : cargo,
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
