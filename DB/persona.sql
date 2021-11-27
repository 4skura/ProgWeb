/*revisa si existe la base de datos y la elimina*/
DROP SCHEMA IF EXISTS `fes_ico`

/*crea la base de datos*/
CREATE SCHEMA IF NOT EXISTS `fes_ico` DEFAULT CHARACTER utf8 COLLATE utf8_spanish2_ci;

/*usar la base de datos*/
USE `fes_ico`

/*crear una tabla*/
CREATE TABLE `Alunmo`(
    `nombre_usuario` TEXT NOT NULL,
    `carrera` TEXT NOT NULL,
    `num_cuenta` INT (10) NOT NULL,
    `direccion` TEXT NOT NULL,
    `telefono` VARCHAR (10) NOT NULL,
    `email` TEXT NOT NULL,
    `password` VARCHAR (8) NOT NULL,
    `fecha_registro` DATETIME NOT NULL DEFAULT current_timestamp,
    `permisos` INT (11) NOT NULL DEFAULT `1`
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*insertar un registro*/
INSERT INTO `Alumno` (`nombre_usuario`, `carrera`, `num_cuenta`, `direccion`, `telefono`, `email`, `password`, 'fecha_registro', 'permisos') 
values ('Luis Rios', 'ICO', '420120250', 'Sur 80 mz33 lt31', '5548068160', 'luisrios50@aragon.unam.mx', '12345678'),
('Bryan Lucero', 'ICO','316121138','Calle Garzuas MZ 43 LT 16','5581556415','bryandejesus2000@hotmail.com','12345678', '2021 11 03 18:57:01'),
('Alejandro Garcia', 'ICO', '317086735', 'Nogal 8 Dos Rios Huixquilucan', '5575200499', 'alejandrogarica35@aragon.unam.mx', '13245678);

/*definir la llave primaria*/
ALTER TABLE `Alumno`
    ADD PRIMARY KEY {`num_cuenta`}

