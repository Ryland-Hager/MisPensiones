using PensionesService as service from '../../srv/pensiones-service';

annotate service.AntiPorcAport with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : antiguedad,
        },
        {
            $Type : 'UI.DataField',
            Value : fechaEfectiva,
        },
        {
            $Type : 'UI.DataField',
            Value : aportacionMaximaEmpleado,
        },
        {
            $Type : 'UI.DataField',
            Value : aportacionVariableEmpresa,
        },
        {
            $Type : 'UI.DataField',
            Value : aportacionFijaEmpresa,
        },
    ]
);
annotate service.AntiPorcAport with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : fechaEfectiva,
            },
            {
                $Type : 'UI.DataField',
                Value : antiguedad,
            },
            {
                $Type : 'UI.DataField',
                Value : aportacionMaximaEmpleado,
            },
            {
                $Type : 'UI.DataField',
                Value : aportacionVariableEmpresa,
            },
            {
                $Type : 'UI.DataField',
                Value : aportacionFijaEmpresa,
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
