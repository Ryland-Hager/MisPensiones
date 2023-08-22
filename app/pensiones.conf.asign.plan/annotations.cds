using PensionesService as service from '../../srv/pensiones-service';

annotate service.AsignPlanPensiones with @(
    UI : {

        HeaderInfo     : {
            $Type         : 'UI.HeaderInfoType',
            TypeName      : 'Aportacion',
            TypeNamePlural: 'Aportacion',
            Title         : {
                $Type: 'UI.DataField',
                Value: modulo
            },
            Description   : {
                $Type: 'UI.DataField',
                Value: procesoID
            }
        },
        LineItem : [
        {
            $Type : 'UI.DataField',
            Label : '{i18n>procesoID}',
            Value : procesoID,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>modulo}',
            Value : modulo,
        },
        ],
        SelectionFields: [
            procesoID,
            modulo
        ],
    }
);

annotate service.AsignPlanPensiones with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
            $Type : 'UI.DataField',
            Label : '{i18n>procesoID}',
            Value : procesoID,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>modulo}',
            Value : modulo,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>descripcion}',
            Value : descripcion,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>orden}',
            Value : orden,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>secciones}',
            Value : secciones,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>tipoElemento}',
            Value : tipoElemento,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>elemento}',
            Value : elemento,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>setID}',
            Value : setID,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>cuenta}',
            Value : cuenta,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>descripcion}',
            Value : descripcion,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>valorLargo}',
            Value : valorLargo,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>parametro1}',
            Value : parametro1,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>parametro2}',
            Value : parametro2,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>parametro3}',
            Value : parametro3,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>parametro4}',
            Value : parametro4,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>parametro5}',
            Value : parametro5,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>parametro6}',
            Value : parametro6,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>parametro7}',
            Value : parametro7,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>parametro8}',
            Value : parametro8,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>parametro9}',
            Value : parametro9,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>parametro10}',
            Value : parametro10,
        }
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
