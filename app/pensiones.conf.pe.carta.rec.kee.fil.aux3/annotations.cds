using PensionesService as service from '../../srv/pensiones-service';

annotate service.CartaRecKeeFilAux3 with @(
    UI : {

        HeaderInfo     : {
            $Type         : 'UI.HeaderInfoType',
            TypeName      : 'Carta Recor Keeping Filiales - Aportaciones Empresas',
            TypeNamePlural: 'Carta Recor Keeping Filiales - Aportaciones Empresas',
            Title         : {
                $Type: 'UI.DataField',
                Value: noCompania
            },
            Description   : {
                $Type: 'UI.DataField',
                Value: compania
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
            Label : '{i18n>aportacion}',
            Value : aportacion,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>fondo}',
            Value : fondo,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>contrato}',
            Value : contrato,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>chequeraPropia}',
            Value : chequeraPropia,
        },
        ],
    }
);
annotate service.CartaRecKeeFilAux3 with @(
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
            Label : '{i18n>aportacion}',
            Value : aportacion,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>fondo}',
            Value : fondo,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>contrato}',
            Value : contrato,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>chequeraPropia}',
            Value : chequeraPropia,
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