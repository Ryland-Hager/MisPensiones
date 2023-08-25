using PensionesService as service from '../../srv/pensiones-service';

annotate service.CartaRecKeeAux2 with @(
    UI : {

        HeaderInfo     : {
            $Type         : 'UI.HeaderInfoType',
            TypeName      : 'Carta Recor Keeping Banco - Aportaciones Empleados',
            TypeNamePlural: 'Carta Recor Keeping Banco - Aportaciones Empleados',
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
    ],
    }
);
annotate service.CartaRecKeeAux2 with @(
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
            {
                $Type : 'UI.DataField',
                Label : '{18n>createdAt}',
                Value : createdAt,
            },
            {
                $Type : 'UI.DataField',
                Label : '{18n>createdBy}',
                Value : createdBy,
            },
            {
                $Type : 'UI.DataField',
                Label : '{18n>modifiedAt}',
                Value : modifiedAt,
            },
            {
                $Type : 'UI.DataField',
                Label : '{18n>modifiedBy}',
                Value : modifiedBy,
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
