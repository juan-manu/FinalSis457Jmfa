CREATE DATABASE FinalSis457Jmfa;
USE [master]
GO
CREATE LOGIN [usrfinal] WITH PASSWORD=N'12345678', 
   DEFAULT_DATABASE=[FinalSis457Jmfa], 
   CHECK_EXPIRATION=OFF, 
   CHECK_POLICY=ON
GO
USE [FinalSis457Jmfa]
GO
CREATE USER [usrfinal] FOR LOGIN [usrfinal]
GO
USE [FinalSis457Jmfa]
GO
ALTER ROLE [db_owner] ADD MEMBER [usrfinal]
GO
DROP TABLE IF EXISTS Serie;

CREATE TABLE Serie (
  id INT IDENTITY(1, 1) PRIMARY KEY,
  titulo VARCHAR(250) NOT NULL,
  sinopsis VARCHAR(5000) NOT NULL,
  director VARCHAR(100) NOT NULL,
  duracion INT NOT NULL,
  fechaEstreno DATE NOT NULL,
  registroActivo BIT NULL
);
CREATE TABLE Usuario (
    [id]              INT           IDENTITY (1, 1) NOT NULL,
    [usuario]         VARCHAR (12)  NOT NULL,
    [clave]           VARCHAR (250) NOT NULL,
    [rol] VARCHAR (100) NOT NULL,
    [registroActivo]  BIT           NULL
);


//INSERTAR DATOS EN LAS DIFERENTES TABLAS
INSERT INTO Usuario 
VALUES ('juanmanuel', '123456', 'Administrador', 'True');

INSERT INTO Serie 
VALUES ('Avengers', 'Acción', 'Elon Musk', '3', '09/08/12', 'True');


INSERT INTO Serie 
VALUES ('Spiderman', 'Marvel Super Hero', 'Kick nacsh', '4', '11/10/12', 'True');