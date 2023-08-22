using PensionesService as service from '../../srv/pensiones-service';

annotate service.AportacionEmpresa with @(
    UI : {
        HeaderInfo     : {
            $Type         : 'UI.HeaderInfoType',
            TypeName      : 'Aportacion',
            TypeNamePlural: 'Aportacion',
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
