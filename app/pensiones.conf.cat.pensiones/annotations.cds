using PensionesService as service from '../../srv/pensiones-service';

annotate service.CatPensiones with @(
    UI : {

        HeaderInfo     : {
            $Type         : 'UI.HeaderInfoType',
            TypeName      : 'Catálogo de pensiones',
            TypeNamePlural: 'Catálogo de pensiones',
            Title         : {
                $Type: 'UI.DataField',
                Value: fechaEfectiva
            },
            Description   : {
                $Type: 'UI.DataField',
                Value: estado
            }
        },
        LineItem : [
        {
            $Type : 'UI.DataField',
            Label : '{i18n>estado}',
            Value : estado,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>fechaEfectiva}',
            Value : fechaEfectiva,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>horizonteInversion}',
            Value : horizonteInversion,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>clavePizarra}',
            Value : clavePizarra,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>razonSocial}',
            Value : razonSocial,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>rentaFija}',
            Value : rentaFija,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>rentaVariable}',
            Value : rentaVariable,
        },
        ],
        SelectionFields: [
            estado,
            fechaEfectiva,
            horizonteInversion
        ],
    }
);
annotate service.CatPensiones with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
            $Type : 'UI.DataField',
            Label : '{i18n>estado}',
            Value : estado,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>fechaEfectiva}',
            Value : fechaEfectiva,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>descripcion}',
            Value : descripcion,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>descripcionCorta}',
            Value : descripcionCorta,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>horizonteInversion}',
            Value : horizonteInversion,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>clavePizarra}',
            Value : clavePizarra,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>razonSocial}',
            Value : razonSocial,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>rentaFija}',
            Value : rentaFija,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>rentaVariable}',
            Value : rentaVariable,
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
