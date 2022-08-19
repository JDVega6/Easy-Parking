INSERT INTO empleado (Nombre,Apellido,Telefono,Contraseña,Usuario)
VALUES ('JUAN','VEGA',3112335669,'123456','JuanV');

INSERT INTO vehiculos (Empleado_idEmpleado,TipoVehiculo,Placa,HoraEntrada,Estado)
VALUES (1,'C','XTZ458',current_timestamp(),'1');

UPDATE vehiculos SET HoraSalida = current_timestamp(), Estado = 0 WHERE idVehiculo = 1;

SELECT * FROM vehiculos;