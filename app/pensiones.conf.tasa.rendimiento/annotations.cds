using PensionesService as service from '../../srv/pensiones-service';

annotate service.TasaRendimiento with @(
    UI : {

        HeaderInfo     : {
            $Type         : 'UI.HeaderInfoType',
            TypeName      : 'Aportacion',
            TypeNamePlural: 'Aportacion',
            Title         : {
                $Type: 'UI.DataField',
                Value: ejercicio
            },
            Description   : {
                $Type: 'UI.DataField',
                Value: mes
            }
        },
        LineItem : [
        {
            $Type : 'UI.DataField',
            Label : '{i18n>mes}',
            Value : mes,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>ejercicio}',
            Value : ejercicio,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>rendimiento}',
            Value : rendimiento,
        },
        ],
        SelectionFields: [
            mes,
            ejercicio,
            rendimiento
        ],
    }
);
annotate service.TasaRendimiento with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
        {
            $Type : 'UI.DataField',
            Label : '{i18n>mes}',
            Value : mes,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>ejercicio}',
            Value : ejercicio,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>rendimiento}',
            Value : rendimiento,
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
