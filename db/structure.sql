CREATE TABLE dbo.TUsuarios
	( nIdUsuario      int             IDENTITY(1,1) NOT NULL
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
	, sDescripcion varchar(100)        NULL
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


CREATE TABLE dbo.TContajes
	( nCodContaje  int             NOT NULL
	, nContador    int             NOT NULL
	, cLiteral     varchar(15)     NOT NULL
	, cSQL         varchar(8000)   NOT NULL
	, cToolTipText varchar(250)        NULL
	)

ALTER TABLE dbo.TContajes ADD CONSTRAINT PK_TContajes PRIMARY KEY clustered (nCodContaje)


CREATE TABLE dbo.TFechasCargas
	( nId         int             NOT NULL
	, cLiteral    varchar(20)     NOT NULL
	, dFecha      datetime        NOT NULL
	, cSQL        varchar(8000)   NOT NULL
	, nUmbral     int             NOT NULL
	, dFchUmbral  datetime            NULL
	, nOrden      int                 NULL
	, dFchControl datetime        NOT NULL
	)

ALTER TABLE dbo.TFechasCargas ADD CONSTRAINT PK_TFechasCargas PRIMARY KEY clustered (nId)

CREATE TABLE dbo.TSedes
	( nCodSede               int             NOT NULL
	, nCodUni                int                 NULL
	, cNombre                varchar(100)    NOT NULL
	, cDireccion             varchar(100)        NULL
	, cCodPostal             varchar(5)          NULL
	, cPersonaContacto       varchar(50)         NULL
	, cTelefonoContacto      varchar(10)         NULL
	, cCortoFijo             varchar(10)           NULL
	, cMovilContacto         varchar(20)           NULL
	, cCortoMovil            varchar(10)           NULL
	, cFax                   varchar(10)         NULL
	, ceMailContacto         varchar(50)         NULL
	, nPCs                   int                 NULL
	, nCriticidad            int             NOT NULL
	, bCoincidenciaSAP       bit                 NULL
	, nCodEstado             int                 NULL
	, cPersonaContactoObserv varchar(500)        NULL
	, nDistrito              int                 NULL
	, nZona                  smallint            NULL
	, nCodEdificio           int                 NULL
	, bSedeToIP              bit                 NULL
	, bsedeprincipalvoz      bit                 NULL
	, bsedeprincipaldatos    bit                 NULL
	, nAscensor              int                 NULL
	, nCodCampus             int                 NULL
	, nCodLinDatosCampus     int                 NULL
	, cDevicePool            varchar(40)         NULL
	, cLocation              varchar(30)         NULL
	, nIdGrTACACS            int                 NULL
	, nIdAcronimo            int                 NULL
	, nNodo                  int                 NULL
	, nCodGestion            int                 NULL
	, cLatitud               varchar(50)         NULL
	, cLongitud              varchar(50)         NULL
	, cUsuarioAlta           varchar(25)     NOT NULL
	, dFchAlta               datetime        NOT NULL
	, cUsuarioModificacion   varchar(25)         NULL
	, dFchModificacion       datetime            NULL
	)

CREATE  nonclustered INDEX IX_CodigoPostal on dbo.TSedes(cCodPostal)

ALTER TABLE dbo.TSedes ADD CONSTRAINT PK_TSedes PRIMARY KEY clustered (nCodSede)


CREATE TABLE dbo.TEstadosSedes
	( nCodEstado   int             NOT NULL
	, cDescripcion varchar(50)         NULL
	)

ALTER TABLE dbo.TEstadosSedes ADD CONSTRAINT PK_TEstadosSedes PRIMARY KEY clustered (nCodEstado)


CREATE TABLE dbo.TAcronimosSedeEDR
	( nId          int             IDENTITY(1,1) NOT NULL
	, cCodigo      varchar(9)      NOT NULL
	, cDescripcion varchar(150)        NULL
	)

CREATE unique nonclustered INDEX IX_TAcronimosSedeEDR on dbo.TAcronimosSedeEDR(cCodigo)

ALTER TABLE dbo.TAcronimosSedeEDR ADD CONSTRAINT PK_TAcronimosSedeEDR PRIMARY KEY clustered (nId)


CREATE TABLE dbo.AXL_DevicePool
	( cDevicePool varchar(255)    NOT NULL
	, cCMG        varchar(50)         NULL
	, dFchControl datetime        NOT NULL
	)

ALTER TABLE dbo.AXL_DevicePool ADD CONSTRAINT PK_AXL_DevicePool PRIMARY KEY clustered (cDevicePool)


CREATE TABLE dbo.TUnidades
	( nCodUni        int             NOT NULL
	, nCodUniPadre   int                 NULL
	, cDescBreve     varchar(50)         NULL
	, cDenominacion  varchar(100)    NOT NULL
	, cCodCenCoste   varchar(10)         NULL
	, cDescAdicional varchar(80)         NULL
	, cDir           varchar(120)        NULL
	, cMunicipio     varchar(60)         NULL
	, cCodPostal     varchar(5)          NULL
	, ceMail         varchar(40)         NULL
	, nIdArea        int                 NULL
	, nOrder         int                 NULL
	, nOrderArea     nvarchar(100)       NULL
	, numorder       int                 NULL
	, ceMailUGD      varchar(60)         NULL
	, ancestry       varchar(250)        NULL
	)

CREATE  nonclustered INDEX IX_TUnidades_ancestry on dbo.TUnidades(ancestry)

CREATE  nonclustered INDEX IX_TUnidades_CodUniPadre on dbo.TUnidades(nCodUniPadre)

CREATE  nonclustered INDEX IX_TUnidades_idArea on dbo.TUnidades(nIdArea)

ALTER TABLE dbo.TUnidades ADD CONSTRAINT PK_TUnidades PRIMARY KEY clustered (nCodUni)

CREATE TABLE dbo.TetraPlanISSIs
 	( nISSI    int             NOT NULL
 	, nIdFlota int                 NULL
 	, nIdTipo  int                 NULL
 	, nRango   int             NOT NULL
 	)

ALTER TABLE dbo.TetraPlanISSIs ADD CONSTRAINT PK_TetraPlanISSIs PRIMARY KEY clustered (nISSI)
