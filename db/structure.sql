CREATE TABLE dbo.TUsuarios
	( nIdUsuario      int             NOT NULL
	, cCodUsuario     varchar(25)     NOT NULL
	, cClave          varbinary(8000)     NULL
	, cNombre         varchar(50)     NOT NULL
	, cCorreo         varchar(100)        NULL
	, bActivo         bit             NOT NULL
	, password_digest varchar(100)        NULL
	)

CREATE unique nonclustered INDEX IX_TUsuarios_cCodUsuario on dbo.TUsuarios(cCodUsuario)

ALTER TABLE dbo.TUsuarios ADD CONSTRAINT PK_TUsuarios PRIMARY KEY clustered (nIdUsuario)


CREATE TABLE dbo.TProgramas
	( nCodPrograma int             NOT NULL
	, sPrograma    varchar(20)     NOT NULL
	, sDescripcion varchar(100)         NULL
	, sModelos     varchar(200)        NULL
	)

ALTER TABLE dbo.TProgramas ADD CONSTRAINT PK_TProgramas PRIMARY KEY clustered (nCodPrograma)


CREATE TABLE dbo.TUsuariosProgramas
	( id           varchar(10)         NULL
	, nIdUsuario   int             NOT NULL
	, nCodPrograma int             NOT NULL
	, sPermiso     char(1)         NOT NULL
	, cCodUsuario  varchar(20)         NULL
	)

ALTER TABLE dbo.TUsuariosProgramas ADD CONSTRAINT PK_TUsuariosProgramas PRIMARY KEY clustered (nIdUsuario, nCodPrograma)