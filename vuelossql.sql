CREATE DATABASE Vuelos
Use Vuelos

Create table Aeropuerto(
cod_aeropuerto int not null,
nombre varchar (50) not null,
ciudad varchar (50) not null,
pais varchar (50) not null
primary key (cod_aeropuerto)
)

Create table Vuelo (
cod_vuelo int not null,
fecha_vuelo date not null
primary key (cod_vuelo)
)

Create table Escala_Tecnica(
numero_orden int not null,
lugar varchar (50) not null,
cant_escalas int not null
primary key (numero_orden)
)

Create Table Avion (
cod_avion int not null,
nombre varchar (50) not null,
capacidad int not null,
modelo varchar (50) not null,
nombre_modelo varchar (50) not null,
cod_vuelo int not null,
primary key (cod_avion)
)

Create table Programacion_de_vuelo (
programacion_de_vuelo int not null,
linea_area varchar (50) not null,
dias_disponibles date not null,
lugar_llega varchar (50) not null,
lugar_salida varchar (50) not null
primary key (programacion_de_vuelo)
)

Create table Aerocivil (
cod_aeropuerto int not null,
programacion_de_vuelo int not null
primary key (cod_aeropuerto,programacion_de_vuelo)
)
 Create table Itinerario (
cod_aeropuerto int not null,
cod_avion int not null
primary key (cod_aeropuerto,cod_avion)
)

 Alter Table Itinerario ADD foreign key (cod_aeropuerto) references Aeropuerto (cod_aeropuerto)



