using PensionesService as service from '../../srv/pensiones-service';

annotate service.MotivosBajas with @(
    UI : {

        HeaderInfo     : {
            $Type         : 'UI.HeaderInfoType',
            TypeName      : 'Motivo de bajas',
            TypeNamePlural: 'Motivo de bajas',
            Title         : {
                $Type: 'UI.DataField',
                Value: motivoGlobal
            },
            Description   : {
                $Type: 'UI.DataField',
                Value: locales
            }
        },
        LineItem : [
        {
            $Type : 'UI.DataField',
            Label : '{i18n>locales}',
            Value : locales,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>motivoGlobal}',
            Value : motivoGlobal,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>porcentaje}',
            Value : porcentaje,
        },
        ],
        SelectionFields: [
            locales,
            motivoGlobal,
            porcentaje
        ],
    }
);
annotate service.MotivosBajas with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
            $Type : 'UI.DataField',
            Label : '{i18n>locales}',
            Value : locales,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>motivoGlobal}',
            Value : motivoGlobal,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>porcentaje}',
            Value : porcentaje,
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
