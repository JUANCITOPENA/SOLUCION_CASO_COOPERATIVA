
--CREAR UNA BASE DE DATOS: DBCASO_COOPERATIVA
--BASE DE DATOS: DBCASO_COOPERATIVA
--Puede ser una abreviatura: DB_COOPERATIVA

CREATE DATABASE SOLUCION_CASO_COOPERATIVA;
GO

--USAR ESA BASE DE DATOS:
USE SOLUCION_CASO_COOPERATIVA;
GO

--CREAMOS LA TABLA TIPO DE AHORRO:
CREATE TABLE TIPO_AHORRO(
id_tipo_Ahorro  int identity(1,1) primary key,
TIPO_AHORRO varchar(30) not null,
);

--CREAMOS LA TABLA TIPO DE SOCIO:
CREATE TABLE TIPO_SOCIO(
id_tipo_socio  int identity(1,1) primary key,
TIPO_SOCIO varchar(15) not null,
);

--CREAMOS LA TABLA CIUDAD:
CREATE TABLE REGION(
id_region int identity(1,1) primary key,
nombre_region varchar(20) not null,
);

--CREAMOS LA TABLA CIUDAD:
CREATE TABLE CIUDAD(
id_ciudad int identity(1,1) primary key,
nombre_ciudad varchar(30) not null,
id_region int not null,
id_pais int not null,
FOREIGN KEY (id_region) REFERENCES REGION (id_region),
);

--CREAMOS LA TABLA CIUDAD:
CREATE TABLE PAIS(
id_pais int identity(1,1) primary key,
nombre_pais varchar(20) not null,
);

--CREAMOS LA TABLA DE GENERO
CREATE TABLE GENERO
(
id_genero int PRIMARY key identity,
genero varchar(10) NOT NULL,
)
GO
--HACEMOS UN SELECT A LA TABLA:

SELECT * FROM GENERO

--CREAMOS LA TABLA SOCIO:

create table SOCIO (
id_socio inT primary key,
nombre_socio varchar (30) not null,
apellido_socio varchar(50) not null,
fecha_nacimiento date,
id_genero int not null, 
direccion varchar(100) not null,
lugar_de_trabajo varchar(100) not null,
telefono_de_trabajo varchar(15) not null,
id_ciudad int not null,
telefono_residencial varchar(15) not null,
telefono_movil varchar(15) not null,
correo_electronico varchar(30) not null,
fecha_de_ingreso date not null,
id_tipo_socio int not null,--2
id_pais int not null,
 FOREIGN KEY (id_genero) REFERENCES GENERO (id_genero),
 FOREIGN KEY (id_ciudad) REFERENCES CIUDAD (id_ciudad),
 FOREIGN KEY (id_tipo_socio) REFERENCES TIPO_SOCIO (id_tipo_socio),
 FOREIGN KEY (id_pais) REFERENCES PAIS (id_pais),
);
GO

--SELECCIONAMOS LA TABLA SOCIO PARA VER SU ESTRUCTURA E INSERTAR DATOS

SELECT * FROM SOCIO
select * from TIPO_AHORRO

--CREAMOS LA TABLA TIPO DE AHORRO:
CREATE TABLE AHORRO(
 id_Ahorro int primary key,
 fecha_ahorro date not null,
 Monto_ahoro float not null, --5.5 
 id_tipo_Ahorro  int,
 id_socio int,
 FOREIGN KEY (id_tipo_Ahorro) REFERENCES TIPO_AHORRO (id_tipo_Ahorro),
 FOREIGN KEY (id_socio) REFERENCES SOCIO (id_socio)
);

 SELECT * FROM TIPO_AHORRO


 --Insertamos algunos registros a la tabla region:

INSERT INTO TIPO_AHORRO (TIPO_AHORRO) VALUES('APORTACIONES RD$');
INSERT INTO TIPO_AHORRO (TIPO_AHORRO) VALUES('INVERSION RD$');
INSERT INTO TIPO_AHORRO (TIPO_AHORRO) VALUES('AHORRO RETIRABLE RD$');
INSERT INTO TIPO_AHORRO (TIPO_AHORRO) VALUES('NAVICOOP RD$');
INSERT INTO TIPO_AHORRO (TIPO_AHORRO) VALUES('TURICOOP RD$');
INSERT INTO TIPO_AHORRO (TIPO_AHORRO) VALUES('AHORRO FUNERARIO RD$');

--seleccionamos la tabla para ver como ha quedado:

select * from TIPO_AHORRO

 --Insertamos algunos registros a la tabla region:

INSERT INTO TIPO_SOCIO (TIPO_SOCIO) VALUES('NUEVO SOCIO')
INSERT INTO TIPO_SOCIO (TIPO_SOCIO) VALUES('SOCIO VIEJO')
INSERT INTO TIPO_SOCIO (TIPO_SOCIO) VALUES('RETIIRADO')

--seleccionamos la tabla para ver como ha quedado:

select * from TIPO_SOCIO


--Creamos la tabla SEXO


--Insertamos algunos registros:

INSERT INTO GENERO VALUES ('Masculino')
INSERT INTO GENERO VALUES ('Femenino')
INSERT INTO GENERO VALUES ('NoDefinido')

 --seleccionamos la tabla para si los registros estan correctos:
 
 select * from GENERO 
 select * from REGION 
 
 --Insertamos algunos registros a la tabla region:

INSERT INTO REGION(nombre_region)VALUES('Region Cibao RD');--Todo el Cibao y el Norte del Pais
INSERT INTO REGION(nombre_region)VALUES('Region Sur RD');--Toda Zona Sur del Pais
INSERT INTO REGION(nombre_region)VALUES('Region Este RD');--Toda la Parte Sureste del Pais Incluyendo y Santo Domingo

--REGIONES DE ESTADOS UNIDOS:
INSERT INTO REGION(nombre_region)VALUES('Atlántico Medio USA');
INSERT INTO REGION(nombre_region)VALUES('Atlántico Sur USA');
INSERT INTO REGION(nombre_region)VALUES('Nueva Inglaterra USA');

--REGIONES DE ESTADOS ESPAÑA:
INSERT INTO REGION(nombre_region)VALUES('EXTREMADURA');
INSERT INTO REGION(nombre_region)VALUES('CASTILLA DE LEON');
INSERT INTO REGION(nombre_region)VALUES('MADRID');

--seleccionamos la tabla para ver como ha quedado:

select * from region

--Insertamos algunos registros a la tabla CUIDAD:

--REGION DEL CIBAO-SUR-NORDESTE-NORTE:

select * from CIUDAD
select * from REGION
select * from PAIS

--REGION DEL CIBAO-NORTE:

