using PensionesService as service from '../../srv/pensiones-service';

annotate service.CoberturaMedica with @(
    UI : {

        HeaderInfo     : {
            $Type         : 'UI.HeaderInfoType',
            TypeName      : 'Aportacion',
            TypeNamePlural: 'Aportacion',
            Title         : {
                $Type: 'UI.DataField',
                Value: antiguedad
            },
            Description   : {
                $Type: 'UI.DataField',
                Value: aportacionPesos
            }
        },
        LineItem : [
        {
            $Type : 'UI.DataField',
            Label : '{i18n>antiguedad}',
            Value : antiguedad,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>aportacionPesos}',
            Value : aportacionPesos,
        },
        ],
        SelectionFields: [
            antiguedad,
            aportacionPesos
        ],
    }
);
annotate service.CoberturaMedica with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : '{i18n>antiguedad}',
                Value : antiguedad,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>aportacionPesos}',
                Value : aportacionPesos,
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
