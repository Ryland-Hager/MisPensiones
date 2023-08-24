using PensionesService as service from '../../srv/pensiones-service';

annotate service.CartaFidAux3 with @(
    UI : {
        HeaderInfo     : {
            $Type         : 'UI.HeaderInfoType',
            TypeName      : 'Carta Fiduciario - Aportaciones Empleados',
            TypeNamePlural: 'Carta Fiduciario - Aportaciones Empleados',
            Title         : {
                $Type: 'UI.DataField',
                Value: fondo
            },
            Description   : {
                $Type: 'UI.DataField',
                Value: contracto
            }
        },
        LineItem : [
        {
            $Type : 'UI.DataField',
            Label : '{i18n>fondo}',
            Value : fondo,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>contracto}',
            Value : contracto,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>fideicomiso}',
            Value : fideicomiso,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>chequeraPropia}',
            Value : chequeraPropia,
        },
    ]
    }
);
annotate service.CartaFidAux3 with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : '{i18n>fondo}',
                Value : fondo,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>contracto}',
                Value : contracto,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>fideicomiso}',
                Value : fideicomiso,
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
