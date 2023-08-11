using PensionesService as service from '../../srv/pensiones-service';

annotate service.Empleados with @(
    UI: {
        HeaderInfo  : {
            $Type : 'UI.HeaderInfoType',
            TypeName : 'Empleado',
            TypeNamePlural : 'Empleados',
            Title : {
                $Type : 'UI.DataField',
                Value : primerNombre
            },
            Description : {
                $Type : 'UI.DataField',
                Value : apellidoMaterno
            }
        },
        Identification  : [
            {Value: ID},
        ],
        LineItem : [
            {
                $Type : 'UI.DataField',
                Label : 'ID Empleado',
                Value : ID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Nombres',
                Value : primerNombre,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Apellido Paterno',
                Value : apellidoPaterno,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Apellido Materno',
                Value : apellidoMaterno,
            },
            {
                $Type : 'UI.DataField',
                Label : 'ID Workday',
                Value : workdayID,
            },
        ],
        SelectionFields : [
            ID,
            primerNombre,
            apellidoPaterno,
            apellidoMaterno,
            workdayID
        ],
    },
    Capabilities.DeleteRestrictions: {
        Deletable: false
    }
);