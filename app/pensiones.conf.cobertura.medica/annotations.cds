using PensionesService as service from '../../srv/pensiones-service';

annotate service.CoberturaMedica with @(
    UI : {

        HeaderInfo     : {
            $Type         : 'UI.HeaderInfoType',
            TypeName      : 'Cobertura medica',
            TypeNamePlural: 'Cobertura medica',
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
            {
                $Type : 'UI.DataField',
                Value : modifiedAt,
            },
            {
                $Type : 'UI.DataField',
                Value : modifiedBy,
            },
        ],
        SelectionFields: [
            antiguedad,
            aportacionPesos,
            modifiedAt,
            modifiedBy
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
            {
                $Type : 'UI.DataField',
                Value : modifiedAt,
            },
            {
                $Type : 'UI.DataField',
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
annotate service.CoberturaMedica with {
    modifiedAt @Common.Label : 'Fecha modificación'
};
annotate service.CoberturaMedica with {
    modifiedBy @Common.Label : 'Usuario'
};
