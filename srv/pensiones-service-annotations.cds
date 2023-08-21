using PensionesService as service from './pensiones-service';

annotate service.Empleados @(Capabilities: {

    Insertable: false,
    Updatable : true,
    Deletable: false
});