INSERT INTO ciudad (nombre_ciudad,id_region, id_pais) VALUES('Concepción de La Vega',1,1);
INSERT INTO ciudad (nombre_ciudad,id_region, id_pais) VALUES('Moca',1,1);
INSERT INTO ciudad (nombre_ciudad,id_region, id_pais) VALUES('San Felipe de Puerto Plata',1,1);
INSERT INTO ciudad (nombre_ciudad,id_region, id_pais) VALUES('San Francisco de Macorós',1,1);
INSERT INTO ciudad (nombre_ciudad,id_region, id_pais) VALUES('Santiago de los Caballeros',1,1);
INSERT INTO ciudad (nombre_ciudad,id_region, id_pais) VALUES('Bonao',1,1);
INSERT INTO ciudad (nombre_ciudad,id_region, id_pais) VALUES('Valverde',1,1);
INSERT INTO ciudad (nombre_ciudad,id_region, id_pais) VALUES('Monte Cristi',1,1);
INSERT INTO ciudad (nombre_ciudad,id_region, id_pais) VALUES('Samaná',1,1);
INSERT INTO ciudad (nombre_ciudad,id_region, id_pais) VALUES('Puerto Plata',1,1);
INSERT INTO ciudad (nombre_ciudad,id_region, id_pais) VALUES('Dajabón',1,1);
INSERT INTO ciudad (nombre_ciudad,id_region, id_pais) VALUES('Salcedo',1,1);
INSERT INTO ciudad (nombre_ciudad,id_region, id_pais) VALUES('Nagua',1,1);
INSERT INTO ciudad (nombre_ciudad,id_region, id_pais) VALUES('Cotuí',1,1);

--REGION DEL SUR:

INSERT INTO ciudad (nombre_ciudad,id_region, id_pais)VALUES('Villa Altagracia',2,1);
INSERT INTO ciudad (nombre_ciudad,id_region, id_pais)VALUES('San Cristóbal',2,1);
INSERT INTO ciudad (nombre_ciudad,id_region, id_pais)VALUES('Indepencia',2,1);
INSERT INTO ciudad (nombre_ciudad,id_region, id_pais)VALUES('Pedernales ',2,1);
INSERT INTO ciudad (nombre_ciudad,id_region, id_pais)VALUES('San Jose de ocoa',2,1);
INSERT INTO ciudad (nombre_ciudad,id_region, id_pais)VALUES('Baní',2,1);
INSERT INTO ciudad (nombre_ciudad,id_region, id_pais)VALUES('Azua',2,1);
INSERT INTO ciudad (nombre_ciudad,id_region, id_pais)VALUES('Bajos de Haina',2,1);
INSERT INTO ciudad (nombre_ciudad,id_region, id_pais)VALUES('Santa Cruz de Barahona',2,1);
INSERT INTO ciudad (nombre_ciudad,id_region, id_pais)VALUES('Loma de Cabrera',2,1);
INSERT INTO ciudad (nombre_ciudad,id_region, id_pais)VALUES('San Juan de la Maguana',2,1);
INSERT INTO ciudad (nombre_ciudad,id_region, id_pais)VALUES('Bahoruco-Neiba',2,1);

--REGION DEL ESTE:
   	
INSERT INTO ciudad (nombre_ciudad,id_region, id_pais)VALUES('Santo Domingo DN',3,1);
INSERT INTO ciudad (nombre_ciudad,id_region, id_pais)VALUES('Santo Domingo Oeste',3,1);
INSERT INTO ciudad (nombre_ciudad,id_region, id_pais)VALUES('Santo Domingo Este',3,1);
INSERT INTO ciudad (nombre_ciudad,id_region, id_pais)VALUES('Santo Domingo Norte',3,1);
INSERT INTO ciudad (nombre_ciudad,id_region, id_pais)VALUES('San Pedro de Macorós',3,1);
INSERT INTO ciudad (nombre_ciudad,id_region, id_pais)VALUES('La Romana',3,1);
INSERT INTO ciudad (nombre_ciudad,id_region, id_pais)VALUES('Salvaleón de Higuey',3,1);
INSERT INTO ciudad (nombre_ciudad,id_region, id_pais)VALUES('Punta Cana',3,1);
INSERT INTO ciudad (nombre_ciudad,id_region, id_pais)VALUES('El Seibo',3,1);
INSERT INTO ciudad (nombre_ciudad,id_region, id_pais)VALUES('Hato Mayor',3,1);

--CIUDADES DE PAISES COMO ESPAÑA, USA, FRANCIA:

INSERT INTO ciudad (nombre_ciudad,id_region, id_pais)VALUES('Nueva York',4,6);
INSERT INTO ciudad (nombre_ciudad,id_region, id_pais)VALUES('Maryland',5,6);
INSERT INTO ciudad (nombre_ciudad,id_region, id_pais)VALUES('Massachusetts',6,6);

INSERT INTO ciudad (nombre_ciudad,id_region, id_pais)VALUES('CACERES',7,8);
INSERT INTO ciudad (nombre_ciudad,id_region, id_pais)VALUES('LEON',8,8);
INSERT INTO ciudad (nombre_ciudad,id_region, id_pais)VALUES('MADRID',9,8);

--seleccionamos la tabla para los registros

select * from CIUDAD

--seleccionamos la tabla para ver como ha quedado:

select * from region

--Insertamos algunos registros:

INSERT into PAIS (nombre_pais) VALUES ('Republica Dominicana')
INSERT into PAIS (nombre_pais) VALUES ('Puerto Rico')
INSERT into PAIS (nombre_pais) VALUES ('Colombia')
INSERT into PAIS (nombre_pais) VALUES ('Cuba')
INSERT into PAIS (nombre_pais) VALUES ('Jamaica')
INSERT into PAIS (nombre_pais) VALUES ('Estados Unidos')
INSERT into PAIS (nombre_pais) VALUES ('Canada')
INSERT into PAIS (nombre_pais) VALUES ('España')
INSERT into PAIS (nombre_pais) VALUES ('Japon')
INSERT into PAIS (nombre_pais) VALUES ('Argentina')
INSERT into PAIS (nombre_pais) VALUES ('Venezuela')
INSERT into PAIS (nombre_pais) VALUES ('Francia')
INSERT into PAIS (nombre_pais) VALUES ('Roma')
INSERT into PAIS (nombre_pais) VALUES ('Italia')
INSERT into PAIS (nombre_pais) VALUES ('China Oriental')
INSERT into PAIS (nombre_pais) VALUES ('Peru')
INSERT into PAIS (nombre_pais) VALUES ('Haiti')

 --seleccionamos la tabla para si los registros estan correctos:

 select * from SOCIO 
 SELECT * FROM CIUDAD
 SELECT * FROM REGION
 SELECT * FROM PAIS
 SELECT * FROM TIPO_AHORRO
 SELECT * FROM TIPO_SOCIO
 SELECT * FROM AHORRO 

