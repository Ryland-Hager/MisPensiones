using PensionesService as service from '../../srv/pensiones-service';

annotate service.CatBenRet with @(UI: {

    HeaderInfo     : {
        $Type         : 'UI.HeaderInfoType',
        TypeName      : 'Catálogo de beneficios al retiro',
        TypeNamePlural: 'Catálogo de beneficios al retiro',
        Title         : {
            $Type: 'UI.DataField',
            Value: estado
        },
        Description   : {
            $Type: 'UI.DataField',
            Value: fechaEfectiva
        }
    },
    LineItem       : [
        {
            $Type: 'UI.DataField',
            Label: '{i18n>fechaEfectiva}',
            Value: fechaEfectiva,
        },
        {
            $Type: 'UI.DataField',
            Label: '{i18n>estado}',
            Value: estado,
        },
        {
            $Type: 'UI.DataField',
            Label: '{i18n>descripcion}',
            Value: descripcion,
        },
        {
            $Type: 'UI.DataField',
            Label: '{i18n>beneficiosRetiro}',
            Value: beneficiosRetiro,
        },
        {
            $Type: 'UI.DataField',
            Label: '{i18n>premisas}',
            Value: premisas,
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
    SelectionFields: [
        estado,
        fechaEfectiva,
        beneficiosRetiro
    ],
});

annotate service.CatBenRet with @(
    UI.FieldGroup #GeneratedGroup1: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Label: '{i18n>fechaEfectiva}',
                Value: fechaEfectiva,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>estado}',
                Value: estado,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>descripcion}',
                Value: descripcion,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>beneficiosRetiro}',
                Value: beneficiosRetiro,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>premisas}',
                Value: premisas,
            },
            {
                $Type : 'UI.DataField',
                Value : modifiedAt,
                Label : 'Fecha modificación',
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
