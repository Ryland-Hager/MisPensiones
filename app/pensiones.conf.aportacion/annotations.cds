using PensionesService as service from '../../srv/pensiones-service';

annotate service.Aportacion with @(
    UI : {
        HeaderInfo     : {
            $Type         : 'UI.HeaderInfoType',
            TypeName      : 'Aportacion',
            TypeNamePlural: 'Aportacion',
            Title         : {
                $Type: 'UI.DataField',
                Value: antiguedadInicial
            },
            Description   : {
                $Type: 'UI.DataField',
                Value: antiguedadFinal
            }
        },
        LineItem : [
        {
            $Type : 'UI.DataField',
            Label : '{i18n>antiguedadInicial}',
            Value : antiguedadInicial,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>antiguedadFinal}',
            Value : antiguedadFinal,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>porcentajeMax}',
            Value : porcentajeMax,
        },
        ],
    SelectionFields: [
            antiguedadInicial,
            antiguedadFinal,
            porcentajeMax
        ],
    }
    
    
    
);
annotate service.Aportacion with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : '{i18n>antiguedadInicial}',
                Value : antiguedadInicial,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>antiguedadFinal}',
                Value : antiguedadFinal,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>porcentajeMax}',
                Value : porcentajeMax,
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