--INSERTAMOS DATOS EN LA TABLA SOCIO:

INSERT INTO SOCIO VALUES(1,'ENMANUEL','BREA','13-05-2001','1','C/JUAN SALVADOR # 35, STO.DGO. ESTE','ADVISERTECNOLOGY','809-111-1444','1','809-540-0000','829-841-2011','e.brea@gmail.com','12-09-2019','1','1')
INSERT INTO SOCIO VALUES(2,'JHON','FAMILIA','19-02-2002','1','C/DUARTE 145, STO.DGO. DN','BRAVO','809-444-3333','2','809-770-8080','829-850-9852','j.familia@gmail.com','09-12-2020','2','1')
INSERT INTO SOCIO VALUES(3,'GERALD','MARTINEZ','10-10-1986','1','C/H ESQUINA K ZONA INDUSTRIAL','BANANERA RD','809-222-2222','3','809-555-5555','829-888-8888','g.martinez@gmail.com','12-09-2020','1','1')
INSERT INTO SOCIO VALUES(4,'FRANCISCO','CONTRERAS','13-05-2001','1','C/JUAN SALVADOR # 35, STO.DGO. ESTE','BOTELLAS DE FORMAS','809-111-3333','4','809-540-0000','829-841-2011','e.brea@gmail.com','12-09-2020','1','1')
INSERT INTO SOCIO VALUES(5,'JULIO','BERNIE','13-05-2001','1','C/SAN RAFALE # 35, STO.DGO','TRANSPORTE RAPIDO RD','809-111-5478','5','809-540-0000','829-841-2011','e.brea@gmail.com','12-09-2020','2','1')
INSERT INTO SOCIO VALUES(6,'MARITZA','ACOSTA','13-05-2001','2','C/JUANA MENDEZ # 35 SAN JUAN','ROPAS DE PACAS S.A','809-111-9875','6','809-540-0000','829-841-2011','e.brea@gmail.com','12-09-2020','1','1')
INSERT INTO SOCIO VALUES(7,'CARLOS','JIMENEZ','14-05-1986','3','C/1ERA BALAGUER # 88','PERFUMES AFRODITA','809-954-9874','9','809-540-0000','829-841-2011','C.JIMENEZ@gmail.com','01-05-2021','2','1')
INSERT INTO SOCIO VALUES(8,'PEDRO','PEÑA','22-03-1996','1','C/DUARTE 145','EL JUMBO','809-444-3333','10','809-770-8080','829-850-9852','P.PENA@gmail.com','09-12-2020','1','1')
INSERT INTO SOCIO VALUES(9,'MARINO','CRUZ','10-10-1986','1','C/JOSE CONTRERAS #55','EL NACIONAL','809-222-2222','11','809-555-5555','829-888-8888','M.CRUZ@gmail.com','12-09-2020','1','1')
INSERT INTO SOCIO VALUES(10,'FERNANDO','VARGAS','13-05-1973','1','C/MANZANA QUINTA # 35','POPULAR','809-999-2222','14','809-540-0000','829-841-2011','F.VARGAS@gmail.com','12-09-2019','1','1')
INSERT INTO SOCIO VALUES(11,'MARCIA','TERRERO','28-12-1999','2','C/AGUACATE RD, ESQUINA # 35','BHD-LEON','809-999-1444','13','809-540-0000','829-841-2011','M.TERRERO@gmail.com','11-05-2016','2','1')
INSERT INTO SOCIO VALUES(12,'EDWARD','RAMIREZ','16-05-2000','1','C/LOS GUINEOS','BANCA VIDAL','809-888-1444','6','809-540-0000','829-841-2011','E.RAMIREZ@gmail.com','01-01-2015','1','1')
INSERT INTO SOCIO VALUES(13,'JUAN CARLOS','MAROQUI','16-02-2001','1','C/XXX VIN DISEL # 35','BARBER-SHOP JUAN','809-444-5555','38','809-555-0511','829-874-8741','J.CARLOS@gmail.com','19-08-2020','1','8')
INSERT INTO SOCIO VALUES(14,'VICTOR','ROBLES','02-05-1996','1','C/EEEE ALAMBRES Y REDES# 35','TRANSPORTE ESPINAL','809-100-0001','40','829-788-8877','809-777-7777','V.ROBLES@gmail.com','05-04-2019','2','8')
INSERT INTO SOCIO VALUES(15,'JAVIER','BERIGUETE','13-05-1998','1','C/DCD-1050, STO.DGO. ESTE','ADVISERTECNOLOGY','809-700-7899','1','849-000-1111','829-784-4567','J.BERIGUETE@gmail.com','12-09-2019','1','1')
INSERT INTO SOCIO VALUES(16,'ADRIANA','CRUZ','10-10-1986','2','C/JOSE CONTRERAS #55','FACEBOOK DOM.','809-000-7981','13','809-995-9995','829-888-4444','M.CRUZ@gmail.com','12-09-2020','1','1')
INSERT INTO SOCIO VALUES(17,'CAROLINA','HERNANDEZ','10-10-1986','2','C/PENTRACION NORTE','TODO PIZZA','809-444-4444','14','809-115-1155','829-178-8888','M.CRUZ@gmail.com','12-09-2020','1','1')
INSERT INTO SOCIO VALUES(18,'LAURA','DIAZ','10-10-2001','2','C/CENTRAL # 450','HOME COMPUTER','809-222-2222','11','809-321-3322','829-002-0001','M.CRUZ@gmail.com','12-09-2020','1','1')
INSERT INTO SOCIO VALUES(19,'CAMILA','CASTRO ','18-01-2002','2','C/JOSELUIS RODRIGUEZ ESQ. 32','LAPTOP SOLO LAPTOP','809-741-9630','15','809-448-1440','829-808-8080','M.CRUZ@gmail.com','12-09-2020','1','1')
INSERT INTO SOCIO VALUES(20,'CATALINA','RODRÍGUEZ','10-01-2005','2','C/MIGUEL DE MOYA #55','ROMPE PLATOS','809-789-7391','16','809-789-9990','829-909-7890','M.CRUZ@gmail.com','12-09-2020','1','1')
INSERT INTO SOCIO VALUES(21,'NATALIA','TORRES','01-10-2004','2','C/MARIA JIMENES 100','PCALZADOS PARA TI RD','849-000-9731','17','809-777-7575','829-953-8901','M.CRUZ@gmail.com','12-09-2020','1','1')
INSERT INTO SOCIO VALUES(22,'VIVIANA',' GOMEZ','10-08-1995','2','C/DEL BIEN Y EL MAR','LLEVA VIDA INC','809-789-3210','18','809-145-1210','829-951-8903','M.CRUZ@gmail.com','12-09-2020','1','1')
INSERT INTO SOCIO VALUES(23,'LEONARDO','ROJAS ','08-10-1996','3','C/MAR ADENTRO 777','DATA ANALYST DCD','809-100-8000','19','809-147-5555','829-047-9087','M.CRUZ@gmail.com','12-09-2020','1','1')
INSERT INTO SOCIO VALUES(24,'ANDRÉS','GARCÍA','09-09-1999','1','C/DIENTES FELICES','CIENCIA DE DATOS INC','809-987-0008','20','809-789-6547','829-789-7700','M.CRUZ@gmail.com','12-09-2020','1','1')
INSERT INTO SOCIO VALUES(25,'LUIS','BOLÍVAR','01-01-1986','1','AV. SIEMPRE VIVA # 115','EMPRESA DATOS RD','809-784-7845','21','809-999-6665','829-756-0077','M.CRUZ@gmail.com','12-09-2020','1','1')
INSERT INTO SOCIO VALUES(26,'OSCAR','OVALLE','15-03-2003','1','AV. VIVE FELIZ #88.5','SQL COMPANY','809-074-7410','37','809-997-999','829-321-3210','M.CRUZ@gmail.com','12-09-2020','1','6')
INSERT INTO SOCIO VALUES(27,'PABLO','ALVAREZ','31-12-1974','1','C/NI IDEA DE DONDE VIVE','POWER BI COMPANY','809-014-2581','38','809-780-0009','829-111-3214','M.CRUZ@gmail.com','12-09-2020','3','6')
INSERT INTO SOCIO VALUES(28,'RAFAEL','PARRA','31-10-1980','1','C/SUEÑA SIEMPRE # 666','EMPRESA DE EXCEL.COM','809-078-0147','40','809-784-4578','829-222-0149','M.CRUZ@gmail.com','12-09-2020','1','8')
INSERT INTO SOCIO VALUES(29,'RICARDO','OCHOA','03-09-2005','1','C/NADIE LO SABE Y MENOS #400','YO LA HAGO INC','809-124-4567','41','809-874-7489','829-321-3571','M.CRUZ@gmail.com','12-09-2020','1','8')
INSERT INTO SOCIO VALUES(30,'ALEJANDRO','SALAZAR','09-09-2001','1','C/LA BERGUENZA #752','ADIVINEN, ADIVINEN INC','809-012-0123','42','809-789-3214','829-159-1590','M.CRUZ@gmail.com','12-09-2020','3','8')
INSERT INTO SOCIO VALUES(31,'MARINO','CRUZ','17-05-2001','3','C/DESARROLLADOR WEB','SUPERMERCADO LAURA','809-123-1234','42','809-987-7894','829-101-1011','M.CRUZ@gmail.com','12-09-2020','3','8')

