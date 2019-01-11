create table PASAJERO
(
	PASAJERO_ID int not null
	auto_increment,
	NOMBRE_P varchar(30) not null,
	PASAPORTE varchar(15),
	CONTACTOEMERGENCIA varchar(40) not null,
	primary key(PASAJERO_ID )
);

create table AEROLINEA_PASAJERO
(
  PASAJERO_ID int not null,
  AEROLINEA_ID int not null,
  VIAJEROFRECUENTE numeric(12,0),
  primary key(PASAJERO_ID,AEROLINEA_ID)
);

alter table AEROLINEA_PASAJERO add constraint FK_AEROLINEA_PASAJERO foreign key(PASAJERO_ID)
references PASAJERO(PASAJERO_ID);