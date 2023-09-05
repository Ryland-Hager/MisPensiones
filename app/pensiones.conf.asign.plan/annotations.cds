using PensionesService as service from '../../srv/pensiones-service';

annotate service.AsignPlanPensiones with @(UI: {

    HeaderInfo     : {
        $Type         : 'UI.HeaderInfoType',
        TypeName      : 'Asignación Plan de Pensiones',
        TypeNamePlural: 'Asignación Plan de Pensiones',
        Title         : {
            $Type: 'UI.DataField',
            Value: modulo
        },
        Description   : {
            $Type: 'UI.DataField',
            Value: procesoID
        }
    },
    LineItem       : [
        {
            $Type: 'UI.DataField',
            Label: 'Módulo',
            Value: modulo,
        },
        {
            $Type: 'UI.DataField',
            Label: 'ID Proceso',
            Value: procesoID,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Descripción',
            Value: descripcion,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Orden',
            Value: orden,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Secciones',
            Value: secciones,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Tipo de Elemento',
            Value: tipoElemento,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Elemento',
            Value: elemento,
        },
        {
            $Type: 'UI.DataField',
            Label: 'ID set',
            Value: setID,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Cuenta',
            Value: cuenta,
        },
        {
            $Type : 'UI.DataField',
            Label: 'Descripción',
            Value : descripcion2,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Valor Largo',
            Value: valorLargo,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Páramentro 1',
            Value: parametro1,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Páramentro 2',
            Value: parametro2,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Páramentro 3',
            Value: parametro3,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Páramentro 4',
            Value: parametro4,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Páramentro 5',
            Value: parametro5,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Páramentro 6',
            Value: parametro6,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Páramentro 7',
            Value: parametro7,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Páramentro 8',
            Value: parametro8,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Páramentro 9',
            Value: parametro9,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Páramentro 10',
            Value: parametro10,
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
            Value : createdAt,
            Label : 'createdAt',
        },
        {
            $Type : 'UI.DataField',
            Value : createdBy,
        }
    ],
    SelectionFields: [
        procesoID,
        modulo
    ],
});

annotate service.AsignPlanPensiones with @(
    UI.FieldGroup #GeneratedGroup1: {
        $Type: 'UI.FieldGroupType',
        Data : [
        {
            $Type: 'UI.DataField',
            Label: 'Módulo',
            Value: modulo,
        },
        {
            $Type: 'UI.DataField',
            Label: 'ID Proceso',
            Value: procesoID,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Descripción',
            Value: descripcion,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Orden',
            Value: orden,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Secciones',
            Value: secciones,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Tipo de Elemento',
            Value: tipoElemento,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Elemento',
            Value: elemento,
        },
        {
            $Type: 'UI.DataField',
            Label: 'ID set',
            Value: setID,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Cuenta',
            Value: cuenta,
        },
        {
            $Type : 'UI.DataField',
            Label: 'Descripción',
            Value : descripcion2,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Valor Largo',
            Value: valorLargo,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Páramentro 1',
            Value: parametro1,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Páramentro 2',
            Value: parametro2,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Páramentro 3',
            Value: parametro3,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Páramentro 4',
            Value: parametro4,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Páramentro 5',
            Value: parametro5,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Páramentro 6',
            Value: parametro6,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Páramentro 7',
            Value: parametro7,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Páramentro 8',
            Value: parametro8,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Páramentro 9',
            Value: parametro9,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Páramentro 10',
            Value: parametro10,
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
        }
        ],
    },
    UI.Facets                     : [{
        $Type : 'UI.ReferenceFacet',
        ID    : 'GeneratedFacet1',
        Label : 'General Information',
        Target: '@UI.FieldGroup#GeneratedGroup1',
    }, ]
);