-- SELECCIONAMOS LA TABLA SOCIO PARA VER SUS REGISTROS:

select * from SOCIO

--SELECCIONAMOS TODAS LAS TABLES Y VEMOS SUS DATOS:

SELECT nombre_ciudad FROM CIUDAD where id_region='5'

--SELECCIONAMOS LA TABLA:

SELECT * FROM PAIS
SELECT * FROM REGION
SELECT * FROM CIUDAD
SELECT * FROM TIPO_AHORRO
SELECT * FROM TIPO_SOCIO
SELECT * FROM SOCIO
SELECT * FROM GENERO
select * from AHORRO


select id_socio, fecha_de_ingreso from SOCIO 

--INSERTAMOS DATOS EN LA TABLA TRANSACCIONES:

INSERT INTO  AHORRO (id_Ahorro,fecha_ahorro, Monto_ahoro, id_tipo_Ahorro, id_socio) VALUES (1,'2019-09-12','25000','1','1')
INSERT INTO  AHORRO (id_Ahorro,fecha_ahorro, Monto_ahoro, id_tipo_Ahorro, id_socio) VALUES (2,'2020-12-09','35000','1','2')
INSERT INTO  AHORRO (id_Ahorro,fecha_ahorro, Monto_ahoro, id_tipo_Ahorro, id_socio) VALUES (3,'2020-09-12','1500','3','3')
INSERT INTO  AHORRO (id_Ahorro,fecha_ahorro, Monto_ahoro, id_tipo_Ahorro, id_socio) VALUES (4,'2020-09-12','20300','1','4')
INSERT INTO  AHORRO (id_Ahorro,fecha_ahorro, Monto_ahoro, id_tipo_Ahorro, id_socio) VALUES (5,'2020-8-2','10800','1','5')
INSERT INTO  AHORRO (id_Ahorro,fecha_ahorro, Monto_ahoro, id_tipo_Ahorro, id_socio) VALUES (6,'2020-7-1','20000','1','6')
INSERT INTO  AHORRO (id_Ahorro,fecha_ahorro, Monto_ahoro, id_tipo_Ahorro, id_socio) VALUES (7,'2021-05-01','120000','2','3')
INSERT INTO  AHORRO (id_Ahorro,fecha_ahorro, Monto_ahoro, id_tipo_Ahorro, id_socio) VALUES (8,'2020-05-09','25000','1','8')
INSERT INTO  AHORRO (id_Ahorro,fecha_ahorro, Monto_ahoro, id_tipo_Ahorro, id_socio) VALUES (9,'2021-09-12','5200','2','9')
INSERT INTO  AHORRO (id_Ahorro,fecha_ahorro, Monto_ahoro, id_tipo_Ahorro, id_socio) VALUES (10,'2021-09-12','2300','3','10')
INSERT INTO  AHORRO (id_Ahorro,fecha_ahorro, Monto_ahoro, id_tipo_Ahorro, id_socio) VALUES (11,'2016-05-11','1800','1','11')
INSERT INTO  AHORRO (id_Ahorro,fecha_ahorro, Monto_ahoro, id_tipo_Ahorro, id_socio) VALUES (12,'2015-01-01','2000','3','12')
INSERT INTO  AHORRO (id_Ahorro,fecha_ahorro, Monto_ahoro, id_tipo_Ahorro, id_socio) VALUES (13,'2020-08-19','5000','1','13')
INSERT INTO  AHORRO (id_Ahorro,fecha_ahorro, Monto_ahoro, id_tipo_Ahorro, id_socio) VALUES (14,'2019-04-05','13500','1','14')
INSERT INTO  AHORRO (id_Ahorro,fecha_ahorro, Monto_ahoro, id_tipo_Ahorro, id_socio) VALUES (15,'2019-01-12','14500','1','15')
INSERT INTO  AHORRO (id_Ahorro,fecha_ahorro, Monto_ahoro, id_tipo_Ahorro, id_socio) VALUES (16,'2020-02-12','18000','1','16')
INSERT INTO  AHORRO (id_Ahorro,fecha_ahorro, Monto_ahoro, id_tipo_Ahorro, id_socio) VALUES (17,'2020-03-12','21000','1','17')
INSERT INTO  AHORRO (id_Ahorro,fecha_ahorro, Monto_ahoro, id_tipo_Ahorro, id_socio) VALUES (18,'2020-05-12','9800','1','18')
INSERT INTO  AHORRO (id_Ahorro,fecha_ahorro, Monto_ahoro, id_tipo_Ahorro, id_socio) VALUES (19,'2020-06-12','4500','1','19')
INSERT INTO  AHORRO (id_Ahorro,fecha_ahorro, Monto_ahoro, id_tipo_Ahorro, id_socio) VALUES (20,'2020-09-12','78900','1','20')
INSERT INTO  AHORRO (id_Ahorro,fecha_ahorro, Monto_ahoro, id_tipo_Ahorro, id_socio) VALUES (21,'2021-07-12','150000','2','21')
INSERT INTO  AHORRO (id_Ahorro,fecha_ahorro, Monto_ahoro, id_tipo_Ahorro, id_socio) VALUES (22,'2020-10-12','45600','2','22')
INSERT INTO  AHORRO (id_Ahorro,fecha_ahorro, Monto_ahoro, id_tipo_Ahorro, id_socio) VALUES (23,'2020-8-12','40000','2','23')
INSERT INTO  AHORRO (id_Ahorro,fecha_ahorro, Monto_ahoro, id_tipo_Ahorro, id_socio) VALUES (24,'2020-04-12','66000','1','24')
INSERT INTO  AHORRO (id_Ahorro,fecha_ahorro, Monto_ahoro, id_tipo_Ahorro, id_socio) VALUES (25,'2020-03-12','19800','1','25')
INSERT INTO  AHORRO (id_Ahorro,fecha_ahorro, Monto_ahoro, id_tipo_Ahorro, id_socio) VALUES (26,'2020-09-12','28000','3','26')
INSERT INTO  AHORRO (id_Ahorro,fecha_ahorro, Monto_ahoro, id_tipo_Ahorro, id_socio) VALUES (27,'2020-04-12','98000','1','27')
INSERT INTO  AHORRO (id_Ahorro,fecha_ahorro, Monto_ahoro, id_tipo_Ahorro, id_socio) VALUES (28,'2020-11-12','66000','1','28')
INSERT INTO  AHORRO (id_Ahorro,fecha_ahorro, Monto_ahoro, id_tipo_Ahorro, id_socio) VALUES (29,'2020-12-11','29888','1','29')
INSERT INTO  AHORRO (id_Ahorro,fecha_ahorro, Monto_ahoro, id_tipo_Ahorro, id_socio) VALUES (30,'2020-01-05','159000','3','30')
INSERT INTO  AHORRO (id_Ahorro,fecha_ahorro, Monto_ahoro, id_tipo_Ahorro, id_socio) VALUES (31,'2020-01-02','32145','3','31')

