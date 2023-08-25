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
            Label: '{i18n>setID}',
            Value: setID,
        },
        {
            $Type: 'UI.DataField',
            Label: '{i18n>fechaEfectiva}',
            Value: fechaEfectiva,
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
                Label: '{i18n>setID}',
                Value: setID,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>fechaEfectiva}',
                Value: fechaEfectiva,
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
                Label: '{18n>createdAt}',
                Value: createdAt,
            },
            {
                $Type: 'UI.DataField',
                Label: '{18n>createdBy}',
                Value: createdBy,
            },
            {
                $Type: 'UI.DataField',
                Label: '{18n>modifiedAt}',
                Value: modifiedAt,
            },
            {
                $Type: 'UI.DataField',
                Label: '{18n>modifiedBy}',
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
