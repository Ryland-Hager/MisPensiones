using PensionesService as service from '../../srv/pensiones-service';

annotate service.AportacionEmpresa with @(
    UI : {
        HeaderInfo     : {
            $Type         : 'UI.HeaderInfoType',
            TypeName      : 'Aportación Empresa, derechos adquiridos',
            TypeNamePlural: 'Aportación Empresa, derechos adquiridos',
            Title         : {
                $Type: 'UI.DataField',
                Value: anosServicio
            },
            Description   : {
                $Type: 'UI.DataField',
                Value: adquisicionDerechos
            }
        },
        LineItem : [
        {
            $Type : 'UI.DataField',
            Label : '{i18n>anosServicio}',
            Value : anosServicio,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>adquisicionDerechos}',
            Value : adquisicionDerechos,
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
            {
                $Type : 'UI.DataField',
                Value : createdBy,
            },
            {
                $Type : 'UI.DataField',
                Value : createdAt,
                Label : 'createdAt',
            },
        ],
        SelectionFields: [
            anosServicio,
            adquisicionDerechos
        ],
    }
);
annotate service.AportacionEmpresa with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : '{i18n>anosServicio}',
                Value : anosServicio,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>adquisicionDerechos}',
                Value : adquisicionDerechos,
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