-- SELECCIONAMOS LA TABLA  PARA VER SUS REGISTROS:

 SELECT * FROM AHORRO where fecha_ahorro  BETWEEN '2020-01-01' and '2020-09-12'
 ORDER BY fecha_ahorro DESC

-- SELECCIONAMOS LA TABLA  PARA VER SUS REGISTROS:

select * from SOCIO

--MOSTRAR LA CANTIDAD TOTAL DE SOCICIOS:

select count(*) as [Total Socios] FROM SOCIO

--MOSTRAR LA CANTIDAD TOTAL DE AHORROS:

SELECT  sum(Monto_ahoro) as [Total Ahorro] from AHORRO

SELECT * FROM SOCIO
SELECT * FROM GENERO
-- CUANTOS SOCIOS SON HOMBRES:

select  COUNT(*) AS 'HOMBRES' from SOCIO where id_genero='1'

-- CUANTOS SOCIOS SON MUJERES:

select  COUNT(*) AS 'MUJERES' from SOCIO where id_genero='2'

-- CUANTOS SOCIOS SON INDEFINIDOS:

select  COUNT(*) AS 'INDEFINIDOS' from SOCIO where id_genero='3'

-- MOSTRAR LOS SOCIOS SON SIN DEFINICION:

select * from SOCIO where id_genero='3'

-- MOSTRAR LOS SOCIOS SON MUJERES:

select * from PAIS --where id_genero='2'

--MOSTRAR LA TABLA DE AHORROS:

SELECT * FROM AHORRO

-- MOSTRAR LOS SOCIOS QUE SON HOMBRES CON ID, EL NOMBRE, EL APELLIDO, FECHA DE NACIMIENTO, 
-- FECHA DE INGRESO, MONTO AHORRADO, TIPO DE SOCIO, TIPO DE AHORRO.:

SELECT * FROM SOCIO
SELECT * FROM AHORRO
SELECT * FROM TIPO_AHORRO
SELECT * FROM TIPO_SOCIO

SELECT sc.id_socio, nombre_socio, apellido_socio, fecha_nacimiento, fecha_de_ingreso, a.Monto_ahoro,
 TS.TIPO_SOCIO,TA.TIPO_AHORRO
FROM SOCIO SC join AHORRO A
ON sc.id_socio= a.id_socio
join TIPO_AHORRO TA ON TA.id_tipo_Ahorro = A.id_tipo_Ahorro
JOIN TIPO_SOCIO TS ON TS.id_tipo_socio = SC.id_tipo_socio
where id_genero='1'

-- MOSTRAR LOS SOCIOS SON QUEN SON MUJERES, CON EL ID, NOMBRE, EL APELLIDO, FECHA DE NACIMIENTO, FECHA DE INGRESO, MONTO AHORRADO, TIPO DE SOCIO, TIPO DE AHORRO.:

select sc.id_socio as 'Codigo de Socio',  sc.nombre_socio, sc.apellido_socio, sc.fecha_nacimiento, 
sc.fecha_de_ingreso, ah.Monto_ahoro, ts.TIPO_SOCIO, TA.TIPO_AHORRO
from SOCIO SC join TIPO_SOCIO ts on sc.id_tipo_socio = ts.id_tipo_socio
join TIPO_AHORRO TA on sc.id_tipo_socio = TA.id_tipo_Ahorro
join AHORRO ah on ah.id_socio= sc.id_socio
where id_genero='2'

