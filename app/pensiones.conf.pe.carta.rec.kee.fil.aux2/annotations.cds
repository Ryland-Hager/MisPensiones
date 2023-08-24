using PensionesService as service from '../../srv/pensiones-service';

annotate service.CartaRecKeeFilAux2 with @(
    UI : {

        HeaderInfo     : {
            $Type         : 'UI.HeaderInfoType',
            TypeName      : 'Carta Recor Keeping Filiales - Ejecutivos de cuenta',
            TypeNamePlural: 'Carta Recor Keeping Filiales - Ejecutivos de cuenta',
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
        }
        ],
    }
);
annotate service.CartaRecKeeFilAux2 with @(
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
        }
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