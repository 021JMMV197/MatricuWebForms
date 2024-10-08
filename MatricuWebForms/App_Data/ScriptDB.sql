CREATE TABLE USUARIOS (
    ID INT PRIMARY KEY IDENTITY(1,1),
    NICKNAME NVARCHAR(100),
    CORREO NVARCHAR(100),
    CONTRASENNA NVARCHAR(100),
    ROL NVARCHAR(1),
    ADICIONADOPOR NVARCHAR(100),
    FECHAADICION DATETIME,
    MODIFICADOPOR NVARCHAR(100),
    FECHAMODIFICACION DATETIME
);
 
insert into Usuarios (NICKNAME,CORREO,CONTRASENNA, ROL, ADICIONADOPOR, FECHAADICION)
values ('admin', 'kbrenesc@castrocarazo.ac.cr', 'gallopinto2024*', 'A', 'sysadmin', getdate());

insert into Usuarios (NICKNAME,CORREO,CONTRASENNA, ROL, ADICIONADOPOR, FECHAADICION)
values ('admin', 'elote021197@gmail.com', 'mortadeladepollo1997', 'A', 'sysadmin', getdate());

select * from Usuarios;