-- MOSTRAR LOS SOCIOS SON QUEN SON MUJERES, CON EL ID, NOMBRE, EL APELLIDO, FECHA DE NACIMIENTO, FECHA DE INGRESO, MONTO AHORRADO, TIPO DE SOCIO, TIPO DE AHORRO.:

select sc.id_socio as 'Codigo de Socio',  sc.nombre_socio, sc.apellido_socio, sc.fecha_nacimiento, 
sc.fecha_de_ingreso, ah.Monto_ahoro, ts.TIPO_SOCIO, TA.TIPO_AHORRO
from SOCIO SC join TIPO_SOCIO ts on sc.id_tipo_socio = ts.id_tipo_socio
join TIPO_AHORRO TA on sc.id_tipo_socio = TA.id_tipo_Ahorro
join AHORRO ah on ah.id_socio= sc.id_socio
where id_genero='3'


-- CUANTOS SOCIOS SON NUEVOS:

select  COUNT(*) AS 'SOCIOS NUEVOS' from SOCIO where id_tipo_socio='1'

-- CUANTOS SOCIOS SON VIEJOS:

select  COUNT(*) AS 'SOCIOS VIEJOS' from SOCIO where id_tipo_socio='2'

-- CUANTOS SOCIOS SON SOCIOS RETIRADOS:

select  COUNT(*) AS 'SOCIOS RETIRADOS' from SOCIO where id_tipo_socio='3'

-- CUANTOS SON LOS AHORRROS DE LOS SOCIOS NUEVOS:

select  COUNT(*) AS 'SOCIOS NUEVOS', sum(A.Monto_ahoro) as 'Monto Total Ahorrado'
from SOCIO sc JOIN AHORRO A
ON SC.id_socio = A.id_socio
where id_tipo_socio='1'


-- CUANTOS SON LOS AHORRROS DE LOS SOCIOS VIEJOS:


select  COUNT(*) AS 'SOCIOS VIEJOS', sum(A.Monto_ahoro) as 'Monto Total Ahorrado'
from SOCIO sc JOIN AHORRO A
ON SC.id_socio = A.id_socio
where id_tipo_socio='2'

-- CUANTOS SON LOS AHORRROS DE LOS SOCIOS RETIRADOS:

select  COUNT(*) AS 'SOCIOS RETIRADOS', sum(A.Monto_ahoro) as 'Monto Total Ahorrado'
from SOCIO sc JOIN AHORRO A
ON SC.id_socio = A.id_socio
where id_tipo_socio='3'

--REALIZAR UNA CONSULTA CON UN JOIN PARA VER EL NOMBRE, APELLIDO, TIPO DE AHORRO,
--Y MONTO AHORRADO,PAIS, CIUDAD Y GENERO

select distinct sc.id_socio, sc.nombre_socio as 'Nombre del Socio', sc.apellido_socio as 'Apellido', sc.direccion, sc.fecha_nacimiento as 'Fecha Nac',
g.genero as'Genero', sc.lugar_de_trabajo, sc.fecha_de_ingreso as 'Fecha Ingreso a la Cooperativa',TA.TIPO_AHORRO, a.Monto_ahoro 'Total de Ahorro', cu.nombre_ciudad as 'Ciudad', 
p.nombre_pais as 'Pais'
from SOCIO sc JOIN AHORRO a
on sc.id_socio = a.id_socio
JOIN TIPO_AHORRO TA
ON A.id_tipo_Ahorro = TA.id_tipo_Ahorro
JOIN CIUDAD cu 
on sc.id_ciudad=cu.id_ciudad
JOIN PAIS P on p.id_pais=sc.id_pais
JOIN GENERO g on g.id_genero = sc.id_genero


select * from SOCIO
select * from AHORRO
select * from PAIS

--MOSTRAR LOS NOMBRE DE LOS SOCIOS, SUS AHORROS, FECHA DE NACMIENTO, FECHA ACTUAL Y  
--CUANTOS AÑOS DE EDAD TIENEN LOS SOCIOS NUEVOS Y VIEJOS.

select SC.id_socio, nombre_socio as [Nombre del Socio],fecha_nacimiento, GETDATE() as [Fecha Actual],
DATEDIFF(YEAR, fecha_nacimiento, GETDATE()) as 'Años de Edad', a.Monto_ahoro 
from SOCIO sc JOIN AHORRO a
on sc.id_socio = a.id_socio
JOIN TIPO_AHORRO TA
ON A.id_tipo_Ahorro = TA.id_tipo_Ahorro
order by sc.id_socio asc

--MOSTRAR LOS NOMBRE DE LOS SOCIOS, SUS AHORROS, FECHA DE INGRESO, FECHA ACTUAL Y CUANTOS AÑOS DE EDAD TIENEN LOS SOCIOS NUEVOS Y VIEJOS.

select SC.id_socio, nombre_socio as [Nombre del Socio], apellido_socio, fecha_de_ingreso, fecha_nacimiento, 
GETDATE() as [Fecha Actual],
DATEDIFF(YEAR, fecha_nacimiento,GETDATE()) as 'Años de Edad',
DATEDIFF(YEAR, fecha_de_ingreso, GETDATE()) as [Años Ahorrando],
Monto_ahoro
from SOCIO sc join AHORRO a
on sc.id_socio = a.id_socio
join TIPO_AHORRO TA
ON A.id_tipo_Ahorro = TA.id_tipo_Ahorro
order by [Años Ahorrando] desc

--VAMOS LA TABLA TIPO DE AHORRO, VAMOS HACER ALGUNOS CAMBIOS:

SELECT * FROM TIPO_AHORRO

--VAMOS ACTUALIZAR ESTE REGISTRO QUE TIENE EL ID_

INSERT INTO TIPO_AHORRO (TIPO_AHORRO) VALUES('AHORRO FICTICIO PARA EXCEL');
INSERT INTO TIPO_AHORRO (TIPO_AHORRO) VALUES('AHORRO PARA ELIMINAR');

--AHORA EL AHORRO CON EL ID 7, VAMOS A ACTUALIZARLO CON LA SENTENCIA UPDATE

UPDATE TIPO_AHORRO SET TIPO_AHORRO ='AHORRO FICTICIO PRUEBA' WHERE id_tipo_Ahorro ='7'

--AHORA EL AHORRO CON EL ID 8, VAMOS A BORRARLO CON LA SENTENCIA UPDATE

DELETE FROM TIPO_AHORRO WHERE id_tipo_Ahorro='33'

SELECT * FROM AHORRO

