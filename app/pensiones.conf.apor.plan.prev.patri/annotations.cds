using PensionesService as service from '../../srv/pensiones-service';

annotate service.AporPlanPrevPatri with @(UI: {

    HeaderInfo     : {
        $Type         : 'UI.HeaderInfoType',
        TypeName      : 'Aportación plan de previsión patrimonial o plan TOP',
        TypeNamePlural: 'Aportación plan de previsión patrimonial o plan TOP',
        Title         : {
            $Type: 'UI.DataField',
            Value: setID
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
            Label: '{i18n>setID}',
            Value: setID,
        },
        {
            $Type: 'UI.DataField',
            Label: '{i18n>codigoNivel}',
            Value: codigoNivel,
        },
        {
            $Type: 'UI.DataField',
            Label: '{i18n>descripcion}',
            Value: descripcion,
        },
        {
            $Type: 'UI.DataField',
            Label: '{i18n>antiguedad}',
            Value: antiguedad,
        },
        {
            $Type: 'UI.DataField',
            Label: '{i18n>porcentajeAportacion}',
            Value: porcentajeAportacion,
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
        setID,
        fechaEfectiva,
        codigoNivel
    ],
});

annotate service.AporPlanPrevPatri with @(
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
                Label: '{i18n>setID}',
                Value: setID,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>codigoNivel}',
                Value: codigoNivel,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>descripcion}',
                Value: descripcion,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>antiguedad}',
                Value: antiguedad,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>porcentajeAportacion}',
                Value: porcentajeAportacion,
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
