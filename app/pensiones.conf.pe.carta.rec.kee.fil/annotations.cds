using PensionesService as service from '../../srv/pensiones-service';

annotate service.CartaRecKeeFil with @(
    UI.LineItem : [
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
            Label : 'logo',
            Value : logo,
        },
        {
            $Type : 'UI.DataField',
            Label : 'fecha',
            Value : fecha,
        },
        {
            $Type : 'UI.DataField',
            Label : 'destinatario',
            Value : destinatario,
        },
    ]
);
annotate service.CartaRecKeeFil with @(
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
                Label : 'logo',
                Value : logo,
            },
            {
                $Type : 'UI.DataField',
                Label : 'fecha',
                Value : fecha,
            },
            {
                $Type : 'UI.DataField',
                Label : 'destinatario',
                Value : destinatario,
            },
            {
                $Type : 'UI.DataField',
                Label : 'parrafo1',
                Value : parrafo1,
            },
            {
                $Type : 'UI.DataField',
                Label : 'parrafo2',
                Value : parrafo2,
            },
            {
                $Type : 'UI.DataField',
                Label : 'parrafo3',
                Value : parrafo3,
            },
            {
                $Type : 'UI.DataField',
                Label : 'parrafo4',
                Value : parrafo4,
            },
            {
                $Type : 'UI.DataField',
                Label : 'parrafo5',
                Value : parrafo5,
            },
            {
                $Type : 'UI.DataField',
                Label : 'parrafo6',
                Value : parrafo6,
            },
            {
                $Type : 'UI.DataField',
                Label : 'firma',
                Value : firma,
            },
            {
                $Type : 'UI.DataField',
                Label : 'lineaFirma',
                Value : lineaFirma,
            },
            {
                $Type : 'UI.DataField',
                Label : 'remitente',
                Value : remitente,
            },
            {
                $Type : 'UI.DataField',
                Label : 'puesto',
                Value : puesto,
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