select S.nombre_socio, A.Monto_ahoro, ta.TIPO_AHORRO
from SOCIO S JOIN AHORRO a
on  S.id_socio=A.id_socio
JOIN TIPO_AHORRO TA 
ON a.id_tipo_Ahorro= ta.id_tipo_Ahorro

--CREE UNA VISTA QUE MOSTRE LOS NOMBRE DE LOS SOCIOS, SUS AHORROS, FECHA DE INGRESO, FECHA ACTUAL Y CUANTOS AÑOS DE EDAD TIENEN LOS SOCIOS NUEVOS Y VIEJOS.

CREATE OR ALTER VIEW VISTA_SOCIOS_FECHAS
as
select nombre_socio as [Nombre del Socio], apellido_socio, fecha_de_ingreso, fecha_nacimiento, 
GETDATE() as [Fecha Actual],
DATEDIFF(YEAR, fecha_nacimiento,GETDATE()) as 'Años de Edad',
DATEDIFF(YEAR, fecha_de_ingreso, GETDATE()) as [Años Ahorrando],
a.fecha_ahorro, a.Monto_ahoro
from SOCIO sc join AHORRO a
on sc.id_socio = a.id_socio
join TIPO_AHORRO TA
ON A.id_tipo_Ahorro = TA.id_tipo_Ahorro

--CONSULTA LA VISTA

select * from VISTA_SOCIOS_FECHAS
select * from SOCIO


--CREAR UNA VISTA QUE CALCULE AL AHORRO UN 10% DE INTERES GENERAL

CREATE OR ALTER VIEW VISTA_SOCIOS_FECHAS_MAS_INTERES_10_X_100_TO
as
select nombre_socio as [Nombre del Socio], apellido_socio, fecha_de_ingreso, fecha_nacimiento, 
GETDATE() as [Fecha Actual],
DATEDIFF(YEAR, fecha_nacimiento,GETDATE()) as 'Años de Edad',
DATEDIFF(YEAR, fecha_de_ingreso, GETDATE()) as [Años Ahorrando],
a.fecha_ahorro, 
a.Monto_ahoro [Total de Ahorro], 
SUM(a.Monto_ahoro * 10 /100 ) [Total Intes]
from SOCIO sc join AHORRO a
on sc.id_socio = a.id_socio
join TIPO_AHORRO TA
ON A.id_tipo_Ahorro = TA.id_tipo_Ahorro
WHERE ta.id_tipo_Ahorro=2
GROUP BY nombre_socio, apellido_socio, fecha_de_ingreso, fecha_nacimiento,a.fecha_ahorro,  a.Monto_ahoro

--CONSULTA LA VISTA

select * from VISTA_SOCIOS_FECHAS_MAS_INTERES_10_X_100_TO
where fecha_ahorro  BETWEEN '2020-01-01' and '2020-09-12'
ORDER BY fecha_ahorro DESC



--CREAR UNA VISTA QUE CALCULE AL AHORRO UN 10% DE INTERES


CREATE OR ALTER VIEW VISTA_SOCIOS_FECHAS_MAS_INTERES_10_X_100_TO
as

select nombre_socio as [Nombre del Socio], apellido_socio, fecha_de_ingreso, fecha_nacimiento, 
GETDATE() as [Fecha Actual],
DATEDIFF(YEAR, fecha_nacimiento,GETDATE()) as 'Años de Edad',
DATEDIFF(YEAR, fecha_de_ingreso, GETDATE()) as [Años Ahorrando],
a.fecha_ahorro, 
a.Monto_ahoro [Total de Ahorro], 
SUM(Monto_ahoro * 10 /100 ) AS [Total Intes]
from SOCIO sc join AHORRO a
on sc.id_socio = a.id_socio
join TIPO_AHORRO TA
ON A.id_tipo_Ahorro = TA.id_tipo_Ahorro
GROUP BY nombre_socio, apellido_socio, fecha_de_ingreso, fecha_nacimiento,a.fecha_ahorro,  a.Monto_ahoro


--CONSULTA LA VISTA

select * from VISTA_SOCIOS_FECHAS_MAS_INTERES_10_X_100_TO
where fecha_ahorro  BETWEEN '2020-01-01' and '2020-09-12'
ORDER BY fecha_ahorro DESC




--CREE UNA VISTA QUE MOSTRE LOS NOMBRE DE LOS SOCIOS, SUS AHORROS, FECHA DE INGRESO, FECHA ACTUAL Y CUANTOS AÑOS DE EDAD TIENEN LOS SOCIOS NUEVOS Y VIEJOS.

CREATE OR ALTER VIEW vista_socios
AS

select SC.id_socio, sc.nombre_socio as 'Nombre del Socio', sc.apellido_socio as 'Apellido', sc.direccion,SC.telefono_movil, sc.fecha_nacimiento as 'Fecha Nac',
g.genero as'Genero', sc.lugar_de_trabajo, sc.fecha_de_ingreso as 'Fecha Ingreso a la Cooperativa', cu.nombre_ciudad as 'Ciudad', R.nombre_region AS 'Region',
p.nombre_pais as 'Pais',
GETDATE() as [Fecha Actual],
DATEDIFF(YEAR, fecha_de_ingreso, GETDATE()) as [Años Ahorrando],DATEDIFF(YEAR, fecha_nacimiento,GETDATE()) as 'Años de Edad',
TA.TIPO_AHORRO, TC.TIPO_SOCIO  ,a.fecha_ahorro, a.Monto_ahoro 'Total de Ahorro'
from SOCIO sc join AHORRO a
on sc.id_socio = a.id_socio
join TIPO_AHORRO TA
ON A.id_tipo_Ahorro = TA.id_tipo_Ahorro
join CIUDAD cu 
on sc.id_ciudad=cu.id_ciudad
JOIN REGION R ON CU.id_region= R.id_region
JOIN PAIS P on p.id_pais=sc.id_pais
join GENERO g on g.id_genero = sc.id_genero
JOIN TIPO_SOCIO TC ON TC.id_tipo_socio= SC.id_tipo_socio

--HACEMOS UNA CONSULTA A LA VISTA
select * from vista_socios


--CREAR UN PROCEDIMIENTO QUE CONSULTE EL ITERES DE UN 10% AL AHORRO.

