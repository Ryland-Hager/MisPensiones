using PensionesService as service from '../../srv/pensiones-service';

annotate service.CartaFidAux3 with @(
    UI : {
        HeaderInfo     : {
            $Type         : 'UI.HeaderInfoType',
            TypeName      : 'Aportacion',
            TypeNamePlural: 'Aportacion',
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
            Label : 'fondo',
            Value : fondo,
        },
        {
            $Type : 'UI.DataField',
            Label : 'contracto',
            Value : contracto,
        },
        {
            $Type : 'UI.DataField',
            Label : 'fideicomiso',
            Value : fideicomiso,
        },
        {
            $Type : 'UI.DataField',
            Label : 'chequeraPropia',
            Value : chequeraPropia,
        },
    ]
    }
);
annotate service.CartaFidAux3 with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'fondo',
                Value : fondo,
            },
            {
                $Type : 'UI.DataField',
                Label : 'contracto',
                Value : contracto,
            },
            {
                $Type : 'UI.DataField',
                Label : 'fideicomiso',
                Value : fideicomiso,
            },
            {
                $Type : 'UI.DataField',
                Label : 'chequeraPropia',
                Value : chequeraPropia,
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
