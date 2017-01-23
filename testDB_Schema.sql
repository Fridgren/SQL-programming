
CREATE DATABASE testDB_Schema;


CREATE TABLE Kurs(
	kurskod varchar(100) NOT NULL PRIMARY KEY,
    kursbenämning  varchar(100) NOT NULL,
    längd varchar(100)  NOT NULL,
    pris varchar(100) NOT NULL,
    kursbeskrivning varchar(100) NOT NULL
);


CREATE TABLE Kurstillf(
	startDatum DATE NOT NULL,
	kurskod varchar (100) NOT NULL FOREIGN KEY REFERENCES Kurs (kurskod),
	lärare varchar (100) NOT NULL FOREIGN KEY REFERENCES Lärare (lärareID),
	lokal varchar (100) NOT NULL FOREIGN KEY REFERENCES  Lokal (namn)
    PRIMARY KEY (startDatum, kurskod)

);

CREATE TABLE  Lokal (
	namn varchar (100) NOT NULL PRIMARY KEY,
	maxAntal varchar (100) NOT NULL

); 

CREATE TABLE Lärare (
	lärareID int NOT NULL IDENTITY (1,1) PRIMARY KEY,
	lärareNamn varchar (100) NOT NULL,
	rum varchar (100) NOT NULL, 
	telefon varchar (100) NOT NULL
);

CREATE TABLE Deltag (
	startDatum DATE NOT NULL FOREIGN KEY REFERENCES Kurstillf (startDatum), 
	kurskod varchar (100) NOT NULL FOREIGN KEY REFERENCES Kurstillf (kurskod),
	elev varchar (100) NOT NULL FOREIGN KEY REFERENCES Elev (elevID),
	PRIMARY KEY (startDatum, kurskod, elev)

);

CREATE TABLE Elev (
	elevID int NOT NULL IDENTITY (1,1) PRIMARY KEY,
	elevNamn varchar (100) NOT NULL,
	adress varchar (100) NOT NULL,
	postnummer varchar (100) NOT NULL,
	ort varchar (100) NOT NULL, 
	elevTel varchar (100) NULL

);