CREATE OR ALTER procedure  INTERES_X_AHORRO_10_X_100TO
AS
select SC.id_socio, sc.nombre_socio as 'Nombre del Socio', sc.apellido_socio as 'Apellido', sc.direccion,SC.telefono_movil, sc.fecha_nacimiento as 'Fecha Nac',
g.genero as'Genero', sc.lugar_de_trabajo, sc.fecha_de_ingreso as 'Fecha Ingreso a la Cooperativa', cu.nombre_ciudad as 'Ciudad', R.nombre_region AS 'Region',
p.nombre_pais as 'Pais',
GETDATE() as [Fecha Actual],
DATEDIFF(YEAR, fecha_de_ingreso, GETDATE()) as [Años Ahorrando],
DATEDIFF(YEAR, fecha_nacimiento,GETDATE()) as 'Años de Edad',
TA.TIPO_AHORRO, TC.TIPO_SOCIO  ,a.fecha_ahorro,
a.Monto_ahoro [Total de Ahorro], 
SUM(a.Monto_ahoro * 10 /100 ) [Total Intes]
from SOCIO sc join AHORRO a
on sc.id_socio = a.id_socio
join TIPO_AHORRO TA
ON A.id_tipo_Ahorro = TA.id_tipo_Ahorro
join CIUDAD cu 
on sc.id_ciudad=cu.id_ciudad
JOIN REGION R ON CU.id_region= R.id_region
JOIN PAIS P on p.id_pais=sc.id_pais
join GENERO g on g.id_genero = sc.id_genero
JOIN TIPO_SOCIO TC ON TC.id_tipo_socio= SC.id_tipo_socio
group by SC.id_socio, sc.nombre_socio, sc.apellido_socio, sc.direccion,SC.telefono_movil, sc.fecha_nacimiento,
g.genero,sc.lugar_de_trabajo, sc.fecha_de_ingreso,fecha_ahorro,cu.nombre_ciudad,R.nombre_region,TA.TIPO_AHORRO, TC.TIPO_SOCIO ,
p.nombre_pais,Monto_ahoro

--EJECUTAMOS EL PROCEDIMIENTO:

exec INTERES_X_AHORRO_10_X_100TO 



--PROCEDIMIENTO PARA INSERTAR DATOS DE SOCIOS NO DUPLICADOS 
--SIN QUE ESTEN REPETIDOS COMO CODIGO O DESCRIPCION.

CREATE OR ALTER PROCEDURE SP_SOCIOS
@id_socio int ,
@nombre_socio varchar (30),
@apellido_socio varchar (50),
@fecha_nacimiento date,
@id_genero int, 
@direccion varchar(100),
@lugar_de_trabajo varchar(100),
@telefono_de_trabajo varchar(15),
@id_ciudad int,
@telefono_residencial varchar(15),
@telefono_movil varchar(15),
@correo_electronico varchar(30),
@fecha_de_ingreso date,
@id_tipo_socio int,
@id_pais int
as 
declare @total int --contar las cantidades en el resultado.
select @total = count(id_socio) from SOCIO where id_socio= @id_socio or nombre_socio = @nombre_socio AND apellido_socio = @apellido_socio
if(@total <1) --Si no se encuentran resultados es decir 0 valor.
	begin 
		insert into SOCIO values (@id_socio, @nombre_socio,@apellido_socio,@fecha_nacimiento,@id_genero,@direccion,
		@lugar_de_trabajo,@telefono_de_trabajo,@id_ciudad,@telefono_residencial, @telefono_movil, @correo_electronico,
		@fecha_de_ingreso,@id_tipo_socio,@id_pais)
	end
else 
	begin
		print('El SOCIO con el ID :' + '' + CAST(@id_socio AS VARCHAR)  + ' y Con el Nombre: ' + @nombre_socio +  + ' y Apellido: ' + @apellido_socio+ ' Ya se encuentra en la Tabla Socio')
	end

--finalizado

--PROBAMOS AHORA VIENDO NUESTRA TABLA DE PRODUCTOS.

SELECT * FROM SOCIO

--INSERTAMOS UN SOCIO Y LO VALIDAMOS:

exec SP_SOCIOS 32,'NATALIA','TORRES','17-05-1998','3','C/INGENIERIA EN SISTEMAS','REDES ADVINEN','809-323-3322','42','849-849-849','849-829-829','W.CORDERO@gmail.com','12-09-2019','3','8'
exec SP_SOCIOS 32,'WALLER','CORDERO','17-05-1998','3','C/INGENIERIA EN SISTEMAS','REDES ADVINEN','809-323-3322','42','849-849-849','849-829-829','W.CORDERO@gmail.com','12-09-2019','3','8'
exec SP_SOCIOS 33,'CLARK','CORDERO','17-05-1998','3','C/INGENIERIA EN SISTEMAS','REDES ADVINEN','809-323-3322','42','849-849-849','849-829-829','W.CORDERO@gmail.com','12-09-2019','3','8'
exec SP_SOCIOS 34,'CLARK','KEND','17-05-1998','3','C/INGENIERIA EN SISTEMAS','REDES ADVINEN','809-323-3322','42','849-849-849','849-829-829','W.CORDERO@gmail.com','12-09-2019','3','8'
exec SP_SOCIOS 34,'MARTHA','KEND','17-05-1998','3','C/INGENIERIA EN SISTEMAS','REDES ADVINEN','809-323-3322','42','849-849-849','849-829-829','W.CORDERO@gmail.com','12-09-2019','3','8'

exec SP_SOCIOS 35,'MARTHA','KEND','17-05-1998','3','C/INGENIERIA EN SISTEMAS','REDES ADVINEN','809-323-3322','42','849-849-849','849-829-829','W.CORDERO@gmail.com','12-09-2019','3','8'


--PROCEDIMIENTO PARA INSERTAR DATOS DE SOCIOS NO DUPLICADOS 
--SIN QUE ESTEN REPETIDOS COMO CODIGO O DESCRIPCION.

CREATE OR ALTER PROCEDURE SP_AHORROS
 @id_Ahorro int,
 @fecha_ahorro date,
 @Monto_ahoro float,
 @id_tipo_Ahorro  int,
 @id_socio int
as 
declare @total int --contar las cantidades en el resultado.
select @total = count(id_Ahorro) from AHORRO where id_Ahorro= @id_Ahorro 
if(@total <1) --Si no se encuentran resultados es decir 0 valor.
	begin 
		insert into AHORRO values (@id_Ahorro, @fecha_ahorro,@Monto_ahoro,@id_tipo_Ahorro,@id_socio)
	end
else 
	begin
		print('El Ahorro con el ID ' + ' ' + CAST(@id_Ahorro AS VARCHAR) + ' ' +'Ya se encuentra en la Tabla Ahorro')
	end

--finalizado

--PROBAMOS AHORA VIENDO NUESTRA TABLA DE PRODUCTOS.

SELECT * FROM AHORRO

--INSERTAMOS UN SOCIO Y LO VALIDAMOS:

exec SP_AHORROS 32, '2021-10-29','300000','1','32'
exec SP_AHORROS 33, '2022-10-29','50000','1','32'



---TRIGGER PARA PROCEDIMIENTO
