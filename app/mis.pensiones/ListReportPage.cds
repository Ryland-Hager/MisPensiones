using PensionesService as service from '../../srv/pensiones-service';

//Filters and Columns
annotate service.Empleados with @(
    UI                             : {
        HeaderInfo     : {
            $Type         : 'UI.HeaderInfoType',
            TypeName      : 'Empleado',
            TypeNamePlural: 'Empleados',
            Title         : {
                $Type: 'UI.DataField',
                Value: primerNombre
            },
            Description   : {
                $Type: 'UI.DataField',
                Value: apellidoMaterno
            }
        },
        Identification : [{Value: ID}, ],
        LineItem       : [
            {
                $Type: 'UI.DataField',
                Label: 'ID Empleado',
                Value: ID,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Nombres',
                Value: primerNombre,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Apellido Paterno',
                Value: apellidoPaterno,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Apellido Materno',
                Value: apellidoMaterno,
            },
            {
                $Type: 'UI.DataField',
                Label: 'ID Workday',
                Value: workdayID,
            },
        ],
        SelectionFields: [
            ID,
            primerNombre,
            apellidoPaterno,
            apellidoMaterno,
            workdayID
        ],
    },
    Capabilities.DeleteRestrictions: {Deletable: false}
);

//Filter Value Helps
annotate service.Empleados with {
    ID               @Common.ValueList: {
        $Type          : 'Common.ValueListType',
        Parameters     : [
            {
                $Type            : 'Common.ValueListParameterInOut',
                ValueListProperty: 'ID',
                LocalDataProperty: ID,
            },
            {
                $Type            : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty: 'primerNombre',
            },
            {
                $Type            : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty: 'apellidoPaterno',
            },
            {
                $Type            : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty: 'apellidoMaterno',
            },
            {
                $Type            : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty: 'workdayID',
            }
        ],
        CollectionPath : 'Empleados',
        SearchSupported: true,
        Label          : 'ID Empleado',
    };

    primerNombre     @Common.ValueList: {
        $Type          : 'Common.ValueListType',
        Parameters     : [
            {
                $Type            : 'Common.ValueListParameterInOut',
                ValueListProperty: 'ID',
                LocalDataProperty: ID,
            },
            {
                $Type            : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty: 'primerNombre',
            },
            {
                $Type            : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty: 'apellidoPaterno',
            },
            {
                $Type            : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty: 'apellidoMaterno',
            },
            {
                $Type            : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty: 'workdayID',
            }
        ],
        CollectionPath : 'Empleados',
        SearchSupported: true,
        Label          : 'Nombres',
    };

    apellidoPaterno @Common.ValueList: {
        $Type          : 'Common.ValueListType',
        Parameters     : [
            {
                $Type            : 'Common.ValueListParameterInOut',
                ValueListProperty: 'ID',
                LocalDataProperty: ID,
            },
            {
                $Type            : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty: 'primerNombre',
            },
            {
                $Type            : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty: 'apellidoPaterno',
            },
            {
                $Type            : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty: 'apellidoMaterno',
            },
            {
                $Type            : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty: 'workdayID',
            }
        ],
        CollectionPath : 'Empleados',
        SearchSupported: true,
        Label          : 'Apellido Paterno',
    };

    apellidoMaterno @Common.ValueList: {
        $Type          : 'Common.ValueListType',
        Parameters     : [
            {
                $Type            : 'Common.ValueListParameterInOut',
                ValueListProperty: 'ID',
                LocalDataProperty: ID,
            },
            {
                $Type            : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty: 'primerNombre',
            },
            {
                $Type            : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty: 'apellidoPaterno',
            },
            {
                $Type            : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty: 'apellidoMaterno',
            },
            {
                $Type            : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty: 'workdayID',
            }
        ],
        CollectionPath : 'Empleados',
        SearchSupported: true,
        Label          : 'Apellido Materno',
    };

    workdayID       @Common.ValueList: {
        $Type          : 'Common.ValueListType',
        Parameters     : [{
            $Type            : 'Common.ValueListParameterInOut',
            ValueListProperty: 'ID',
            LocalDataProperty: ID,
        }, 
        {
            $Type            : 'Common.ValueListParameterDisplayOnly',
            ValueListProperty: 'primerNombre',
        },
        {
            $Type            : 'Common.ValueListParameterDisplayOnly',
            ValueListProperty: 'apellidoPaterno',
        },
        {
            $Type            : 'Common.ValueListParameterDisplayOnly',
            ValueListProperty: 'apellidoMaterno',
        },
        {
            $Type            : 'Common.ValueListParameterDisplayOnly',
            ValueListProperty: 'workdayID',
        }
        ],
        CollectionPath : 'Empleados',
        SearchSupported: true,
        Label          : 'ID Workday',
    };

};
