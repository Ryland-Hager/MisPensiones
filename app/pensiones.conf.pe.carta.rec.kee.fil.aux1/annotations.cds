using PensionesService as service from '../../srv/pensiones-service';

annotate service.CartaRecKeeFilAux1 with @(
    UI : {

        HeaderInfo     : {
            $Type         : 'UI.HeaderInfoType',
            TypeName      : 'Carta Recor Keeping Filiales',
            TypeNamePlural: 'Carta Recor Keeping Filiales',
            Title         : {
                $Type: 'UI.DataField',
                Value: noCompania
            },
            Description   : {
                $Type: 'UI.DataField',
                Value: nombre
            }
        },
        LineItem : [
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
    }
);
annotate service.CartaRecKeeFilAux1 with @(
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
