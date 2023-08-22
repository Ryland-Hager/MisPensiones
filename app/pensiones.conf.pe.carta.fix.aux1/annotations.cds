using PensionesService as service from '../../srv/pensiones-service';

annotate service.CartaFidAux1 with @(
    UI : {

        HeaderInfo     : {
            $Type         : 'UI.HeaderInfoType',
            TypeName      : 'Aportacion',
            TypeNamePlural: 'Aportacion',
            Title         : {
                $Type: 'UI.DataField',
                Value: noCompania
            },
            Description   : {
                $Type: 'UI.DataField',
                Value: nombre
            }
        },
        LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'nombre',
            Value : nombre,
        },
        {
            $Type : 'UI.DataField',
            Label : 'noCompania',
            Value : noCompania,
        },
        {
            $Type : 'UI.DataField',
            Label : 'compania',
            Value : compania,
        },
    ],
    }
);
annotate service.CartaFidAux1 with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'noCompania',
                Value : noCompania,
            },
            {
                $Type : 'UI.DataField',
                Label : 'compania',
                Value : compania,
            },
            {
                $Type : 'UI.DataField',
                Label : 'nombre',
                Value : nombre,
            },
            {
                $Type : 'UI.DataField',
                Label : 'cargo',
                Value : cargo,
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
