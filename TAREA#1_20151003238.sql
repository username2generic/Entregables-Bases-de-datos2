--CARLOS JOSE FERNANDEZ SANDOVAL - 20151003238
use Bases2_tarea1;

create table HOTEL (
	codigo nvarchar (15),
	nombre nvarchar(25),
	direccion nvarchar(40),
	constraint hotelPK primary key (codigo))


create table AEROLINEA (
	codigo nvarchar (15),
	descuento nvarchar(25),
	constraint aerolineaPK primary key (codigo))

create table BOLETO (
	codigo nvarchar (15),
	no_vuelo nvarchar(25),
	fecha date,
	destino nvarchar(40),
	constraint boletoPK primary key (codigo))

	create table CLIENTE (
	identidad nvarchar(15),
	primer_nombre nvarchar(15),
	segundo_nombre nvarchar(15),
	apellido_paterno nvarchar(15),
	apellido_materno nvarchar(15),
	telefono nvarchar(40),
	constraint clientePK primary key (identidad))

	--tabla muchos a muchos HOTEL Y CLIENTES
	create table RESERVA (   
	fecha_in date,
	fecha_out date,
	cantidad_personas int,
	identidad_cliente nvarchar(15),
	codigo_hotel nvarchar (15),
	constraint clienteFK foreign key (identidad_cliente) references CLIENTE (identidad),
	constraint hotelFK foreign key (codigo_hotel) references HOTEL (codigo))
	


--HOTEL
INSERT INTO HOTEL(codigo, nombre, direccion)
VALUES (1,'Hotel las hadas', 'Res.Las Hadas al final del anillo');
INSERT INTO HOTEL(codigo, nombre, direccion)
VALUES (2,'Hotel CARRION','Blv. Juan Pablo II ');

--AEROLINEA
INSERT INTO AEROLINEA(codigo,descuento)
VALUES ('CM Airlines','10%');
INSERT INTO AEROLINEA(codigo,descuento)
VALUES ('SOSA Airline','5%');

--BOLETO
INSERT INTO BOLETO(codigo,no_vuelo,fecha,destino)
VALUES (1,001,'2022-09-14','comayagua');
INSERT INTO BOLETO(codigo,no_vuelo,fecha,destino)
VALUES (2,002,'2022-09-12','roatan');


--CLIENTE
INSERT INTO CLIENTE(identidad,primer_nombre,segundo_nombre,apellido_paterno,apellido_materno,telefono)
VALUES (0801-1993-45863,'juan','mario','martinez','aguilar',78956340);
INSERT INTO CLIENTE(identidad,primer_nombre,segundo_nombre,apellido_paterno,apellido_materno,telefono)
VALUES (0801-1990-65889,'maria','jose','aguilar','mejia',88975598);

INSERT INTO RESERVA(fecha_in,fecha_out,cantidad_personas,identidad_cliente,codigo_hotel)
VALUES ('2022-09-12','2022-09-14',2,0801-1993-45863,1);
INSERT INTO RESERVA(fecha_in,fecha_out,cantidad_personas,identidad_cliente,codigo_hotel)
VALUES ('2022-09-13','2022-09-14',1,0801-1990-65889,1);

