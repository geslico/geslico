	/* Falta o está vacío un nombre de objeto o columna. Compruebe si todas las columnas de las instrucciones SELECT INTO tienen un nombre. Para otras instrucciones, busque si hay nombres de alias vacíos. No se permiten los alias definidos como "" o []. Cambie el alias por un nombre válido. */
	/* La base de datos '' no existe. Asegúrese de que ha escrito el nombre correctamente. */
	/* El objeto 'dbo.AFARIA_APP_BLACK_LIST' no tiene ningún índice o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.AFARIA_APP_BLACK_LIST' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AFARIA_APP_BLACK_LIST'. */
USE GESLICO
GO

CREATE TABLE dbo.AFARIA_APP_BLACK_LIST
	( cIMEI               varchar(15)         NULL
	, cClientFriendlyName varchar(20)         NULL
	, nIdEntorno          int             NOT NULL
	, nIdGrupo            int             NOT NULL
	, cPackageName        varchar(255)    NOT NULL
	, dFchControl         datetime        NOT NULL
	)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.AFARIA_APP_INSTALADAS' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AFARIA_APP_INSTALADAS'. */
USE GESLICO
GO

CREATE TABLE dbo.AFARIA_APP_INSTALADAS
	( nId                       int             NOT NULL
	, ClientUID                 int             NOT NULL
	, SoftwareName              nvarchar(510)   NOT NULL
	, SoftwareSize              int                 NULL
	, SoftwareVersion           nvarchar(160)       NULL
	, ClientCategory            int             NOT NULL
	, AppInstallCount           int                 NULL
	, AppUnInstallCount         int                 NULL
	, AppDisabled               varchar(8)          NULL
	, AppInstallationDisabled   varchar(8)          NULL
	, AppUninstallationDisabled varchar(8)          NULL
	, dFchControl               datetime        NOT NULL
	)
GO

ALTER TABLE dbo.AFARIA_APP_INSTALADAS ADD CONSTRAINT PK_AFARIA_APP_INSTALADAS PRIMARY KEY clustered (nId)
GO

	/* El objeto 'dbo.AFARIA_APP_WHITE_LIST' no tiene ningún índice o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.AFARIA_APP_WHITE_LIST' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AFARIA_APP_WHITE_LIST'. */
USE GESLICO
GO

CREATE TABLE dbo.AFARIA_APP_WHITE_LIST
	( cIMEI               varchar(15)         NULL
	, cClientFriendlyName varchar(20)         NULL
	, nIdEntorno          int             NOT NULL
	, nIdGrupo            int             NOT NULL
	, cPackageName        varchar(255)    NOT NULL
	, dFchControl         datetime        NOT NULL
	)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.AFARIA_BLUETOOTH' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AFARIA_BLUETOOTH'. */
USE GESLICO
GO

CREATE TABLE dbo.AFARIA_BLUETOOTH
	( cIMEI                       varchar(15)         NULL
	, cClientFriendlyName         varchar(20)         NULL
	, nIdEntorno                  int             NOT NULL
	, nIdGrupo                    int             NOT NULL
	, cSupported                  varchar(16)         NULL
	, cStatus                     varchar(16)         NULL
	, cDiscoverable               varchar(8)          NULL
	, cConnectable                varchar(8)          NULL
	, cOutgoingCallsAllowed       varchar(8)          NULL
	, cDesktopConnectivityEnabled varchar(8)          NULL
	, cDiscoverableEnabled        varchar(8)          NULL
	, cPairingEnabled             varchar(8)          NULL
	, cLimitedDiscoverableEnabled varchar(8)          NULL
	, dFchControl                 datetime            NULL
	)
GO

CREATE  nonclustered INDEX IX_AFARIA_BLUETOOTH on dbo.AFARIA_BLUETOOTH(cIMEI)
GO

	/* El objeto 'dbo.AFARIA_ENVIO_INVENTARIO' no tiene ningún índice o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.AFARIA_ENVIO_INVENTARIO' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AFARIA_ENVIO_INVENTARIO'. */
USE GESLICO
GO

CREATE TABLE dbo.AFARIA_ENVIO_INVENTARIO
	( nIdEntorno      int             NOT NULL
	, nClientUID      int             NOT NULL
	, cUserName       varchar(256)        NULL
	, cIMEI           varchar(15)         NULL
	, LastConnectDate datetime            NULL
	, dFchControl     datetime        NOT NULL
	)
GO

	/* El objeto 'dbo.AFARIA_LOCALIZACION' no tiene ningún índice o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.AFARIA_LOCALIZACION' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AFARIA_LOCALIZACION'. */
USE GESLICO
GO

CREATE TABLE dbo.AFARIA_LOCALIZACION
	( cIMEI                    varchar(15)         NULL
	, cClientFriendlyName      nvarchar(40)        NULL
	, nIdEntorno               int             NOT NULL
	, nIdGrupo                 int             NOT NULL
	, cLocationProviderStates  varchar(64)         NULL
	, cTiene_Localización_gps varchar(2)          NULL
	, dFchControl              datetime            NULL
	)
GO

	/* El objeto 'dbo.AFARIA_RESTRICCIONES' no tiene ningún índice o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.AFARIA_RESTRICCIONES' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AFARIA_RESTRICCIONES'. */
USE GESLICO
GO

CREATE TABLE dbo.AFARIA_RESTRICCIONES
	( cIMEI                          varchar(15)         NULL
	, cClientFriendlyName            varchar(20)         NULL
	, nIdEntorno                     int             NOT NULL
	, nIdGrupo                       int             NOT NULL
	, cIsUsbDebuggingEnabled         varchar(8)          NULL
	, cIsUsbTetheringEnabled         varchar(8)          NULL
	, cIsWifiTetheringEnabled        varchar(8)          NULL
	, cIsMultipleUsersAllowed        varchar(8)          NULL
	, cIsUnknownSourceInstallEnabled varchar(8)          NULL
	, cIsRemoveDeviceAdminEnabled    varchar(8)          NULL
	, dFchControl                    datetime            NULL
	)
GO

	/* El objeto 'dbo.AFARIA_ROAMING' no tiene ningún índice o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.AFARIA_ROAMING' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AFARIA_ROAMING'. */
USE GESLICO
GO

CREATE TABLE dbo.AFARIA_ROAMING
	( cIMEI               varchar(15)         NULL
	, cClientFriendlyName nvarchar(40)        NULL
	, nIdEntorno          int             NOT NULL
	, nIdGrupo            int             NOT NULL
	, cRoamingSyncEnabled varchar(8)          NULL
	, cRoamingPushEnabled varchar(8)          NULL
	, cAllowDataRoaming   varchar(8)          NULL
	, dFchControl         datetime            NULL
	)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.AFARIA_SECURITY_PWD' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AFARIA_SECURITY_PWD'. */
USE GESLICO
GO

CREATE TABLE dbo.AFARIA_SECURITY_PWD
	( cIMEI                  varchar(15)         NULL
	, cClientFriendlyName    varchar(20)         NULL
	, nIdEntorno             int             NOT NULL
	, nIdGrupo               int             NOT NULL
	, cPwdQuality            varchar(15)         NULL
	, nPwdMaxLength          int                 NULL
	, nPwdMinLength          int                 NULL
	, nPwdMaxFailedForWipe   int                 NULL
	, nPwdExpirationTimeout  int                 NULL
	, cPwdActiveIsSufficient varchar(8)          NULL
	, nPwdHistoryLength      int                 NULL
	, dFchControl            datetime        NOT NULL
	)
GO

CREATE  nonclustered INDEX IX_AFARIA_SECURITY_PWD_IMEI_cClientFriendlyName on dbo.AFARIA_SECURITY_PWD(cClientFriendlyName)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.AFARIA_TENANT' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AFARIA_TENANT'. */
USE GESLICO
GO

CREATE TABLE dbo.AFARIA_TENANT
	( TenantID    int             NOT NULL
	, Name        varchar(255)    NOT NULL
	, Description varchar(255)        NULL
	, State       varchar(10)     NOT NULL
	, dFchControl datetime        NOT NULL
	)
GO

ALTER TABLE dbo.AFARIA_TENANT ADD CONSTRAINT PK_AFARIA_TENANT PRIMARY KEY clustered (TenantID)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.AFARIA_V_ALL_CLIENTS' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AFARIA_V_ALL_CLIENTS'. */
USE GESLICO
GO

CREATE TABLE dbo.AFARIA_V_ALL_CLIENTS
	( ClientGUID             char(38)        NOT NULL
	, ClientUID              int             NOT NULL
	, ClientName             nvarchar(512)       NULL
	, ClientFriendlyName     nvarchar(510)       NULL
	, ClientFriendlyNameType nvarchar(16)        NULL
	, SelfServiceUserName    nvarchar(510)       NULL
	, ClientCategory         int             NOT NULL
	, ClientCategoryName     varchar(40)     NOT NULL
	, Model                  nvarchar(510)       NULL
	, FirstConnectDate       datetime            NULL
	, LastConnectDate        datetime            NULL
	, OSVersion              varchar(255)        NULL
	, OSShell                varchar(32)     NOT NULL
	, CodeSigner             varchar(64)     NOT NULL
	, Approved               tinyint             NULL
	, TenantID               int             NOT NULL
	, PhoneNumber            varchar(64)         NULL
	, IMSI                   varchar(40)         NULL
	, IMEI                   varchar(24)         NULL
	, SerialNumber           varchar(255)        NULL
	, Corporate              tinyint         NOT NULL
	, DirectoryId            nvarchar(510)       NULL
	, DeviceState            tinyint             NULL
	, DeviceUser             nvarchar(520)       NULL
	, UserName               nvarchar(512)       NULL
	, UDID                   char(40)            NULL
	, NitroDesk              int             NOT NULL
	, dFchControl            datetime        NOT NULL
	, PhoneSIMSerialNumber   varchar(24)         NULL
	)
GO

CREATE  nonclustered INDEX IX_A_V_ALL_CLIENTS_ClientUID on dbo.AFARIA_V_ALL_CLIENTS(ClientUID)
GO

CREATE  nonclustered INDEX IX_A_V_ALL_CLIENTS_IMEI on dbo.AFARIA_V_ALL_CLIENTS(IMEI)
GO

ALTER TABLE dbo.AFARIA_V_ALL_CLIENTS ADD CONSTRAINT PK_AFARIA_V_ALL_CLIENTS PRIMARY KEY clustered (ClientGUID)
GO

	/* El objeto 'dbo.AFARIA_V_ALL_CLIENTS_BCK151105' no tiene ningún índice o el usuario no tiene permisos. */
	/* No hay ninguna restricción definida en el objeto 'dbo.AFARIA_V_ALL_CLIENTS_BCK151105' o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.AFARIA_V_ALL_CLIENTS_BCK151105' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AFARIA_V_ALL_CLIENTS_BCK151105'. */
USE GESLICO
GO

CREATE TABLE dbo.AFARIA_V_ALL_CLIENTS_BCK151105
	( ClientGUID             char(38)        NOT NULL
	, ClientUID              int             NOT NULL
	, ClientName             nvarchar(512)       NULL
	, ClientFriendlyName     nvarchar(510)       NULL
	, ClientFriendlyNameType nvarchar(16)        NULL
	, SelfServiceUserName    nvarchar(510)       NULL
	, ClientCategory         int             NOT NULL
	, ClientCategoryName     varchar(40)     NOT NULL
	, Model                  nvarchar(510)       NULL
	, FirstConnectDate       datetime            NULL
	, LastConnectDate        datetime            NULL
	, OSVersion              varchar(255)        NULL
	, OSShell                varchar(32)     NOT NULL
	, CodeSigner             varchar(64)     NOT NULL
	, Approved               tinyint             NULL
	, TenantID               int             NOT NULL
	, PhoneNumber            varchar(64)         NULL
	, IMSI                   varchar(40)         NULL
	, IMEI                   varchar(24)         NULL
	, SerialNumber           varchar(255)        NULL
	, Corporate              tinyint         NOT NULL
	, DirectoryId            nvarchar(510)       NULL
	, DeviceState            tinyint             NULL
	, DeviceUser             nvarchar(520)       NULL
	, UserName               nvarchar(512)       NULL
	, UDID                   char(40)            NULL
	, NitroDesk              int             NOT NULL
	, dFchControl            datetime        NOT NULL
	)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.AFARIA_V_ALL_GROUPS' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AFARIA_V_ALL_GROUPS'. */
USE GESLICO
GO

CREATE TABLE dbo.AFARIA_V_ALL_GROUPS
	( GroupId               int             NOT NULL
	, Name                  varchar(255)        NULL
	, QueryId               int                 NULL
	, Description           varchar(255)        NULL
	, MemberUpdateTimeStamp datetime            NULL
	, Type                  int                 NULL
	, TenantId              int                 NULL
	, dFchControl           datetime        NOT NULL
	)
GO

CREATE  nonclustered INDEX IX_AFARIA_V_ALL_GROUPS_TenantId on dbo.AFARIA_V_ALL_GROUPS(TenantId)
GO

ALTER TABLE dbo.AFARIA_V_ALL_GROUPS ADD CONSTRAINT PK_AFARIA_V_ALL_GROUPS PRIMARY KEY clustered (GroupId)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.AFARIA_V_ALL_GROUPS_ALL_MEMBERS' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AFARIA_V_ALL_GROUPS_ALL_MEMBERS'. */
USE GESLICO
GO

CREATE TABLE dbo.AFARIA_V_ALL_GROUPS_ALL_MEMBERS
	( TenantId       int             NOT NULL
	, GroupId        int             NOT NULL
	, DeviceId       int             NOT NULL
	, ClientCategory int                 NULL
	, Type           int                 NULL
	, dFchControl    datetime            NULL
	)
GO

ALTER TABLE dbo.AFARIA_V_ALL_GROUPS_ALL_MEMBERS ADD CONSTRAINT PK_AFARIA_V_ALL_GROUPS_ALL_MEMBERS PRIMARY KEY clustered (TenantId, GroupId, DeviceId)
GO

	/* El objeto 'dbo.AFARIA_WIFI' no tiene ningún índice o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.AFARIA_WIFI' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AFARIA_WIFI'. */
USE GESLICO
GO

CREATE TABLE dbo.AFARIA_WIFI
	( cIMEI                        varchar(15)         NULL
	, cClientFriendlyName          varchar(20)         NULL
	, nIdEntorno                   int             NOT NULL
	, nIdGrupo                     int             NOT NULL
	, cAllowUserProfiles           varchar(8)          NULL
	, cAllowUserPolicyChanges      varchar(8)          NULL
	, cPasswordHidden              varchar(8)          NULL
	, cPromptCredentialsEnabled    varchar(8)          NULL
	, cTlsCertificateSecurityLevel varchar(8)          NULL
	, cMinimumRequiredSecurity     varchar(30)         NULL
	, dFchControl                  datetime            NULL
	)
GO

	/* El objeto 'dbo.AFARIA_WIFI_INFO' no tiene ningún índice o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.AFARIA_WIFI_INFO' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AFARIA_WIFI_INFO'. */
USE GESLICO
GO

CREATE TABLE dbo.AFARIA_WIFI_INFO
	( cIMEI                varchar(15)         NULL
	, cClientFriendlyName  varchar(20)         NULL
	, nIdEntorno           int             NOT NULL
	, nIdGrupo             int             NOT NULL
	, cSSID                varchar(255)        NULL
	, cNetworkLinkSecurity varchar(255)        NULL
	, cDHCPEnabled         varchar(8)          NULL
	, cIsNetworkBlocked    varchar(8)          NULL
	, dFchControl          datetime            NULL
	)
GO

	/* El objeto 'dbo.amper_intentollamada' no tiene ningún índice o el usuario no tiene permisos. */
	/* No hay ninguna restricción definida en el objeto 'dbo.amper_intentollamada' o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.amper_intentollamada' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.amper_intentollamada'. */
USE GESLICO
GO

CREATE TABLE dbo.amper_intentollamada
	( extension varchar(30)     NOT NULL
	, particion varchar(50)     NOT NULL
	, fechahora datetime        NOT NULL
	)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.amper_vistaalerting' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.amper_vistaalerting'. */
USE GESLICO
GO

CREATE TABLE dbo.amper_vistaalerting
	( extension    varchar(30)     NOT NULL
	, particion    varchar(50)     NOT NULL
	, alertingname varchar(50)         NULL
	, dFchControl  datetime        NOT NULL
	)
GO

ALTER TABLE dbo.amper_vistaalerting ADD CONSTRAINT PK_amper_vistaalerting PRIMARY KEY clustered (extension, particion)
GO

	/* El objeto 'dbo.amper_vistaenduserdevicelines' no tiene ningún índice o el usuario no tiene permisos. */
	/* No hay ninguna restricción definida en el objeto 'dbo.amper_vistaenduserdevicelines' o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.amper_vistaenduserdevicelines' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.amper_vistaenduserdevicelines'. */
USE GESLICO
GO

CREATE TABLE dbo.amper_vistaenduserdevicelines
	( extension varchar(45)     NOT NULL
	, particion varchar(50)     NOT NULL
	, device    varchar(50)     NOT NULL
	, endUser   varchar(45)         NULL
	)
GO

	/* El objeto 'dbo.amper_vistaerrorenduserdeviceline' no tiene ningún índice o el usuario no tiene permisos. */
	/* No hay ninguna restricción definida en el objeto 'dbo.amper_vistaerrorenduserdeviceline' o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.amper_vistaerrorenduserdeviceline' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.amper_vistaerrorenduserdeviceline'. */
USE GESLICO
GO

CREATE TABLE dbo.amper_vistaerrorenduserdeviceline
	( id        int             NOT NULL
	, extension varchar(45)         NULL
	, particion varchar(45)         NULL
	, device    varchar(45)         NULL
	, endUser   varchar(45)         NULL
	, error     varchar(250)        NULL
	, fechahora datetime            NULL
	)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.amper_vistaextensionescandado' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.amper_vistaextensionescandado'. */
USE GESLICO
GO

CREATE TABLE dbo.amper_vistaextensionescandado
	( extension                    varchar(20)     NOT NULL
	, particion                    varchar(45)     NOT NULL
	, estadocandado                varchar(45)     NOT NULL
	, tipocandado                  varchar(45)     NOT NULL
	, fechahoraultimaactivacion    datetime        NOT NULL
	, fechahoraultimadesactivacion datetime        NOT NULL
	, dFchControl                  datetime            NULL
	)
GO

CREATE  nonclustered INDEX IX_amper_vistaextensionescandado on dbo.amper_vistaextensionescandado(extension, particion)
GO

	/* El objeto 'dbo.amper_vistajefesconsecretariasdegrupo' no tiene ningún índice o el usuario no tiene permisos. */
	/* No hay ninguna restricción definida en el objeto 'dbo.amper_vistajefesconsecretariasdegrupo' o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.amper_vistajefesconsecretariasdegrupo' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.amper_vistajefesconsecretariasdegrupo'. */
USE GESLICO
GO

CREATE TABLE dbo.amper_vistajefesconsecretariasdegrupo
	( secretaria varchar(20)     NOT NULL
	, jefe       varchar(45)     NOT NULL
	)
GO

	/* El objeto 'dbo.amper_vistajefescontiposecretariaydesvio' no tiene ningún índice o el usuario no tiene permisos. */
	/* No hay ninguna restricción definida en el objeto 'dbo.amper_vistajefescontiposecretariaydesvio' o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.amper_vistajefescontiposecretariaydesvio' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.amper_vistajefescontiposecretariaydesvio'. */
USE GESLICO
GO

CREATE TABLE dbo.amper_vistajefescontiposecretariaydesvio
	( extension                    varchar(20)     NOT NULL
	, nombrectiroutepoint          varchar(45)     NOT NULL
	, estado                       varchar(45)     NOT NULL
	, extensionSecre               varchar(20)     NOT NULL
	, tiposecretaria               varchar(45)     NOT NULL
	, fechahoraultimoarranque      datetime        NOT NULL
	, fechahoraultimaconfiguracion datetime        NOT NULL
	)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.amper_vistalabels' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.amper_vistalabels'. */
USE GESLICO
GO

CREATE TABLE dbo.amper_vistalabels
	( extension   nvarchar(60)    NOT NULL
	, particion   nvarchar(100)   NOT NULL
	, device      nvarchar(100)   NOT NULL
	, display     nvarchar(60)        NULL
	, linetext    nvarchar(60)        NULL
	, epnm        nchar(48)           NULL
	, dFchControl datetime        NOT NULL
	)
GO

ALTER TABLE dbo.amper_vistalabels ADD CONSTRAINT PK_amper_vistalabels PRIMARY KEY clustered (extension, particion, device)
GO

	/* El objeto 'dbo.amper_vistaregistrossincronizacion' no tiene ningún índice o el usuario no tiene permisos. */
	/* No hay ninguna restricción definida en el objeto 'dbo.amper_vistaregistrossincronizacion' o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.amper_vistaregistrossincronizacion' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.amper_vistaregistrossincronizacion'. */
USE GESLICO
GO

CREATE TABLE dbo.amper_vistaregistrossincronizacion
	( id                      int             NOT NULL
	, extension               varchar(45)         NULL
	, particion               varchar(45)         NULL
	, device                  varchar(45)         NULL
	, endUser                 varchar(45)         NULL
	, ccontrolleddeviceenduer int                 NULL
	, ccappcandado            int                 NULL
	, ccsuscandado            int                 NULL
	, ccaltacandado           int                 NULL
	, cctocall                int                 NULL
	, fechahora               datetime            NULL
	)
GO

	/* El objeto 'dbo.amper_vistavalidacionenduserdeviceline' no tiene ningún índice o el usuario no tiene permisos. */
	/* No hay ninguna restricción definida en el objeto 'dbo.amper_vistavalidacionenduserdeviceline' o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.amper_vistavalidacionenduserdeviceline' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.amper_vistavalidacionenduserdeviceline'. */
USE GESLICO
GO

CREATE TABLE dbo.amper_vistavalidacionenduserdeviceline
	( id             int             NOT NULL
	, extension      varchar(45)         NULL
	, particion      varchar(45)         NULL
	, device         varchar(45)         NULL
	, endUser        varchar(45)         NULL
	, causa          varchar(200)        NULL
	, fechahora      datetime            NULL
	, tipovalidacion varchar(45)         NULL
	)
GO

	/* El objeto 'dbo.ATS_AddressBook' no tiene ningún índice o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.ATS_AddressBook' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.ATS_AddressBook'. */
USE GESLICO
GO

CREATE TABLE dbo.ATS_AddressBook
	( nID         int             NOT NULL
	, RUI         nvarchar(32)    NOT NULL
	, ISSI        int             NOT NULL
	, DepartNo    nvarchar(20)    NOT NULL
	, Note        nvarchar(80)        NULL
	, Type        nvarchar(2)         NULL
	, dFchControl datetime            NULL
	)
GO

	/* El objeto 'dbo.ATS_SentRecvedMessages' no tiene ningún índice o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.ATS_SentRecvedMessages' o el usuario no tiene permisos para hacer referencia a tablas. */
USE GESLICO
GO

CREATE TABLE dbo.ATS_SentRecvedMessages
	( ID               int             NOT NULL
	, MessageRef       int                 NULL
	, UDHMessageRef    int                 NULL
	, MsgChunk         nvarchar(-1)        NULL
	, ChunksCount      int                 NULL
	, IsErrorMsg       bit             NOT NULL
	, IsUnicode        bit             NOT NULL
	, Text             nvarchar(-1)        NULL
	, Status           nvarchar(100)       NULL
	, Department       nvarchar(100)       NULL
	, ISSI             int                 NULL
	, PI               int                 NULL
	, TimeOut          int                 NULL
	, Alias            nvarchar(100)       NULL
	, Date             datetime            NULL
	, Time             datetime            NULL
	, IsBroadcast      bit             NOT NULL
	, IsGSSI           bit             NOT NULL
	, IsConReq         bit             NOT NULL
	, IsRecReq         bit             NOT NULL
	, IsStoReq         bit             NOT NULL
	, IsTSReq          bit             NOT NULL
	, IsReceivedMsg    bit             NOT NULL
	, RegionID         int                 NULL
	, Image            int                 NULL
	, RegionName       nvarchar(100)       NULL
	, ChannelSelection int                 NULL
	, dFchMensaje      datetime            NULL
	, dFchControl      datetime            NULL
	)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.audit' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.audit'. */
USE GESLICO
GO

CREATE TABLE dbo.audit
	( idAudit int             NOT NULL
	, cUser   varchar(100)        NULL
	, cHost   varchar(100)        NULL
	, cXML    varchar(-1)         NULL
	, dFecha  datetime        NOT NULL
	)
GO

ALTER TABLE dbo.audit ADD CONSTRAINT PK_audit PRIMARY KEY clustered (idAudit)
GO

	/* El objeto 'dbo.AUX_16132' no tiene ningún índice o el usuario no tiene permisos. */
	/* No hay ninguna restricción definida en el objeto 'dbo.AUX_16132' o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_16132' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_16132'. */
USE GESLICO
GO

CREATE TABLE dbo.AUX_16132
	( clinea          int                 NULL
	, ccorto          int                 NULL
	, csede           varchar(100)        NULL
	, nllamadasAyer   int                 NULL
	, nfallosAyer     int                 NULL
	, nfallosSemana   int                 NULL
	, nllamadasSemana int                 NULL
	, paciertosSem    decimal(6,2)        NULL
	, pfallosSem      decimal(6,2)        NULL
	, mPonde          decimal(6,2)        NULL
	, nllamadasHace2d int                 NULL
	, nfallosHace2d   int                 NULL
	, nllamadasHace3d int                 NULL
	, nfallosHace3d   int                 NULL
	, nllamadasHace4d int                 NULL
	, nfallosHace4d   int                 NULL
	, nllamadasHace5d int                 NULL
	, nfallosHace5d   int                 NULL
	, nllamadasHace6d int                 NULL
	, nfallosHace6d   int                 NULL
	, nllamadasHace7d int                 NULL
	, nfallosHace7d   int                 NULL
	)
GO

	/* El objeto 'dbo.AUX_16133' no tiene ningún índice o el usuario no tiene permisos. */
	/* No hay ninguna restricción definida en el objeto 'dbo.AUX_16133' o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_16133' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_16133'. */
USE GESLICO
GO

CREATE TABLE dbo.AUX_16133
	( cnombre         varchar(40)         NULL
	, clinea          int                 NULL
	, ccorto          int                 NULL
	, nfallosAyer     int                 NULL
	, nllamadasAyer   int                 NULL
	, nfallosSemana   int                 NULL
	, nllamadasSemana int                 NULL
	, paciertosSem    int                 NULL
	, pfallosSem      int                 NULL
	, mponde          int                 NULL
	)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_AccesosIntranet' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_AccesosIntranet'. */
USE GESLICO
GO

CREATE TABLE dbo.AUX_AccesosIntranet
	( Date              datetime        NOT NULL
	, Time              nvarchar(20)    NOT NULL
	, MessageType       nvarchar(60)    NOT NULL
	, UserName          nvarchar(60)    NOT NULL
	, GroupName         nvarchar(80)    NOT NULL
	, CallerID          nvarchar(60)    NOT NULL
	, NASPort           nvarchar(60)    NOT NULL
	, NASIPAddress      nvarchar(60)    NOT NULL
	, SourceNAS         nvarchar(60)        NULL
	, FilterInformation nvarchar(60)    NOT NULL
	, dFchControl       datetime        NOT NULL
	)
GO

CREATE  nonclustered INDEX IX_AUX_AccesosIntranet_Callerid on dbo.AUX_AccesosIntranet(CallerID)
GO

CREATE  nonclustered INDEX IX_AUX_AccesosIntranet_datetime on dbo.AUX_AccesosIntranet(Date, Time)
GO

CREATE  nonclustered INDEX IX_AUX_AccesosIntranet_user on dbo.AUX_AccesosIntranet(UserName)
GO

	/* El objeto 'dbo.AUX_Afaria_Directorios' no tiene ningún índice o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_Afaria_Directorios' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_Afaria_Directorios'. */
USE GESLICO
GO

CREATE TABLE dbo.AUX_Afaria_Directorios
	( cRuta                    varchar(500)        NULL
	, dUltimaFechaModificacion datetime            NULL
	, cAplicacion              varchar(50)         NULL
	, cVersionCode             varchar(50)         NULL
	, cSoftwareVersion         varchar(50)         NULL
	, cFchControl              datetime            NULL
	)
GO

	/* El objeto 'dbo.AUX_ALBARAN_TOTAL_CISCO' no tiene ningún índice o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_ALBARAN_TOTAL_CISCO' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_ALBARAN_TOTAL_CISCO'. */
USE GESLICO
GO

CREATE TABLE dbo.AUX_ALBARAN_TOTAL_CISCO
	( Serial Number                        nvarchar(510)       NULL
	, Product ID                           nvarchar(510)       NULL
	, Product Type                         nvarchar(510)       NULL
	, Product Family                       nvarchar(510)       NULL
	, Valid SN Flag                        nvarchar(510)       NULL
	, End of Product Sale Date             nvarchar(510)       NULL
	, End of New Service Attach Date       nvarchar(510)       NULL
	, LDoS                                 nvarchar(510)       NULL
	, LDOS FY                              float               NULL
	, Product Bill to GU Company Name      nvarchar(510)       NULL
	, Product SO                           float               NULL
	, Install Site GU Company Name         nvarchar(510)       NULL
	, Install Site GU Company Target ID    float               NULL
	, Install Site CSC Company Target Name nvarchar(510)       NULL
	, Install Site Name                    nvarchar(510)       NULL
	, Install Site Address 1               nvarchar(510)       NULL
	, Service SO                           float               NULL
	, Contract #                           float               NULL
	, Contract Type                        nvarchar(510)       NULL
	, Service Level Rollup                 nvarchar(510)       NULL
	, Contract Start Date                  float               NULL
	, Contract End Date                    float               NULL
	, Coverage                             nvarchar(510)       NULL
	, Covered Line Status                  nvarchar(510)       NULL
	, LDOS FY Edit                         float               NULL
	, dFchControl                          datetime            NULL
	)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_BP_Categorias' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_BP_Categorias'. */
USE GESLICO
GO

CREATE TABLE dbo.AUX_BP_Categorias
	( nCodCentralita int             NOT NULL
	, nPosicion      int             NOT NULL
	, nCategoria     smallint        NOT NULL
	, nVersion       smallint        NOT NULL
	, dFchDescarga   datetime        NOT NULL
	, dFchControl    datetime        NOT NULL
	)
GO

ALTER TABLE dbo.AUX_BP_Categorias ADD CONSTRAINT PK_AUX_BP_Categorias PRIMARY KEY clustered (nCodCentralita, nPosicion)
GO

	/* El objeto 'dbo.AUX_BP_Centralitas' no tiene ningún índice o el usuario no tiene permisos. */
	/* No hay ninguna restricción definida en el objeto 'dbo.AUX_BP_Centralitas' o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_BP_Centralitas' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_BP_Centralitas'. */
USE GESLICO
GO

CREATE TABLE dbo.AUX_BP_Centralitas
	( ex_id          int             NOT NULL
	, ex_name        char(40)        NOT NULL
	, exs_modem_no   float               NULL
	, nCodCentralita int                 NULL
	, dFchDescarga   datetime            NULL
	, dFchControl    datetime            NULL
	)
GO

	/* El objeto 'dbo.AUX_BP_IDQ' no tiene ningún índice o el usuario no tiene permisos. */
	/* No hay ninguna restricción definida en el objeto 'dbo.AUX_BP_IDQ' o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_BP_IDQ' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_BP_IDQ'. */
USE GESLICO
GO

CREATE TABLE dbo.AUX_BP_IDQ
	( nCodCentralita int             NOT NULL
	, nPosicion      int             NOT NULL
	, cTipoExtension varchar(2)      NOT NULL
	, nST            smallint        NOT NULL
	, nSN            smallint        NOT NULL
	, nTYPE          smallint        NOT NULL
	, nVersion       smallint        NOT NULL
	, dFchDescarga   datetime        NOT NULL
	, dFchControl    datetime        NOT NULL
	)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_BP_Posiciones' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_BP_Posiciones'. */
USE GESLICO
GO

CREATE TABLE dbo.AUX_BP_Posiciones
	( nCodCentralita int             NOT NULL
	, nPosicion      int             NOT NULL
	, nLinea         int                 NULL
	, nNumCorto      int                 NULL
	, nVersion       smallint        NOT NULL
	, dFchDescarga   datetime        NOT NULL
	, dFchControl    datetime        NOT NULL
	)
GO

CREATE  nonclustered INDEX IX_AuxBpPosCorto on dbo.AUX_BP_Posiciones(nNumCorto)
GO

CREATE  nonclustered INDEX IX_AuxBpPosLinea on dbo.AUX_BP_Posiciones(nLinea)
GO

ALTER TABLE dbo.AUX_BP_Posiciones ADD CONSTRAINT PK_AUX_BP_Posiciones PRIMARY KEY clustered (nCodCentralita, nPosicion)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_BP_THardware' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_BP_THardware'. */
USE GESLICO
GO

CREATE TABLE dbo.AUX_BP_THardware
	( nCodCentralita int             NOT NULL
	, nSlot          int             NOT NULL
	, cNombre        varchar(30)     NOT NULL
	, cROF           varchar(30)     NOT NULL
	, dFchDescarga   datetime        NOT NULL
	, dFchControl    datetime        NOT NULL
	)
GO

ALTER TABLE dbo.AUX_BP_THardware ADD CONSTRAINT PK_AUX_BP_THardware PRIMARY KEY clustered (nCodCentralita, nSlot)
GO

	/* El objeto 'dbo.AUX_CMR' no tiene ningún índice o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_CMR' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_CMR'. */
USE GESLICO
GO

CREATE TABLE dbo.AUX_CMR
	( cdrRecordType                   varchar(50)         NULL
	, globalCallID_callManagerId      varchar(50)         NULL
	, globalCallID_callId             varchar(50)         NULL
	, orignodeId                      varchar(50)         NULL
	, destnodeId                      varchar(50)         NULL
	, origlegcallIdentifier           varchar(50)         NULL
	, destlegidentifier               varchar(50)         NULL
	, orignumberPacketsSent           varchar(50)         NULL
	, orignumberOctetsSent            varchar(50)         NULL
	, orignumberPacketsReceived       varchar(50)         NULL
	, orignumberOctetsReceived        varchar(50)         NULL
	, orignumberPacketsLost           varchar(50)         NULL
	, destnumberPacketsSent           varchar(50)         NULL
	, destnumberOctetsSent            varchar(50)         NULL
	, destnumberPacketsReceived       varchar(50)         NULL
	, destnumberOctetsReceived        varchar(50)         NULL
	, destnumberPacketsLost           varchar(50)         NULL
	, origjitter                      varchar(50)         NULL
	, destjitter                      varchar(50)         NULL
	, origlatency                     varchar(50)         NULL
	, destlatency                     varchar(50)         NULL
	, pkid                            varchar(50)     NOT NULL
	, origdeviceName                  varchar(50)         NULL
	, destdeviceName                  varchar(50)         NULL
	, origvarVQMetrics                varchar(255)        NULL
	, destvarVQMetrics                varchar(255)        NULL
	, globalCallId_ClusterID          varchar(50)         NULL
	, callingPartyNumber              varchar(50)         NULL
	, finalCalledPartyNumber          varchar(50)         NULL
	, callingPartyNumberPartition     varchar(50)         NULL
	, finalCalledPartyNumberPartition varchar(50)         NULL
	, dFchControl                     datetime            NULL
	)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_CoberturasIbercom' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_CoberturasIbercom'. */
USE GESLICO
GO

CREATE TABLE dbo.AUX_CoberturasIbercom
	( nLinea     int                 NULL
	, nNumCorto  int                 NULL
	, nCobertura int                 NULL
	, nRAI       int                 NULL
	, cExtension char(1)             NULL
	, nCodModelo int                 NULL
	, dFchAlta   datetime            NULL
	)
GO

CREATE  nonclustered INDEX IX_nLinea_CoberturasIbercom on dbo.AUX_CoberturasIbercom(nLinea)
GO

CREATE  nonclustered INDEX IX_nNumCorto_CoberturasIbercom on dbo.AUX_CoberturasIbercom(nNumCorto)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_ElectronicaTACACS' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_ElectronicaTACACS'. */
USE GESLICO
GO

CREATE TABLE dbo.AUX_ElectronicaTACACS
	( cEquipo     varchar(75)     NOT NULL
	, cIPGestion  varchar(50)     NOT NULL
	, cTipo       varchar(50)         NULL
	, cGrupo      varchar(50)         NULL
	, dFchControl datetime        NOT NULL
	)
GO

CREATE  nonclustered INDEX IX_AUX_ElectronicaTACACS on dbo.AUX_ElectronicaTACACS(cEquipo, cIPGestion)
GO

	/* El objeto 'dbo.AUX_EMailUGD' no tiene ningún índice o el usuario no tiene permisos. */
	/* No hay ninguna restricción definida en el objeto 'dbo.AUX_EMailUGD' o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_EMailUGD' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_EMailUGD'. */
USE GESLICO
GO

CREATE TABLE dbo.AUX_EMailUGD
	( nIdLista       int             NOT NULL
	, nCodUni        int             NOT NULL
	, cemail         varchar(100)    NOT NULL
	, nIdArea        int             NOT NULL
	, cemailSGT      varchar(100)        NULL
	, cPassword      nchar(20)           NULL
	, nLineaReceptor nchar(50)           NULL
	, neMailReceptor varchar(100)        NULL
	, cReceptor      varchar(100)        NULL
	)
GO

	/* El objeto 'dbo.AUX_EntradaTerminalesNuevos' no tiene ningún índice o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_EntradaTerminalesNuevos' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_EntradaTerminalesNuevos'. */
USE GESLICO
GO

CREATE TABLE dbo.AUX_EntradaTerminalesNuevos
	( cIMEI            varchar(50)         NULL
	, cNumSerie        varchar(50)         NULL
	, cMarca           varchar(50)         NULL
	, cModelo          varchar(50)         NULL
	, cAlmacen         varchar(50)         NULL
	, cEstado          varchar(50)         NULL
	, cContrato        varchar(50)         NULL
	, cObservaciones   varchar(255)        NULL
	, cSAT             varchar(50)         NULL
	, cPedido          varchar(50)         NULL
	, cAlbaranOperador varchar(50)         NULL
	, cPedidoOperador  varchar(50)         NULL
	, dFchControl      datetime        NOT NULL
	)
GO

	/* El objeto 'dbo.AUX_EnvioUGD' no tiene ningún índice o el usuario no tiene permisos. */
	/* No hay ninguna restricción definida en el objeto 'dbo.AUX_EnvioUGD' o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_EnvioUGD' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_EnvioUGD'. */
USE GESLICO
GO

CREATE TABLE dbo.AUX_EnvioUGD
	( IDAREA    int             NOT NULL
	, nLinea    int             NOT NULL
	, nNumCorto int                 NULL
	, nCodSede  int             NOT NULL
	, nCodUni   int                 NULL
	, dFchEnvio datetime            NULL
	)
GO

	/* El objeto 'dbo.AUX_FACILIDADES_MOVISTAR' no tiene ningún índice o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_FACILIDADES_MOVISTAR' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_FACILIDADES_MOVISTAR'. */
USE GESLICO
GO

CREATE TABLE dbo.AUX_FACILIDADES_MOVISTAR
	( GRAN_CUENTA              nvarchar(120)       NULL
	, CIF                      nvarchar(40)        NULL
	, SUBCLIENTE               nvarchar(120)       NULL
	, PLAN_TARIFICACION        nvarchar(120)       NULL
	, LINEA                    int                 NULL
	, ESTADO                   nvarchar(80)        NULL
	, ICC                      nvarchar(100)       NULL
	, IMEI                     nvarchar(80)        NULL
	, MARCA                    nvarchar(60)        NULL
	, MODELO                   nvarchar(100)       NULL
	, CLASE_TARJETA            nvarchar(60)        NULL
	, PERFIL_TARJETA           nvarchar(120)       NULL
	, PUK_1                    nvarchar(80)        NULL
	, PUK_2                    nvarchar(80)        NULL
	, FECHA_ACTIVACION_DUAL    datetime            NULL
	, ICC_a1                   nvarchar(100)       NULL
	, CLASE_TARJETA_a1         nvarchar(60)        NULL
	, PERFIL_TARJETA_a1        nvarchar(120)       NULL
	, PUK_1_a1                 nvarchar(80)        NULL
	, PUK_2_a1                 nvarchar(80)        NULL
	, ICC_a2                   nvarchar(100)       NULL
	, CLASE_TARJETA_a2         nvarchar(60)        NULL
	, PERFIL_TARJETA_a2        nvarchar(120)       NULL
	, PUK_1_a2                 nvarchar(80)        NULL
	, PUK_2_a2                 nvarchar(80)        NULL
	, ICC_a3                   nvarchar(100)       NULL
	, CLASE_TARJETA_a3         nvarchar(60)        NULL
	, PERFIL_TARJETA_a3        nvarchar(120)       NULL
	, PUK_1_a3                 nvarchar(80)        NULL
	, PUK_2_a3                 nvarchar(80)        NULL
	, EXTENSION_CORTA          int                 NULL
	, PERFIL                   nvarchar(120)       NULL
	, LIMITE_CONSUMO_GLOBAL    numeric(18,0)       NULL
	, ALARMA_ADMINISTRADOR     nvarchar(200)       NULL
	, ALARMA_USUARIO_80        nvarchar(200)       NULL
	, ALARMA_USUARIO_100       nvarchar(200)       NULL
	, SERVICIOS_BASICOS        nvarchar(6000)      NULL
	, SERVICIOS_SUPLEMENTARIOS nvarchar(6000)      NULL
	, SERVICIOS_VALOR_ADD      nvarchar(6000)      NULL
	, SERVICIOS_AVANZADOS      nvarchar(6000)      NULL
	, RESTRICCIONES            nvarchar(6000)      NULL
	, dFchCarga                datetime        NOT NULL
	)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_GASTEL_RESUMEN_1' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_GASTEL_RESUMEN_1'. */
USE GESLICO
GO

CREATE TABLE dbo.AUX_GASTEL_RESUMEN_1
	( nAnio           int             NOT NULL
	, nMes            smallint        NOT NULL
	, cNumCorto       varchar(30)     NOT NULL
	, nNumLLamadasEnt int                 NULL
	, nDuracionEnt    numeric(38,20)      NULL
	, nCosteEnt       numeric(38,20)      NULL
	, nNumLLamadasIn  int                 NULL
	, nDuracionIn     numeric(38,20)      NULL
	, nCosteIn        numeric(38,20)      NULL
	, nNumLLamadasMc  int                 NULL
	, nDuracionMc     numeric(38,20)      NULL
	, nCosteMc        numeric(38,20)      NULL
	, nNumLLamadasMv  int                 NULL
	, nDuracionMv     numeric(38,20)      NULL
	, nCosteMv        numeric(38,20)      NULL
	, nNumLLamadasMet int                 NULL
	, nDuracionMet    numeric(38,20)      NULL
	, nCosteMet       numeric(38,20)      NULL
	, nNumLLamadasPro int                 NULL
	, nDuracionPro    numeric(38,20)      NULL
	, nCostePro       numeric(38,20)      NULL
	, nNumLLamadasNac int                 NULL
	, nDuracionNac    numeric(38,20)      NULL
	, nCosteNac       numeric(38,20)      NULL
	, nNumLLamadasInt int                 NULL
	, nDuracionInt    numeric(38,20)      NULL
	, nCosteInt       numeric(38,20)      NULL
	, nNumLLamadasOtr int                 NULL
	, nDuracionOtr    numeric(38,20)      NULL
	, nCosteOtr       numeric(38,20)      NULL
	, dFchDescarga    datetime        NOT NULL
	)
GO

ALTER TABLE dbo.AUX_GASTEL_RESUMEN_1 ADD CONSTRAINT PK_AUX_GASTEL_RESUMEN_1 PRIMARY KEY clustered (nAnio, nMes, cNumCorto)
GO

	/* El objeto 'dbo.AUX_GRUPOS_CAPTURA' no tiene ningún índice o el usuario no tiene permisos. */
	/* No hay ninguna restricción definida en el objeto 'dbo.AUX_GRUPOS_CAPTURA' o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_GRUPOS_CAPTURA' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_GRUPOS_CAPTURA'. */
USE GESLICO
GO

CREATE TABLE dbo.AUX_GRUPOS_CAPTURA
	( NNUMCORTO int                 NULL
	, GRUPO     int                 NULL
	)
GO

	/* El objeto 'dbo.AUX_GruposIbercom' no tiene ningún índice o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_GruposIbercom' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_GruposIbercom'. */
USE GESLICO
GO

CREATE TABLE dbo.AUX_GruposIbercom
	( nLinea    int             NOT NULL
	, nNumCorto int             NOT NULL
	, dFchAlta  datetime        NOT NULL
	)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_HISTORICO_FACILIDADES_MOVISTAR' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_HISTORICO_FACILIDADES_MOVISTAR'. */
USE GESLICO
GO

CREATE TABLE dbo.AUX_HISTORICO_FACILIDADES_MOVISTAR
	( LINEA                    varchar(15)     NOT NULL
	, EXTENSION_CORTA          varchar(15)     NOT NULL
	, IMEI                     varchar(50)     NOT NULL
	, MARCA                    varchar(50)         NULL
	, MODELO                   varchar(50)         NULL
	, ICC                      varchar(50)     NOT NULL
	, ICC_a1                   varchar(50)         NULL
	, ICC_a2                   varchar(50)         NULL
	, ICC_a3                   varchar(50)         NULL
	, SERVICIOS_BASICOS        varchar(-1)         NULL
	, SERVICIOS_SUPLEMENTARIOS varchar(-1)         NULL
	, SERVICIOS_VALOR_ADD      varchar(-1)         NULL
	, SERVICIOS_AVANZADOS      varchar(-1)         NULL
	, RESTRICCIONES            varchar(-1)         NULL
	, dFchCarga                datetime        NOT NULL
	)
GO

ALTER TABLE dbo.AUX_HISTORICO_FACILIDADES_MOVISTAR ADD CONSTRAINT PK_AUX_HISTORICO_FACILIDADES_MOVISTAR PRIMARY KEY clustered (LINEA, EXTENSION_CORTA, IMEI, ICC, dFchCarga)
GO

	/* El objeto 'dbo.AUX_Ibercom' no tiene ningún índice o el usuario no tiene permisos. */
	/* No hay ninguna restricción definida en el objeto 'dbo.AUX_Ibercom' o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_Ibercom' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_Ibercom'. */
USE GESLICO
GO

CREATE TABLE dbo.AUX_Ibercom
	( Centralita nvarchar(510)       NULL
	, largo      nvarchar(510)       NULL
	)
GO

	/* El objeto 'dbo.AUX_InformeHacienda' no tiene ningún índice o el usuario no tiene permisos. */
	/* No hay ninguna restricción definida en el objeto 'dbo.AUX_InformeHacienda' o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_InformeHacienda' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_InformeHacienda'. */
USE GESLICO
GO

CREATE TABLE dbo.AUX_InformeHacienda
	( CODIGO           varchar(20)     NOT NULL
	, ANEXO            varchar(5)      NOT NULL
	, LITERAL          varchar(100)        NULL
	, AGRUPADOR        varchar(100)        NULL
	, LOTE             int             NOT NULL
	, DESCRIPCIÓN     varchar(255)    NOT NULL
	, DETALLES         varchar(-1)     NOT NULL
	, UNIDAD_MEDIDA    varchar(255)    NOT NULL
	, PRECIO           money           NOT NULL
	, ANEXO_INVENTARIO varchar(5)          NULL
	, UNIDADES         int                 NULL
	, BASE_IMPONIBLE   money               NULL
	, CODCAMPUS        int             NOT NULL
	, CAMPUS           varchar(100)    NOT NULL
	, nCodSede         int             NOT NULL
	, cNombre          varchar(100)    NOT NULL
	, FechaConsumo     datetime            NULL
	)
GO

	/* El objeto 'dbo.AUX_InformeHaciendaLiteral' no tiene ningún índice o el usuario no tiene permisos. */
	/* No hay ninguna restricción definida en el objeto 'dbo.AUX_InformeHaciendaLiteral' o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_InformeHaciendaLiteral' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_InformeHaciendaLiteral'. */
USE GESLICO
GO

CREATE TABLE dbo.AUX_InformeHaciendaLiteral
	( nCodSede int             NOT NULL
	, LITERAL  varchar(52)     NOT NULL
	)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_LinIbercom' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_LinIbercom'. */
USE GESLICO
GO

CREATE TABLE dbo.AUX_LinIbercom
	( nLinea         int                 NULL
	, nNumCorto      int                 NULL
	, cExtension     char(1)             NULL
	, nCodCentralita int                 NULL
	, nRAI           int                 NULL
	, nLIM           int                 NULL
	, nMagazin       int                 NULL
	, nPosicion      int                 NULL
	, nEquipo        int                 NULL
	, nAdicionalDe   nchar(20)           NULL
	, nCat           int                 NULL
	, dFchAlta       datetime        NOT NULL
	)
GO

CREATE  nonclustered INDEX IX_AUX_LinIbercom on dbo.AUX_LinIbercom(nAdicionalDe)
GO

CREATE  nonclustered INDEX IX_nLinea_LinIbercom on dbo.AUX_LinIbercom(nLinea)
GO

CREATE  nonclustered INDEX IX_nNumCorto_LinIbercom on dbo.AUX_LinIbercom(nNumCorto)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_LogRadiusFailedAuthentications' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_LogRadiusFailedAuthentications'. */
USE GESLICO
GO

CREATE TABLE dbo.AUX_LogRadiusFailedAuthentications
	( dDateTime          datetime        NOT NULL
	, cDate              varchar(50)     NOT NULL
	, cTime              varchar(50)     NOT NULL
	, cMessageType       varchar(50)         NULL
	, cUserName          varchar(100)    NOT NULL
	, cGroupName         varchar(50)     NOT NULL
	, cCallerID          varchar(50)     NOT NULL
	, cAuthenFailureCode varchar(50)         NULL
	, cAuthorFailureCode varchar(50)         NULL
	, cAuthorData        varchar(50)         NULL
	, cNASPort           varchar(50)         NULL
	, cNASIPAddress      varchar(50)         NULL
	, dFchControl        datetime        NOT NULL
	)
GO

CREATE  nonclustered INDEX IX_CallerId_LogRadiusFailedAuthentications on dbo.AUX_LogRadiusFailedAuthentications(cCallerID)
GO

CREATE  nonclustered INDEX IX_DateTime_LogRadiusFailedAuthentications on dbo.AUX_LogRadiusFailedAuthentications(dDateTime)
GO

CREATE  nonclustered INDEX IX_UserName_LogRadiusFailedAuthentications on dbo.AUX_LogRadiusFailedAuthentications(cGroupName, cUserName)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_LogRadiusPassedAuthentications' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_LogRadiusPassedAuthentications'. */
USE GESLICO
GO

CREATE TABLE dbo.AUX_LogRadiusPassedAuthentications
	( dDateTime          datetime        NOT NULL
	, cDate              varchar(50)     NOT NULL
	, cTime              varchar(50)     NOT NULL
	, cMessageType       varchar(50)         NULL
	, cUserName          varchar(50)     NOT NULL
	, cGroupName         varchar(50)     NOT NULL
	, cCallerID          varchar(50)     NOT NULL
	, cNASPort           varchar(50)         NULL
	, cNASIPAddress      varchar(50)         NULL
	, cSourceNAS         varchar(50)         NULL
	, cFilterInformation varchar(50)         NULL
	, dFchControl        datetime        NOT NULL
	)
GO

CREATE  nonclustered INDEX IX_CallerId_LogRadiusPassedAuthentications on dbo.AUX_LogRadiusPassedAuthentications(cCallerID)
GO

CREATE  nonclustered INDEX IX_DateTime_LogRadiusPassedAuthentications on dbo.AUX_LogRadiusPassedAuthentications(dDateTime)
GO

CREATE  nonclustered INDEX IX_UserName_LogRadiusPassedAuthentications on dbo.AUX_LogRadiusPassedAuthentications(cUserName, cGroupName)
GO

	/* El objeto 'dbo.AUX_MacAddressTableDynamic' no tiene ningún índice o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_MacAddressTableDynamic' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_MacAddressTableDynamic'. */
USE GESLICO
GO

CREATE TABLE dbo.AUX_MacAddressTableDynamic
	( cDevice     varchar(50)     NOT NULL
	, cVlan       varchar(10)     NOT NULL
	, cMAC        varchar(20)     NOT NULL
	, cType       varchar(10)     NOT NULL
	, cProtocols  varchar(20)         NULL
	, cPort       varchar(20)     NOT NULL
	, dFchControl datetime        NOT NULL
	)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_MODELOSIP' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_MODELOSIP'. */
USE GESLICO
GO

CREATE TABLE dbo.AUX_MODELOSIP
	( NLINEA            int             NOT NULL
	, CMODELOIP         varchar(50)         NULL
	, NCODCENTRALITA    int                 NULL
	, NCODSEDEORIGEN    int                 NULL
	, NCODSEDEDESTINO   int                 NULL
	, CMODELOIP_DETALLE varchar(50)         NULL
	, ncodmodelo        int                 NULL
	)
GO

ALTER TABLE dbo.AUX_MODELOSIP ADD CONSTRAINT PK_AUX_MODELOSIP PRIMARY KEY clustered (NLINEA)
GO

	/* El objeto 'dbo.aux_mov_con' no tiene ningún índice o el usuario no tiene permisos. */
	/* No hay ninguna restricción definida en el objeto 'dbo.aux_mov_con' o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.aux_mov_con' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.aux_mov_con'. */
USE GESLICO
GO

CREATE TABLE dbo.aux_mov_con
	( LINEA int             NOT NULL
	, sede  int                 NULL
	)
GO

	/* El objeto 'dbo.aux_mov_con_uni' no tiene ningún índice o el usuario no tiene permisos. */
	/* No hay ninguna restricción definida en el objeto 'dbo.aux_mov_con_uni' o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.aux_mov_con_uni' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.aux_mov_con_uni'. */
USE GESLICO
GO

CREATE TABLE dbo.aux_mov_con_uni
	( nlinea   int             NOT NULL
	, ncodsede nvarchar(20)        NULL
	)
GO

	/* El objeto 'dbo.aux_mov_sin' no tiene ningún índice o el usuario no tiene permisos. */
	/* No hay ninguna restricción definida en el objeto 'dbo.aux_mov_sin' o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.aux_mov_sin' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.aux_mov_sin'. */
USE GESLICO
GO

CREATE TABLE dbo.aux_mov_sin
	( nlinea   int                 NULL
	, ncodsede nvarchar(20)        NULL
	)
GO

	/* El objeto 'dbo.AUX_MOVILESSEDES' no tiene ningún índice o el usuario no tiene permisos. */
	/* No hay ninguna restricción definida en el objeto 'dbo.AUX_MOVILESSEDES' o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_MOVILESSEDES' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_MOVILESSEDES'. */
USE GESLICO
GO

CREATE TABLE dbo.AUX_MOVILESSEDES
	( nLineaMovil int                 NULL
	, nCodSede    int                 NULL
	, UGD         nvarchar(20)        NULL
	)
GO

	/* El objeto 'dbo.AUX_OperadorAnexoLote2' no tiene ningún índice o el usuario no tiene permisos. */
	/* No hay ninguna restricción definida en el objeto 'dbo.AUX_OperadorAnexoLote2' o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_OperadorAnexoLote2' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_OperadorAnexoLote2'. */
USE GESLICO
GO

CREATE TABLE dbo.AUX_OperadorAnexoLote2
	( NLOTE          nvarchar(510)       NULL
	, NNUIN          nvarchar(510)       NULL
	, NTIPOLINEA     nvarchar(510)       NULL
	, NCODSEDE       int                 NULL
	, NLINEAASOCIADA nvarchar(510)       NULL
	, CTECNOLOGIA    nvarchar(510)       NULL
	, CNEMONICO      nvarchar(510)       NULL
	, NBW1           nvarchar(510)       NULL
	, NBW2           nvarchar(510)       NULL
	, NBWVOZ         nvarchar(510)       NULL
	, IP_LAN         nvarchar(510)       NULL
	, IP_BP          nvarchar(510)       NULL
	, IP_ToIP        nvarchar(510)       NULL
	, DFECHAINSTAL   datetime            NULL
	, DFECHAALTA     datetime            NULL
	)
GO

	/* El objeto 'dbo.AUX_Prime_APsSSID' no tiene ningún índice o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_Prime_APsSSID' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_Prime_APsSSID'. */
USE GESLICO
GO

CREATE TABLE dbo.AUX_Prime_APsSSID
	( cAPName              varchar(50)     NOT NULL
	, cEthernetMACAddress  varchar(50)     NOT NULL
	, cBaseRadioMACAddress varchar(50)     NOT NULL
	, cModel               varchar(50)     NOT NULL
	, cControllerName      varchar(50)     NOT NULL
	, cAPGroupName         varchar(50)     NOT NULL
	, cFichero             varchar(50)         NULL
	, dFchControl          datetime        NOT NULL
	)
GO

	/* El objeto 'dbo.AUX_SOFIA_RESUMEN' no tiene ningún índice o el usuario no tiene permisos. */
	/* No hay ninguna restricción definida en el objeto 'dbo.AUX_SOFIA_RESUMEN' o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_SOFIA_RESUMEN' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_SOFIA_RESUMEN'. */
USE GESLICO
GO

CREATE TABLE dbo.AUX_SOFIA_RESUMEN
	( NU_TELEFONO      nvarchar(18)    NOT NULL
	, NU_EXTENSION     nvarchar(18)    NOT NULL
	, IMPORTE          float           NOT NULL
	, NUM_LLAMADAS     int             NOT NULL
	, TIPO_TRAFICO     nvarchar(70)    NOT NULL
	, COD_TIPO_TRAFICO nvarchar(6)     NOT NULL
	, FECHA_FACTURA    datetime            NULL
	)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_Supervision' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_Supervision'. */
USE GESLICO
GO

CREATE TABLE dbo.AUX_Supervision
	( nNumCorto    int             NOT NULL
	, nSupervisado int             NOT NULL
	)
GO

ALTER TABLE dbo.AUX_Supervision ADD CONSTRAINT PK_AUX_Supervision PRIMARY KEY clustered (nNumCorto, nSupervisado)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_T_ELEMENTO_TARIFICAR' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_T_ELEMENTO_TARIFICAR'. */
USE GESLICO
GO

CREATE TABLE dbo.AUX_T_ELEMENTO_TARIFICAR
	( ID_ELEMENTO_TARIFICAR        numeric(38,0)   NOT NULL
	, ID_CENTRAL                   numeric(38,0)       NULL
	, IDENTIFICADOR_ELEMENTO       varchar(255)        NULL
	, ELEMENTO                     varchar(30)         NULL
	, FECHA_ALTA                   datetime            NULL
	, ID_ENTIDAD                   numeric(38,0)       NULL
	, LOCALIZACION                 varchar(255)        NULL
	, INFORMACION                  varchar(255)        NULL
	, ID_CENTRO_COSTE              numeric(38,0)       NULL
	, CONFIDENCIAL_SN              bit             NOT NULL
	, ENVIA_EMAIL_SN               bit             NOT NULL
	, ID_PERFIL_EMAIL              numeric(38,0)       NULL
	, COSTE_ACUMULADO              float               NULL
	, PORCENTAJE_AUMENTO_D         float               NULL
	, AUTH                         varchar(30)         NULL
	, FECHA_BAJA                   datetime            NULL
	, PUBLICAR_LISTIN_SN           bit                 NULL
	, ID_CATEGORIA_TRAFICO         numeric(38,0)       NULL
	, ID_PAT_CONTROL               numeric(38,0)       NULL
	, ID_PAT_EXCEPCION             numeric(38,0)       NULL
	, ACTIVO_SN                    bit                 NULL
	, GENERADA_APLICACION_SN       bit                 NULL
	, ID_OPERADOR_LOCAL            numeric(38,0)       NULL
	, ID_OPERADOR_LD               numeric(38,0)       NULL
	, ID_PAT_CARACTERISTICA_ELEMEN numeric(38,0)       NULL
	, ID_TIPO_CALCULO_PRECIO       numeric(38,0)       NULL
	, PRECIO_MINIMO                float               NULL
	, ENCRIPTA_LLAMADA_SN          bit                 NULL
	, ENCRIPTA_USUARIO_SN          bit                 NULL
	, ID_OPERADOR                  numeric(38,0)       NULL
	, ID_ELEMENTO_INTERFAZ         numeric(38,0)       NULL
	, SEGUNDA_TAR_LINEA_SN         bit                 NULL
	, VALIDO_SN                    bit                 NULL
	, CONECTADO_SN                 bit                 NULL
	, ID_CATEGORIA_TRAFICO_DES     numeric(18,0)       NULL
	, ID_TIPO_SERVICIO             numeric(9,0)        NULL
	, ID_TECNOLOGIA_SERVICIO       numeric(9,0)        NULL
	, dFchDescarga                 datetime            NULL
	)
GO

CREATE  nonclustered INDEX IX_AUX_T_ELEMENTO_TARIFICAR on dbo.AUX_T_ELEMENTO_TARIFICAR(ELEMENTO)
GO

ALTER TABLE dbo.AUX_T_ELEMENTO_TARIFICAR ADD CONSTRAINT PK_AUX_T_ELEMENTO_TARIFICAR PRIMARY KEY clustered (ID_ELEMENTO_TARIFICAR)
GO

	/* El objeto 'dbo.AUX_TCategoriaRestringida' no tiene ningún índice o el usuario no tiene permisos. */
	/* No hay ninguna restricción definida en el objeto 'dbo.AUX_TCategoriaRestringida' o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_TCategoriaRestringida' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_TCategoriaRestringida'. */
USE GESLICO
GO

CREATE TABLE dbo.AUX_TCategoriaRestringida
	( nLinea         int                 NULL
	, nNumCorto      int                 NULL
	, nCodSede       int                 NULL
	, cTipoExtension nchar(20)           NULL
	, nCodCobertura  int                 NULL
	, nRai           int                 NULL
	, dFechaAviso    smalldatetime       NULL
	)
GO

	/* El objeto 'dbo.AUX_TCCoste' no tiene ningún índice o el usuario no tiene permisos. */
	/* No hay ninguna restricción definida en el objeto 'dbo.AUX_TCCoste' o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_TCCoste' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_TCCoste'. */
USE GESLICO
GO

CREATE TABLE dbo.AUX_TCCoste
	( dependencia  varchar(12)         NULL
	, denominacion varchar(60)         NULL
	, CC           varchar(15)         NULL
	, descripcion  varchar(40)         NULL
	, ncoduni      int                 NULL
	)
GO

	/* El objeto 'dbo.AUX_TDeviceNeighbour' no tiene ningún índice o el usuario no tiene permisos. */
	/* No hay ninguna restricción definida en el objeto 'dbo.AUX_TDeviceNeighbour' o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_TDeviceNeighbour' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_TDeviceNeighbour'. */
USE GESLICO
GO

CREATE TABLE dbo.AUX_TDeviceNeighbour
	( cDevice          varchar(100)        NULL
	, cIpDevice        varchar(100)        NULL
	, cDeviceNeighbour varchar(8000)       NULL
	, cIpNeighbour     varchar(8000)       NULL
	, cPlatform        varchar(8000)       NULL
	, cCapabilities    varchar(8000)       NULL
	, cInterface       varchar(8000)       NULL
	, cPortID          varchar(8000)       NULL
	, dFchControl      datetime            NULL
	)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_TDiscoveryVLan' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_TDiscoveryVLan'. */
USE GESLICO
GO

CREATE TABLE dbo.AUX_TDiscoveryVLan
	( cDevice     varchar(100)    NOT NULL
	, cIp         varchar(20)     NOT NULL
	, cIdVlan     varchar(10)     NOT NULL
	, cNameVlan   varchar(100)        NULL
	, cStatusVlan varchar(10)         NULL
	, cPorts      varchar(20)         NULL
	, dFchControl datetime        NOT NULL
	)
GO

CREATE  nonclustered INDEX IX_AUX_TDiscoveryVLan on dbo.AUX_TDiscoveryVLan(cDevice)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_Teclas' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_Teclas'. */
USE GESLICO
GO

CREATE TABLE dbo.AUX_Teclas
	( nNumCorto      int             NOT NULL
	, nNumProgramado nvarchar(60)    NOT NULL
	, nTecla         int             NOT NULL
	)
GO

ALTER TABLE dbo.AUX_Teclas ADD CONSTRAINT PK_AUX_TECLAS PRIMARY KEY clustered (nNumCorto, nNumProgramado, nTecla)
GO

	/* El objeto 'dbo.AUX_TEdificios' no tiene ningún índice o el usuario no tiene permisos. */
	/* No hay ninguna restricción definida en el objeto 'dbo.AUX_TEdificios' o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_TEdificios' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_TEdificios'. */
USE GESLICO
GO

CREATE TABLE dbo.AUX_TEdificios
	( nCodEdificio int             NOT NULL
	, cTipoVia     varchar(30)     NOT NULL
	, cNombreCalle varchar(72)     NOT NULL
	, cTipo_Num    varchar(3)      NOT NULL
	, cNumero      varchar(6)      NOT NULL
	, CAL_APP      varchar(2)      NOT NULL
	, cCodPostal   varchar(5)      NOT NULL
	, cPais        varchar(26)     NOT NULL
	, cProvincia   varchar(20)     NOT NULL
	, cMunicipio   varchar(40)     NOT NULL
	, cUsuarioAlta varchar(25)         NULL
	, dFchAlta     datetime            NULL
	)
GO

	/* El objeto 'dbo.AUX_TetraTelemetriaMPR' no tiene ningún índice o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_TetraTelemetriaMPR' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_TetraTelemetriaMPR'. */
USE GESLICO
GO

CREATE TABLE dbo.AUX_TetraTelemetriaMPR
	( Time          varchar(50)     NOT NULL
	, LocTxPower    varchar(50)         NULL
	, RemTxPower    varchar(50)         NULL
	, LocRxPower    varchar(50)         NULL
	, RemRxPower    varchar(50)         NULL
	, LocDivRxPower varchar(50)         NULL
	, RemDivRxPower varchar(50)         NULL
	, LocXPD        varchar(50)         NULL
	, RemXPD        varchar(50)         NULL
	, LocMSE        varchar(50)         NULL
	, RemMSE        varchar(50)         NULL
	, TxMod         varchar(50)         NULL
	, RxMod         varchar(50)         NULL
	, LocEPS        varchar(50)         NULL
	, RemEPS        varchar(50)         NULL
	, LocRPS        varchar(50)         NULL
	, RemRPS        varchar(50)         NULL
	, LocTPS        varchar(50)         NULL
	, RemTPS        varchar(50)         NULL
	, LocHBERAlm    varchar(50)         NULL
	, RemHBERAlm    varchar(50)         NULL
	, LocEWAlm      varchar(50)         NULL
	, RemEWAlm      varchar(50)         NULL
	, LocDemFailAlm varchar(50)         NULL
	, RemDemFailAlm varchar(50)         NULL
	, MPRid         varchar(50)     NOT NULL
	, dFchControl   datetime        NOT NULL
	)
GO

	/* El objeto 'dbo.AUX_TFacturasMovil' no tiene ningún índice o el usuario no tiene permisos. */
	/* No hay ninguna restricción definida en el objeto 'dbo.AUX_TFacturasMovil' o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_TFacturasMovil' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_TFacturasMovil'. */
USE GESLICO
GO

CREATE TABLE dbo.AUX_TFacturasMovil
	( nLinea       int             NOT NULL
	, nCodConcepto int             NOT NULL
	, nMes         int             NOT NULL
	, nAnno        int             NOT NULL
	, cMes         varchar(12)     NOT NULL
	, cAnno        varchar(4)      NOT NULL
	, nCoste       float               NULL
	, dFecha       smalldatetime       NULL
	)
GO

	/* El objeto 'dbo.AUX_TJefesUnidad' no tiene ningún índice o el usuario no tiene permisos. */
	/* No hay ninguna restricción definida en el objeto 'dbo.AUX_TJefesUnidad' o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_TJefesUnidad' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_TJefesUnidad'. */
USE GESLICO
GO

CREATE TABLE dbo.AUX_TJefesUnidad
	( nCodUni              int             NOT NULL
	, cDenominacion        varchar(100)    NOT NULL
	, ceMail               varchar(40)         NULL
	, nJefe                int                 NULL
	, cUsuarioModificacion varchar(10)         NULL
	, dFchModificacion     datetime            NULL
	)
GO

	/* El objeto 'dbo.AUX_TJefesUnidad_copia' no tiene ningún índice o el usuario no tiene permisos. */
	/* No hay ninguna restricción definida en el objeto 'dbo.AUX_TJefesUnidad_copia' o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_TJefesUnidad_copia' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_TJefesUnidad_copia'. */
USE GESLICO
GO

CREATE TABLE dbo.AUX_TJefesUnidad_copia
	( nCodUni              int             NOT NULL
	, cDenominacion        varchar(100)    NOT NULL
	, ceMail               varchar(40)         NULL
	, nJefe                int                 NULL
	, cUsuarioModificacion varchar(10)         NULL
	, dFchModificacion     datetime            NULL
	)
GO

	/* El objeto 'dbo.AUX_TLineas' no tiene ningún índice o el usuario no tiene permisos. */
	/* No hay ninguna restricción definida en el objeto 'dbo.AUX_TLineas' o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_TLineas' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_TLineas'. */
USE GESLICO
GO

CREATE TABLE dbo.AUX_TLineas
	( nLinea               int             NOT NULL
	, nNumCorto            int                 NULL
	, cNumero              varchar(20)         NULL
	, cNumCorto            varchar(20)         NULL
	, cCodTipLinea         varchar(1)      NOT NULL
	, nCodEstLin           int             NOT NULL
	, nCodTipoLote         smallint            NULL
	, dFechaAlta           datetime            NULL
	, dFechaBaja           datetime            NULL
	, nCodUni              int                 NULL
	, cUbicacion           varchar(80)         NULL
	, cAsignacion          varchar(1)          NULL
	, bVIP                 bit             NOT NULL
	, bListadoVIP          bit             NOT NULL
	, bOcultoDir           bit                 NULL
	, nullbusterCorto      int                 NULL
	, nullbusterNumero     int                 NULL
	, cUsuarioAlta         varchar(25)     NOT NULL
	, dFchAlta             datetime        NOT NULL
	, cUsuarioModificacion varchar(25)         NULL
	, dFchModificacion     datetime            NULL
	)
GO

	/* El objeto 'dbo.AUX_TLinFijos' no tiene ningún índice o el usuario no tiene permisos. */
	/* No hay ninguna restricción definida en el objeto 'dbo.AUX_TLinFijos' o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_TLinFijos' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_TLinFijos'. */
USE GESLICO
GO

CREATE TABLE dbo.AUX_TLinFijos
	( nLinea                  int             NOT NULL
	, nCodSubTipoFijo         smallint            NULL
	, nCodUso                 smallint            NULL
	, nCodCentralita          int                 NULL
	, nCodSede                int                 NULL
	, cTipoExtension          char(2)             NULL
	, cObservaciones          varchar(250)        NULL
	, nCodCobertura           smallint            NULL
	, dFchCoberturaBMS        datetime            NULL
	, nCodCoberturaAutorizada int                 NULL
	, dFchCoberturaAutorizada smalldatetime       NULL
	, nCodModelo              int                 NULL
	, nCodModeloCisco         int                 NULL
	, cUserId                 varchar(50)         NULL
	, nLineaCab               int                 NULL
	, nLineaPrincipal         int                 NULL
	, nAccesos                smallint            NULL
	, cNumAdministrativo      varchar(20)         NULL
	, bLocucion               bit             NOT NULL
	, bDesvioExterno          bit             NOT NULL
	, nCodCoberturaHistorica  int                 NULL
	, cParticion              varchar(30)         NULL
	, cAlerting               varchar(50)         NULL
	, nDsvTodas               int                 NULL
	, dHoraInicio             datetime            NULL
	, dHoraFin                datetime            NULL
	, dHoraInicioS            datetime            NULL
	, dHoraFinS               datetime            NULL
	, dHoraInicioD            datetime            NULL
	, dHoraFinD               datetime            NULL
	, dFchMigracion           datetime            NULL
	, dFchReserva             datetime            NULL
	, cEPNMExc                varchar(50)         NULL
	, cUsuarioAlta            varchar(25)     NOT NULL
	, dFchAlta                datetime        NOT NULL
	, cUsuarioModificacion    varchar(25)         NULL
	, dFchModificacion        datetime            NULL
	)
GO

	/* El objeto 'dbo.AUX_TLINFIJOSDISPOSITIVOSIP' no tiene ningún índice o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_TLINFIJOSDISPOSITIVOSIP' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_TLINFIJOSDISPOSITIVOSIP'. */
USE GESLICO
GO

CREATE TABLE dbo.AUX_TLINFIJOSDISPOSITIVOSIP
	( nLinea             int                 NULL
	, nCodDispositivosIP int                 NULL
	, dFchBaja           datetime            NULL
	)
GO

	/* El objeto 'dbo.AUX_TLinFijosPuestos' no tiene ningún índice o el usuario no tiene permisos. */
	/* No hay ninguna restricción definida en el objeto 'dbo.AUX_TLinFijosPuestos' o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_TLinFijosPuestos' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_TLinFijosPuestos'. */
USE GESLICO
GO

CREATE TABLE dbo.AUX_TLinFijosPuestos
	( nLineaFija int             NOT NULL
	, nCodPto    int             NOT NULL
	, bPrincipal bit             NOT NULL
	)
GO

	/* El objeto 'dbo.AUX_TLinFijosUnidades' no tiene ningún índice o el usuario no tiene permisos. */
	/* No hay ninguna restricción definida en el objeto 'dbo.AUX_TLinFijosUnidades' o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_TLinFijosUnidades' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_TLinFijosUnidades'. */
USE GESLICO
GO

CREATE TABLE dbo.AUX_TLinFijosUnidades
	( nLinea     int             NOT NULL
	, nCodUni    int             NOT NULL
	, bOculto    bit             NOT NULL
	, bPrincipal bit             NOT NULL
	)
GO

	/* El objeto 'dbo.AUX_TLinMoviles' no tiene ningún índice o el usuario no tiene permisos. */
	/* No hay ninguna restricción definida en el objeto 'dbo.AUX_TLinMoviles' o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_TLinMoviles' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_TLinMoviles'. */
USE GESLICO
GO

CREATE TABLE dbo.AUX_TLinMoviles
	( nLinea               int             NOT NULL
	, cDNI                 varchar(9)          NULL
	, nCodTipMovil         int             NOT NULL
	, cObserva             nvarchar(400)       NULL
	, cPerfil              varchar(50)         NULL
	, cPerfilAutorizado    varchar(50)         NULL
	, cCoberturaNormativa  varchar(50)         NULL
	, cGprs                char(2)             NULL
	, cGprsG               char(2)             NULL
	, cIntranet            char(2)             NULL
	, cIntranetG           char(2)             NULL
	, cMoviMail            char(2)             NULL
	, cMoviMailG           char(2)             NULL
	, cSMS                 char(2)             NULL
	, Blackberry           char(2)             NULL
	, cBlackberryG         char(2)             NULL
	, MMS                  char(2)             NULL
	, cMMSG                char(2)             NULL
	, cEmocion             char(2)             NULL
	, cEmocionG            char(2)             NULL
	, cMultisim            char(2)             NULL
	, cMultisimG           char(2)             NULL
	, cVideoLlamada        char(2)             NULL
	, cVideoLlamadaG       char(2)             NULL
	, nNumFaxAsoc          int                 NULL
	, nCodTarifaPlana      int                 NULL
	, nCodTarifa           smallint            NULL
	, cUsuarioIntranet     varchar(20)         NULL
	, cIPm2m               nvarchar(32)        NULL
	, cSoloEmergencia      char(2)             NULL
	, bHorarioExtendido    bit             NOT NULL
	, bPrincipal           bit             NOT NULL
	, nCodSede             int                 NULL
	, cUsuarioAlta         varchar(25)     NOT NULL
	, dFchAlta             datetime        NOT NULL
	, cUsuarioModificacion varchar(25)         NULL
	, dFchModificacion     datetime            NULL
	)
GO

	/* El objeto 'dbo.AUX_TLINMOVILESTARIFAS' no tiene ningún índice o el usuario no tiene permisos. */
	/* No hay ninguna restricción definida en el objeto 'dbo.AUX_TLINMOVILESTARIFAS' o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_TLINMOVILESTARIFAS' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_TLINMOVILESTARIFAS'. */
USE GESLICO
GO

CREATE TABLE dbo.AUX_TLINMOVILESTARIFAS
	( nLinea         int             NOT NULL
	, nCodTarifa     int             NOT NULL
	, dFchAltaTarifa datetime        NOT NULL
	)
GO

	/* El objeto 'dbo.AUX_TPersonas' no tiene ningún índice o el usuario no tiene permisos. */
	/* No hay ninguna restricción definida en el objeto 'dbo.AUX_TPersonas' o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_TPersonas' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_TPersonas'. */
USE GESLICO
GO

CREATE TABLE dbo.AUX_TPersonas
	( cDNI          varchar(9)      NOT NULL
	, cLetraDNI     varchar(1)          NULL
	, ncodtipoper   int             NOT NULL
	, ccodtipodoc   varchar(1)          NULL
	, cape1         varchar(40)     NOT NULL
	, cape2         varchar(40)     NOT NULL
	, cnombre       varchar(40)     NOT NULL
	, ncoduni       int                 NULL
	, nempnumper    int                 NULL
	, cempcodsit    varchar(2)          NULL
	, cempcodmod    varchar(2)          NULL
	, cempcategoria varchar(4)          NULL
	, cempgrupotit  varchar(2)          NULL
	, cempgrupoper  varchar(1)          NULL
	, cempareaper   varchar(2)          NULL
	, cempdivision  varchar(4)          NULL
	, nemppuesto    int                 NULL
	, cempnompuesto varchar(40)         NULL
	, nempnivel     int                 NULL
	, cextempresa   varchar(40)         NULL
	, cextcargo     varchar(40)         NULL
	, cextrelacion  varchar(40)         NULL
	, cemail        varchar(40)         NULL
	, cUsuarioAYRE  varchar(9)          NULL
	)
GO

	/* El objeto 'dbo.AUX_TPuestos' no tiene ningún índice o el usuario no tiene permisos. */
	/* No hay ninguna restricción definida en el objeto 'dbo.AUX_TPuestos' o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_TPuestos' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_TPuestos'. */
USE GESLICO
GO

CREATE TABLE dbo.AUX_TPuestos
	( nEmpPuesto    int             NOT NULL
	, cDenominacion varchar(40)         NULL
	, CoTipoPto     varchar(1)          NULL
	, nCodUni       int                 NULL
	, cCodAdc       varchar(12)         NULL
	, cGrupoTpo     varchar(12)         NULL
	, nNivelPto     varchar(2)          NULL
	, nCodUniFunc   int                 NULL
	)
GO

	/* El objeto 'dbo.AUX_TPuestos_411' no tiene ningún índice o el usuario no tiene permisos. */
	/* No hay ninguna restricción definida en el objeto 'dbo.AUX_TPuestos_411' o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_TPuestos_411' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_TPuestos_411'. */
USE GESLICO
GO

CREATE TABLE dbo.AUX_TPuestos_411
	( nEmpPuesto    int             NOT NULL
	, cDenominacion varchar(40)         NULL
	, CoTipoPto     varchar(1)          NULL
	, nCodUni       int                 NULL
	, cCodAdc       varchar(12)         NULL
	, cGrupoTpo     varchar(12)         NULL
	, nNivelPto     varchar(2)          NULL
	, nCodUniFunc   int                 NULL
	)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_TraficoFactura' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_TraficoFactura'. */
USE GESLICO
GO

CREATE TABLE dbo.AUX_TraficoFactura
	( FECHA       datetime        NOT NULL
	, CODIGO      nvarchar(510)   NOT NULL
	, UNIDADES    numeric(18,2)   NOT NULL
	, dFchControl datetime        NOT NULL
	)
GO

ALTER TABLE dbo.AUX_TraficoFactura ADD CONSTRAINT PK_AUX_TraficoFactura PRIMARY KEY clustered (FECHA, CODIGO, UNIDADES)
GO

	/* El objeto 'dbo.AUX_TRangoIPdisp' no tiene ningún índice o el usuario no tiene permisos. */
	/* No hay ninguna restricción definida en el objeto 'dbo.AUX_TRangoIPdisp' o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_TRangoIPdisp' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_TRangoIPdisp'. */
USE GESLICO
GO

CREATE TABLE dbo.AUX_TRangoIPdisp
	( ID                  smallint            NULL
	, RED                 nvarchar(100)       NULL
	, RED_ANUNCIADA       nvarchar(100)       NULL
	, GATEWAY             float               NULL
	, INTERFAZ            nvarchar(100)       NULL
	, TIPO                nvarchar(4)         NULL
	, TIPO_VLAN           nvarchar(4)         NULL
	, GRUPO               nvarchar(100)       NULL
	, NOMBRE_GATEWAY      nvarchar(100)       NULL
	, SEDE                int                 NULL
	, SEDE_DIRECCION      nvarchar(510)       NULL
	, FUNCION_RED         nvarchar(-1)        NULL
	, SEDE_ALTERNATIVA    int                 NULL
	, USUARIOALTA         varchar(10)         NULL
	, FCHALTA             smalldatetime       NULL
	, USUARIOMODIFICACION varchar(10)         NULL
	, FCHMODIFICACION     smalldatetime       NULL
	)
GO

	/* El objeto 'dbo.AUX_TSedes' no tiene ningún índice o el usuario no tiene permisos. */
	/* No hay ninguna restricción definida en el objeto 'dbo.AUX_TSedes' o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_TSedes' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_TSedes'. */
USE GESLICO
GO

CREATE TABLE dbo.AUX_TSedes
	( nCodSede               int             NOT NULL
	, nCodUni                int                 NULL
	, cNombre                varchar(100)    NOT NULL
	, cDireccion             varchar(100)        NULL
	, cCodPostal             varchar(5)          NULL
	, cPersonaContacto       varchar(50)         NULL
	, cTelefonoContacto      varchar(10)         NULL
	, cCortoFijo             nchar(10)           NULL
	, cMovilContacto         nchar(20)           NULL
	, cCortoMovil            nchar(10)           NULL
	, cFax                   varchar(10)         NULL
	, ceMailContacto         varchar(50)         NULL
	, nPCs                   int                 NULL
	, nCriticidad            int             NOT NULL
	, bCoincidenciaSAP       bit                 NULL
	, nCodEstado             int                 NULL
	, cPersonaContactoObserv varchar(-1)         NULL
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
GO

	/* El objeto 'dbo.AUX_TTarjetasMovil' no tiene ningún índice o el usuario no tiene permisos. */
	/* No hay ninguna restricción definida en el objeto 'dbo.AUX_TTarjetasMovil' o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_TTarjetasMovil' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_TTarjetasMovil'. */
USE GESLICO
GO

CREATE TABLE dbo.AUX_TTarjetasMovil
	( cICC                 varchar(19)     NOT NULL
	, nLineaMovil          int             NOT NULL
	, nCodTipTarj          int             NOT NULL
	, dFechaEntrega        datetime            NULL
	, dFechaDevolu         datetime            NULL
	, cObservaciones       varchar(100)        NULL
	, bDuplo               bit             NOT NULL
	, cUsuarioAlta         varchar(10)         NULL
	, dFchAlta             smalldatetime       NULL
	, cUsuarioModificacion varchar(10)         NULL
	, dFchModificacion     smalldatetime       NULL
	)
GO

	/* El objeto 'dbo.AUX_TTerminalesMovil' no tiene ningún índice o el usuario no tiene permisos. */
	/* No hay ninguna restricción definida en el objeto 'dbo.AUX_TTerminalesMovil' o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_TTerminalesMovil' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_TTerminalesMovil'. */
USE GESLICO
GO

CREATE TABLE dbo.AUX_TTerminalesMovil
	( nId                     int             NOT NULL
	, cImei                   varchar(15)         NULL
	, cSerie                  varchar(50)         NULL
	, nCodModelo              int             NOT NULL
	, cContrato               varchar(50)         NULL
	, cIdAfaria               varchar(20)         NULL
	, nIdGrupo                int                 NULL
	, dFchBloqueo             datetime            NULL
	, nCodEstado              int             NOT NULL
	, nCodAlmacen             int             NOT NULL
	, nLinea                  int                 NULL
	, nLinea2                 int                 NULL
	, cDNI                    varchar(9)          NULL
	, nCodUni                 int                 NULL
	, cObservaciones          varchar(-1)         NULL
	, dFchUltimaPreasignacion datetime            NULL
	, dFchUltimaAsignacion    datetime            NULL
	, dFchBoxes               datetime            NULL
	, dFchPendiente           datetime            NULL
	, dFchPerdido             datetime            NULL
	, bSAT                    bit                 NULL
	, nIdPedido               int                 NULL
	, cUsuarioAlta            varchar(25)     NOT NULL
	, dFchAlta                datetime        NOT NULL
	, cUsuarioModificacion    varchar(25)         NULL
	, dFchModificacion        datetime            NULL
	)
GO

	/* El objeto 'dbo.AUX_TUnidades' no tiene ningún índice o el usuario no tiene permisos. */
	/* No hay ninguna restricción definida en el objeto 'dbo.AUX_TUnidades' o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_TUnidades' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_TUnidades'. */
USE GESLICO
GO

CREATE TABLE dbo.AUX_TUnidades
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
	)
GO

	/* El objeto 'dbo.AUX_TUsuariosUITEL' no tiene ningún índice o el usuario no tiene permisos. */
	/* No hay ninguna restricción definida en el objeto 'dbo.AUX_TUsuariosUITEL' o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_TUsuariosUITEL' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_TUsuariosUITEL'. */
USE GESLICO
GO

CREATE TABLE dbo.AUX_TUsuariosUITEL
	( cDNI        varchar(9)      NOT NULL
	, nCodUni     int             NOT NULL
	, bActivo     bit             NOT NULL
	, dFchControl datetime        NOT NULL
	)
GO

	/* El objeto 'dbo.AUX_UAF_Telefonos' no tiene ningún índice o el usuario no tiene permisos. */
	/* No hay ninguna restricción definida en el objeto 'dbo.AUX_UAF_Telefonos' o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_UAF_Telefonos' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_UAF_Telefonos'. */
USE GESLICO
GO

CREATE TABLE dbo.AUX_UAF_Telefonos
	( Nº Bien                      nvarchar(510)       NULL
	, B#Ppal#                       nvarchar(510)       NULL
	, Nº Serie                     nvarchar(510)       NULL
	, T#Bien                        nvarchar(510)       NULL
	, T#Bien - Descripción         nvarchar(510)       NULL
	, Modelo                        nvarchar(510)       NULL
	, Modelo - Descripción         nvarchar(510)       NULL
	, Fabric#                       nvarchar(510)       NULL
	, Fabric# - Descripción        nvarchar(510)       NULL
	, Ubicación                    nvarchar(510)       NULL
	, Ubicación - Descripción     nvarchar(510)       NULL
	, ¿Contab#?                    nvarchar(510)       NULL
	, Registro                      float               NULL
	, Fch#Albarán                  nvarchar(510)       NULL
	, Fecha Inv#                    nvarchar(510)       NULL
	, Neto                          float               NULL
	, Fin Amort#                    nvarchar(510)       NULL
	, Alb#Entrega                   nvarchar(510)       NULL
	, Expte#Compra                  nvarchar(510)       NULL
	, Direc# de Sede                nvarchar(510)       NULL
	, Direc# de Sede - Descripción nvarchar(510)       NULL
	, Nº Inventario                nvarchar(510)       NULL
	, Bloqueado                     float               NULL
	, Despacho                      nvarchar(510)       NULL
	, Instalado                     nvarchar(510)       NULL
	, Bien asociado                 nvarchar(510)       NULL
	, Sede                          nvarchar(510)       NULL
	, Sede - Descripción           nvarchar(510)       NULL
	, Ult# contacto                 nvarchar(510)       NULL
	)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_vAlgoritmoDeviceEndUser' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_vAlgoritmoDeviceEndUser'. */
USE GESLICO
GO

CREATE TABLE dbo.AUX_vAlgoritmoDeviceEndUser
	( nnumcorto          int                 NULL
	, nlinea             int             NOT NULL
	, njefe              int                 NULL
	, nempnivel          int                 NULL
	, numper             int                 NULL
	, ncoduni            int                 NULL
	, ceMail             varchar(8000)       NULL
	, cUsuarioAYRE       varchar(9)          NULL
	, ncoddispositivosip int             NOT NULL
	, ncodsubtipofijo    smallint            NULL
	, cmac               varchar(15)     NOT NULL
	)
GO

ALTER TABLE dbo.AUX_vAlgoritmoDeviceEndUser ADD CONSTRAINT PK_AUX_vAlgoritmoDeviceEndUser PRIMARY KEY clustered (nlinea, cmac)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_vAlgoritmoLabels' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_vAlgoritmoLabels'. */
USE GESLICO
GO

CREATE TABLE dbo.AUX_vAlgoritmoLabels
	( nnumcorto    int             NOT NULL
	, nlinea       int             NOT NULL
	, casignacion  varchar(1)      NOT NULL
	, bocultodir   bit                 NULL
	, tipo_display int             NOT NULL
	, nempnivel    int                 NULL
	, ncoduni      int                 NULL
	, display      varchar(124)        NULL
	, dFchControl  datetime            NULL
	)
GO

ALTER TABLE dbo.AUX_vAlgoritmoLabels ADD CONSTRAINT PK_AUX_vAlgoritmoLabels PRIMARY KEY clustered (nlinea)
GO

	/* El objeto 'dbo.AUX_vAlgoritmoLabels2' no tiene ningún índice o el usuario no tiene permisos. */
	/* No hay ninguna restricción definida en el objeto 'dbo.AUX_vAlgoritmoLabels2' o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_vAlgoritmoLabels2' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_vAlgoritmoLabels2'. */
USE GESLICO
GO

CREATE TABLE dbo.AUX_vAlgoritmoLabels2
	( nnumcorto    int             NOT NULL
	, nlinea       int             NOT NULL
	, casignacion  varchar(1)      NOT NULL
	, bocultodir   bit                 NULL
	, tipo_display int             NOT NULL
	, nempnivel    int                 NULL
	, ncoduni      int                 NULL
	, display      varchar(124)        NULL
	)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_vEndUserExtension' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_vEndUserExtension'. */
USE GESLICO
GO

CREATE TABLE dbo.AUX_vEndUserExtension
	( UsuarioAYRE nvarchar(60)        NULL
	, EndUser     nvarchar(60)        NULL
	, extension   int             NOT NULL
	, particion   nvarchar(60)        NULL
	)
GO

ALTER TABLE dbo.AUX_vEndUserExtension ADD CONSTRAINT PK_AUX_vEndUserExtension PRIMARY KEY clustered (extension)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_vistaalerting' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_vistaalerting'. */
USE GESLICO
GO

CREATE TABLE dbo.AUX_vistaalerting
	( extension    nvarchar(60)    NOT NULL
	, particion    nvarchar(100)   NOT NULL
	, alertingname nvarchar(100)   NOT NULL
	, fecha        smalldatetime   NOT NULL
	)
GO

ALTER TABLE dbo.AUX_vistaalerting ADD CONSTRAINT PK_AUX_vistaalerting PRIMARY KEY clustered (extension, particion, fecha)
GO

	/* El objeto 'dbo.AUX_vistaconsumo' no tiene ningún índice o el usuario no tiene permisos. */
	/* No hay ninguna restricción definida en el objeto 'dbo.AUX_vistaconsumo' o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_vistaconsumo' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_vistaconsumo'. */
USE GESLICO
GO

CREATE TABLE dbo.AUX_vistaconsumo
	( extension nvarchar(60)        NULL
	, particion nvarchar(100)       NULL
	, consumo   nvarchar(200)   NOT NULL
	)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_vistalabels' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_vistalabels'. */
USE GESLICO
GO

CREATE TABLE dbo.AUX_vistalabels
	( extension nvarchar(20)    NOT NULL
	, particion nvarchar(100)   NOT NULL
	, device    nvarchar(100)   NOT NULL
	, display   nvarchar(100)   NOT NULL
	, linetext  nvarchar(100)   NOT NULL
	, fecha     datetime        NOT NULL
	)
GO

ALTER TABLE dbo.AUX_vistalabels ADD CONSTRAINT PK_AUX_vistalabels PRIMARY KEY clustered (extension, particion, device, fecha)
GO

	/* El objeto 'dbo.AUX_vmultisededatos' no tiene ningún índice o el usuario no tiene permisos. */
	/* No hay ninguna restricción definida en el objeto 'dbo.AUX_vmultisededatos' o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_vmultisededatos' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_vmultisededatos'. */
USE GESLICO
GO

CREATE TABLE dbo.AUX_vmultisededatos
	( cabecera              int             NOT NULL
	, ncodtipdatos_cabecera smallint        NOT NULL
	, ncodsede              int             NOT NULL
	, bprincipal            int             NOT NULL
	, nivel                 int             NOT NULL
	, nombre_sede           varchar(100)        NULL
	, direccion_sede        varchar(100)        NULL
	, vvlan_def             int                 NULL
	, hijos                 int                 NULL
	)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_vprioridadsede' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_vprioridadsede'. */
USE GESLICO
GO

CREATE TABLE dbo.AUX_vprioridadsede
	( ncodsede  int             NOT NULL
	, prioridad int             NOT NULL
	)
GO

ALTER TABLE dbo.AUX_vprioridadsede ADD CONSTRAINT PK_AUX_vprioridadsede PRIMARY KEY clustered (ncodsede)
GO

	/* El objeto 'dbo.AUX_WifiClientesUnicos' no tiene ningún índice o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_WifiClientesUnicos' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_WifiClientesUnicos'. */
USE GESLICO
GO

CREATE TABLE dbo.AUX_WifiClientesUnicos
	( cAPName     varchar(50)         NULL
	, cSSID       varchar(50)         NULL
	, dLastSeen   varchar(50)         NULL
	, cUser       varchar(20)         NULL
	, cMacAdress  varchar(30)         NULL
	, cVendor     varchar(30)         NULL
	, cIPAdress   varchar(20)         NULL
	, cState      varchar(20)         NULL
	, cProtocol   varchar(20)         NULL
	, dFchControl datetime        NOT NULL
	)
GO

	/* El objeto 'dbo.AUX_WifiTraficoTotal' no tiene ningún índice o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_WifiTraficoTotal' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_WifiTraficoTotal'. */
USE GESLICO
GO

CREATE TABLE dbo.AUX_WifiTraficoTotal
	( cSSID       nvarchar(100)       NULL
	, dEventTime  nvarchar(100)       NULL
	, fUpstream   nvarchar(100)       NULL
	, fDownstream nvarchar(100)       NULL
	, dFchControl datetime        NOT NULL
	)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.AuxDiscoveredEDR' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AuxDiscoveredEDR'. */
USE GESLICO
GO

CREATE TABLE dbo.AuxDiscoveredEDR
	( cNombre     varchar(100)    NOT NULL
	, cDeviceID   varchar(100)    NOT NULL
	, cIpAddress  varchar(1000)       NULL
	, cPlatform   varchar(1000)       NULL
	, cInterface  varchar(1000)       NULL
	, cFichero    varchar(1000)       NULL
	, dFchControl datetime        NOT NULL
	)
GO

CREATE  nonclustered INDEX IX_AuxDiscoveredEDR_DeviceId on dbo.AuxDiscoveredEDR(cDeviceID)
GO

CREATE  nonclustered INDEX IX_AuxDiscoveredEDR_Nombre on dbo.AuxDiscoveredEDR(cNombre)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.AXL_CallingSearchSpace' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AXL_CallingSearchSpace'. */
USE GESLICO
GO

CREATE TABLE dbo.AXL_CallingSearchSpace
	( cNombre     varchar(50)     NOT NULL
	, dFchControl datetime        NOT NULL
	)
GO

ALTER TABLE dbo.AXL_CallingSearchSpace ADD CONSTRAINT PK_AXL_CallingSearchSpace PRIMARY KEY clustered (cNombre)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.AXL_DeviceOptions' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AXL_DeviceOptions'. */
USE GESLICO
GO

CREATE TABLE dbo.AXL_DeviceOptions
	( cDeviceName           nvarchar(100)   NOT NULL
	, cPhoneButtonTemplate  nvarchar(510)       NULL
	, cFeatureControlPolicy nvarchar(510)       NULL
	, dFchControl           datetime        NOT NULL
	)
GO

ALTER TABLE dbo.AXL_DeviceOptions ADD CONSTRAINT PK_AXL_DeviceOptions PRIMARY KEY clustered (cDeviceName)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.AXL_DevicePool' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AXL_DevicePool'. */
USE GESLICO
GO

CREATE TABLE dbo.AXL_DevicePool
	( cDevicePool varchar(255)    NOT NULL
	, cCMG        varchar(50)         NULL
	, dFchControl datetime        NOT NULL
	)
GO

ALTER TABLE dbo.AXL_DevicePool ADD CONSTRAINT PK_AXL_DevicePool PRIMARY KEY clustered (cDevicePool)
GO

	/* El objeto 'dbo.AXL_DevicePool_bck160211' no tiene ningún índice o el usuario no tiene permisos. */
	/* No hay ninguna restricción definida en el objeto 'dbo.AXL_DevicePool_bck160211' o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.AXL_DevicePool_bck160211' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AXL_DevicePool_bck160211'. */
USE GESLICO
GO

CREATE TABLE dbo.AXL_DevicePool_bck160211
	( cDevicePool varchar(255)    NOT NULL
	, dFchControl datetime        NOT NULL
	)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.AXL_Devices' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AXL_Devices'. */
USE GESLICO
GO

CREATE TABLE dbo.AXL_Devices
	( cDeviceName             nvarchar(100)   NOT NULL
	, cDescription            nvarchar(200)       NULL
	, cModelo                 nvarchar(100)       NULL
	, cSpecialLoadInformation nvarchar(100)       NULL
	, cDevicePool             nvarchar(100)       NULL
	, cProtocol               nvarchar(100)       NULL
	, cCSS                    nvarchar(100)       NULL
	, cClass                  nvarchar(100)       NULL
	, dFchControl             datetime        NOT NULL
	)
GO

ALTER TABLE dbo.AXL_Devices ADD CONSTRAINT PK_AXL_Devices PRIMARY KEY clustered (cDeviceName)
GO

	/* El objeto 'dbo.AXL_DevicesDialRules' no tiene ningún índice o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.AXL_DevicesDialRules' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AXL_DevicesDialRules'. */
USE GESLICO
GO

CREATE TABLE dbo.AXL_DevicesDialRules
	( cDeviceName varchar(50)     NOT NULL
	, cDialRule   varchar(50)     NOT NULL
	, dFchControl datetime        NOT NULL
	)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.AXL_EndPoints' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AXL_EndPoints'. */
USE GESLICO
GO

CREATE TABLE dbo.AXL_EndPoints
	( cExt        nvarchar(100)       NULL
	, cEndPoint   nvarchar(100)   NOT NULL
	, cCSS        nvarchar(100)       NULL
	, dFchControl datetime            NULL
	)
GO

CREATE  nonclustered INDEX IX_AXL_Ext on dbo.AXL_EndPoints(cExt)
GO

ALTER TABLE dbo.AXL_EndPoints ADD CONSTRAINT PK_AXL_EndPoints PRIMARY KEY clustered (cEndPoint)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.AXL_EndUser' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AXL_EndUser'. */
USE GESLICO
GO

CREATE TABLE dbo.AXL_EndUser
	( cEndUser    nvarchar(100)   NOT NULL
	, cFirstName  nvarchar(200)       NULL
	, cLastName   nvarchar(200)       NULL
	, cMailId     nvarchar(200)       NULL
	, dFchControl datetime        NOT NULL
	)
GO

ALTER TABLE dbo.AXL_EndUser ADD CONSTRAINT PK_AXL_EndUser PRIMARY KEY clustered (cEndUser)
GO

	/* El objeto 'dbo.AXL_EndUserDevice' no tiene ningún índice o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.AXL_EndUserDevice' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AXL_EndUserDevice'. */
USE GESLICO
GO

CREATE TABLE dbo.AXL_EndUserDevice
	( cDeviceName nvarchar(100)   NOT NULL
	, cEndUser    nvarchar(100)   NOT NULL
	, dFchControl datetime        NOT NULL
	)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.AXL_EndUserNumplan' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AXL_EndUserNumplan'. */
USE GESLICO
GO

CREATE TABLE dbo.AXL_EndUserNumplan
	( cExt        nvarchar(100)   NOT NULL
	, cEndUser    nvarchar(100)   NOT NULL
	, dFchControl datetime        NOT NULL
	)
GO

ALTER TABLE dbo.AXL_EndUserNumplan ADD CONSTRAINT PK_AXL_EndUserNumplan PRIMARY KEY clustered (cExt, cEndUser)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.AXL_EndUserNumplanDevice' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AXL_EndUserNumplanDevice'. */
USE GESLICO
GO

CREATE TABLE dbo.AXL_EndUserNumplanDevice
	( cExt        nvarchar(100)   NOT NULL
	, cEndUser    nvarchar(100)   NOT NULL
	, cDeviceName nvarchar(100)   NOT NULL
	, dFchControl datetime        NOT NULL
	)
GO

ALTER TABLE dbo.AXL_EndUserNumplanDevice ADD CONSTRAINT PK_AXL_EndUserNumplanDevice PRIMARY KEY clustered (cExt, cDeviceName, cEndUser)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.AXL_ForwardAll' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AXL_ForwardAll'. */
USE GESLICO
GO

CREATE TABLE dbo.AXL_ForwardAll
	( cNumCorto   nvarchar(100)   NOT NULL
	, cNumDesvio  nvarchar(100)   NOT NULL
	, cCSSForward nvarchar(100)       NULL
	, dFchControl datetime        NOT NULL
	)
GO

CREATE  nonclustered INDEX IX_AXL_ForwardAll on dbo.AXL_ForwardAll(cNumCorto, cNumDesvio)
GO

	/* No hay ninguna restricción definida en el objeto 'dbo.AXL_ForwardBusy' o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.AXL_ForwardBusy' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AXL_ForwardBusy'. */
USE GESLICO
GO

CREATE TABLE dbo.AXL_ForwardBusy
	( cNumCorto             nvarchar(100)   NOT NULL
	, cBusyInternal         nvarchar(100)       NULL
	, cBusyExternal         nvarchar(100)       NULL
	, cNoAnswerInternal     nvarchar(100)       NULL
	, cNoAnswerExternal     nvarchar(100)       NULL
	, cNoCoverageInternal   nvarchar(100)       NULL
	, cNoCoverageExternal   nvarchar(100)       NULL
	, cUnregisteredInternal nvarchar(100)       NULL
	, cUnregisteredExternal nvarchar(100)       NULL
	, dFchControl           datetime        NOT NULL
	)
GO

CREATE  nonclustered INDEX IX_AXL_ForwardBusy on dbo.AXL_ForwardBusy(cNumCorto, cBusyInternal)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.AXL_JTapiCandadoControlledDevices' o el usuario no tiene permisos para hacer referencia a tablas. */
USE GESLICO
GO

CREATE TABLE dbo.AXL_JTapiCandadoControlledDevices
	( cDeviceName nvarchar(100)   NOT NULL
	, cMAC        nvarchar(8000)      NULL
	, dFchControl datetime        NOT NULL
	)
GO

ALTER TABLE dbo.AXL_JTapiCandadoControlledDevices ADD CONSTRAINT PK_AXL_JTapiCandadoControlledDevices PRIMARY KEY clustered (cDeviceName)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.AXL_LineGroup' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AXL_LineGroup'. */
USE GESLICO
GO

CREATE TABLE dbo.AXL_LineGroup
	( nNumCortoCab bigint          NOT NULL
	, cNombreGrupo varchar(255)        NULL
	, nNumCorto    bigint          NOT NULL
	, dFchControl  datetime        NOT NULL
	)
GO

ALTER TABLE dbo.AXL_LineGroup ADD CONSTRAINT PK_AXL_LineGroup PRIMARY KEY clustered (nNumCortoCab, nNumCorto)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.AXL_Modules' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AXL_Modules'. */
USE GESLICO
GO

CREATE TABLE dbo.AXL_Modules
	( cDeviceName  nvarchar(100)   NOT NULL
	, nModuleIndex int                 NULL
	, dFchControl  datetime        NOT NULL
	)
GO

ALTER TABLE dbo.AXL_Modules ADD CONSTRAINT PK_AXL_Modules PRIMARY KEY clustered (cDeviceName)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.AXL_NumPlan' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AXL_NumPlan'. */
USE GESLICO
GO

CREATE TABLE dbo.AXL_NumPlan
	( cExt          nvarchar(100)       NULL
	, cDeviceName   nchar(100)          NULL
	, cPartition    nvarchar(100)       NULL
	, cCSS          nvarchar(100)       NULL
	, cAlertingName nvarchar(100)       NULL
	, cClass        nvarchar(100)       NULL
	, cPatternUsage nvarchar(100)       NULL
	, dFchControl   datetime        NOT NULL
	)
GO

CREATE  nonclustered INDEX IX_AXL_NumPlan_Device on dbo.AXL_NumPlan(cDeviceName)
GO

CREATE  nonclustered INDEX IX_AXL_NumPlan_Ext on dbo.AXL_NumPlan(cExt)
GO

	/* El objeto 'dbo.AXL_NumPlan2' no tiene ningún índice o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.AXL_NumPlan2' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AXL_NumPlan2'. */
USE GESLICO
GO

CREATE TABLE dbo.AXL_NumPlan2
	( cExt                    nvarchar(100)       NULL
	, cparticion              nvarchar(100)       NULL
	, cprimaryCSSForwardAll   nvarchar(100)       NULL
	, csecondaryCSSForwardAll nvarchar(100)       NULL
	, dFchControl             datetime        NOT NULL
	)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.AXL_NumplanDevice' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AXL_NumplanDevice'. */
USE GESLICO
GO

CREATE TABLE dbo.AXL_NumplanDevice
	( cExt        nvarchar(100)   NOT NULL
	, cDeviceName nvarchar(100)   NOT NULL
	, nIndex      int                 NULL
	, cLabel      nvarchar(100)       NULL
	, cDisplay    nvarchar(100)       NULL
	, cEPNM       nvarchar(100)       NULL
	, dFchControl datetime        NOT NULL
	)
GO

CREATE  nonclustered INDEX IX_AXL_NumplanDevice_DeviceName on dbo.AXL_NumplanDevice(cDeviceName)
GO

CREATE  nonclustered INDEX IX_AXL_NumplanDevice_Ext on dbo.AXL_NumplanDevice(cExt)
GO

ALTER TABLE dbo.AXL_NumplanDevice ADD CONSTRAINT PK_AXL_NumplanDevice PRIMARY KEY clustered (cExt, cDeviceName)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.AXL_PickupGroups' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AXL_PickupGroups'. */
USE GESLICO
GO

CREATE TABLE dbo.AXL_PickupGroups
	( cNombre     nvarchar(510)   NOT NULL
	, nNumGrupo   bigint          NOT NULL
	, nNumCorto   bigint              NULL
	, dFchControl datetime        NOT NULL
	)
GO

CREATE  nonclustered INDEX IX_AXL_PickupGroups_nNumCorto on dbo.AXL_PickupGroups(nNumCorto)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.AXL_RoutePlan' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AXL_RoutePlan'. */
USE GESLICO
GO

CREATE TABLE dbo.AXL_RoutePlan
	( cExt          nvarchar(100)       NULL
	, cParticion    nvarchar(510)       NULL
	, cPatternUsage nvarchar(510)       NULL
	, cDescripcion  nvarchar(510)       NULL
	, dFchControl   datetime        NOT NULL
	)
GO

CREATE  nonclustered INDEX IX_AXL_RoutePlan on dbo.AXL_RoutePlan(cExt)
GO

	/* El objeto 'dbo.AXL_UnassignedDNs' no tiene ningún índice o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.AXL_UnassignedDNs' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AXL_UnassignedDNs'. */
USE GESLICO
GO

CREATE TABLE dbo.AXL_UnassignedDNs
	( cExt        varchar(50)     NOT NULL
	, cIsCallable varchar(1)      NOT NULL
	, dFchControl datetime        NOT NULL
	)
GO

	/* El objeto 'dbo.BCK_AltaLineasFacturacion' no tiene ningún índice o el usuario no tiene permisos. */
	/* No hay ninguna restricción definida en el objeto 'dbo.BCK_AltaLineasFacturacion' o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.BCK_AltaLineasFacturacion' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.BCK_AltaLineasFacturacion'. */
USE GESLICO
GO

CREATE TABLE dbo.BCK_AltaLineasFacturacion
	( nLinea         int             NOT NULL
	, nIdFacturacion int                 NULL
	, dFchAlta       datetime        NOT NULL
	, dFchBaja       datetime            NULL
	, bSinCoste      int             NOT NULL
	, dFchControl    datetime        NOT NULL
	, cUsuario       varchar(6)      NOT NULL
	)
GO

	/* El objeto 'dbo.bck_TChecklico' no tiene ningún índice o el usuario no tiene permisos. */
	/* No hay ninguna restricción definida en el objeto 'dbo.bck_TChecklico' o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.bck_TChecklico' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.bck_TChecklico'. */
USE GESLICO
GO

CREATE TABLE dbo.bck_TChecklico
	( nCodTarea         int             NOT NULL
	, bEnError          bit             NOT NULL
	, nTipoTarea        int             NOT NULL
	, cDescripcionTarea varchar(200)        NULL
	, cSolucionError    varchar(120)        NULL
	, nPrioridad        smallint            NULL
	, cSQL              varchar(-1)         NULL
	, bErrorSQL         bit             NOT NULL
	, bActiva           bit             NOT NULL
	, nElemenerror      int                 NULL
	, cUsuario          nvarchar(100)       NULL
	, nIdUsuario        int                 NULL
	, nIdSupervisor     int                 NULL
	, bExcel            bit             NOT NULL
	, cTabla            varchar(-1)         NULL
	, dFchActualizacion datetime        NOT NULL
	)
GO

	/* El objeto 'dbo.bck_TUsuarios' no tiene ningún índice o el usuario no tiene permisos. */
	/* No hay ninguna restricción definida en el objeto 'dbo.bck_TUsuarios' o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.bck_TUsuarios' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.bck_TUsuarios'. */
USE GESLICO
GO

CREATE TABLE dbo.bck_TUsuarios
	( nIdUsuario      int             NOT NULL
	, cCodUsuario     varchar(25)     NOT NULL
	, cClave          varbinary(8000)     NULL
	, cNombre         varchar(50)     NOT NULL
	, cCorreo         varchar(100)        NULL
	, bActivo         bit             NOT NULL
	, password_digest varchar(100)        NULL
	)
GO

	/* El objeto 'dbo.bck_TUsuariosProgramas' no tiene ningún índice o el usuario no tiene permisos. */
	/* No hay ninguna restricción definida en el objeto 'dbo.bck_TUsuariosProgramas' o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.bck_TUsuariosProgramas' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.bck_TUsuariosProgramas'. */
USE GESLICO
GO

CREATE TABLE dbo.bck_TUsuariosProgramas
	( nIdUsuario   int             NOT NULL
	, nCodPrograma int             NOT NULL
	, sPermiso     char(1)         NOT NULL
	, cCodUsuario  varchar(20)         NULL
	)
GO

	/* El objeto 'dbo.CactiUrls' no tiene ningún índice o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.CactiUrls' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.CactiUrls'. */
USE GESLICO
GO

CREATE TABLE dbo.CactiUrls
	( CodSede                       nvarchar(12)    NOT NULL
	, id                            int             NOT NULL
	, local_graph_template_graph_id int             NOT NULL
	, local_graph_id                int             NOT NULL
	, graph_template_id             int             NOT NULL
	, title                         nvarchar(510)   NOT NULL
	, title_cache                   nvarchar(510)   NOT NULL
	, URL                           nvarchar(-1)    NOT NULL
	, dFchControl                   datetime            NULL
	)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.CATEGORIAS_AHORRO' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.CATEGORIAS_AHORRO'. */
USE GESLICO
GO

CREATE TABLE dbo.CATEGORIAS_AHORRO
	( nLinea                         int             NOT NULL
	, cCategoriaInicial              varchar(30)         NULL
	, cCategoriaAutorizadaInicial    varchar(30)         NULL
	, dFchCategoriaAutorizadaInicial datetime            NULL
	, cCategoria1res                 varchar(30)         NULL
	, cCategoria2res                 varchar(30)         NULL
	, cCategoria3res                 varchar(30)         NULL
	, cCategoriaIAM_AE               varchar(30)         NULL
	, cCategoriaAE2                  varchar(30)         NULL
	, cCheck                         bit                 NULL
	, cCategoriaTribu                varchar(30)         NULL
	, cCategoriaSeguridad            varchar(30)         NULL
	, cCategoriaMAmbiente            varchar(30)         NULL
	, cCategoriaSostenibilidad       varchar(30)         NULL
	, cCategoriaSgtMA44B             varchar(30)         NULL
	)
GO

ALTER TABLE dbo.CATEGORIAS_AHORRO ADD CONSTRAINT PK_CATEGORIAS_AHORRO PRIMARY KEY clustered (nLinea)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.Checklico_10025' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.Checklico_10025'. */
USE GESLICO
GO

CREATE TABLE dbo.Checklico_10025
	( nId                  int             NOT NULL
	, cDNI                 nchar(18)       NOT NULL
	, nCodPtoAnterior      int             NOT NULL
	, nCodPtoNuevo         int             NOT NULL
	, nLinea               int             NOT NULL
	, nNumCorto            int                 NULL
	, cPuestoAnterior      varchar(40)     NOT NULL
	, cPuestoNuevo         varchar(40)     NOT NULL
	, dFchControl          datetime        NOT NULL
	, dFchConfirmacion     datetime            NULL
	, cUsuarioConfirmacion varchar(30)         NULL
	)
GO

ALTER TABLE dbo.Checklico_10025 ADD CONSTRAINT PK_Checklico_10025 PRIMARY KEY clustered (nId)
GO

	/* El objeto 'dbo.COM_AUTORIZACION' no tiene ningún índice o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.COM_AUTORIZACION' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.COM_AUTORIZACION'. */
USE GESLICO
GO

CREATE TABLE dbo.COM_AUTORIZACION
	( USUARIO      char(8)         NOT NULL
	, ID_UNIDAD    int             NOT NULL
	, ACTIVO       char(1)             NULL
	, USU_ACTUALIZ char(8)             NULL
	, FCH_ACTUALIZ datetime            NULL
	)
GO

	/* El objeto 'dbo.COM_AUTORIZADOS_cuarentena' no tiene ningún índice o el usuario no tiene permisos. */
	/* No hay ninguna restricción definida en el objeto 'dbo.COM_AUTORIZADOS_cuarentena' o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.COM_AUTORIZADOS_cuarentena' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.COM_AUTORIZADOS_cuarentena'. */
USE GESLICO
GO

CREATE TABLE dbo.COM_AUTORIZADOS_cuarentena
	( USUARIO      char(8)         NOT NULL
	, ID_UNIDAD    int             NOT NULL
	, ACTIVO       char(1)             NULL
	, USU_ACTUALIZ char(8)             NULL
	, FCH_ACTUALIZ datetime            NULL
	)
GO

	/* No hay ninguna restricción definida en el objeto 'dbo.COM_CENTRO_TRABAJO' o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.COM_CENTRO_TRABAJO' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.COM_CENTRO_TRABAJO'. */
USE GESLICO
GO

CREATE TABLE dbo.COM_CENTRO_TRABAJO
	( CENTRO_TRABAJO int             NOT NULL
	, CLS_VIAL       nvarchar(60)    NOT NULL
	, NOM_VIAL       nvarchar(144)   NOT NULL
	, NOM_APP        nvarchar(6)     NOT NULL
	, NUM_APP        nvarchar(12)    NOT NULL
	, CAL_APP        nvarchar(4)     NOT NULL
	, COD_POSTAL     nvarchar(10)    NOT NULL
	, PAIS           nvarchar(52)    NOT NULL
	, PROVINCIA      nvarchar(40)    NOT NULL
	, MUNICIPIO      nvarchar(80)    NOT NULL
	)
GO

CREATE  nonclustered INDEX IX_COM_CENTRO_TRABAJO_CENTRO_TRABAJO on dbo.COM_CENTRO_TRABAJO(CENTRO_TRABAJO)
GO

	/* El objeto 'dbo.COM_CENTROSCOSTE' no tiene ningún índice o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.COM_CENTROSCOSTE' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.COM_CENTROSCOSTE'. */
USE GESLICO
GO

CREATE TABLE dbo.COM_CENTROSCOSTE
	( dependencia  varchar(12)         NULL
	, denominacion varchar(60)         NULL
	, CC           varchar(15)         NULL
	, descripcion  varchar(40)         NULL
	, dFchControl  datetime            NULL
	)
GO

	/* El objeto 'dbo.COM_DEPENDENCIAS' no tiene ningún índice o el usuario no tiene permisos. */
	/* No hay ninguna restricción definida en el objeto 'dbo.COM_DEPENDENCIAS' o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.COM_DEPENDENCIAS' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.COM_DEPENDENCIAS'. */
USE GESLICO
GO

CREATE TABLE dbo.COM_DEPENDENCIAS
	( ID_UNIDAD       nvarchar(16)        NULL
	, DEPENDENCIA     nvarchar(24)        NULL
	, DENOMINACION    nvarchar(160)       NULL
	, ID_UNIDAD_PADRE nvarchar(16)        NULL
	, TELEFONO1       nvarchar(18)        NULL
	, TELEFONO2       nvarchar(18)        NULL
	, TELEFONO3       nvarchar(18)        NULL
	, TELEFONO4       nvarchar(18)        NULL
	, EMAIL           nvarchar(160)       NULL
	, FAX             nvarchar(18)        NULL
	, MOVIL           nvarchar(18)        NULL
	, CLS_VIAL        nvarchar(48)        NULL
	, NOM_VIAL        nvarchar(144)       NULL
	, NOM_APP         nvarchar(6)         NULL
	, NUM_APP         nvarchar(12)        NULL
	, CAL_APP         nvarchar(4)         NULL
	, COD_POST        nvarchar(10)        NULL
	, POBLACIÓN      nvarchar(140)       NULL
	, ID_AREA_JM_OOAA nvarchar(16)        NULL
	, CENTRO_TRABAJO  int                 NULL
	, NUM_ORDEN       int                 NULL
	)
GO

	/* El objeto 'dbo.COM_DNI_INEX' no tiene ningún índice o el usuario no tiene permisos. */
	/* No hay ninguna restricción definida en el objeto 'dbo.COM_DNI_INEX' o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.COM_DNI_INEX' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.COM_DNI_INEX'. */
USE GESLICO
GO

CREATE TABLE dbo.COM_DNI_INEX
	( DNI varchar(255)        NULL
	)
GO

	/* El objeto 'dbo.COM_ICC_IMEI' no tiene ningún índice o el usuario no tiene permisos. */
	/* No hay ninguna restricción definida en el objeto 'dbo.COM_ICC_IMEI' o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.COM_ICC_IMEI' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.COM_ICC_IMEI'. */
USE GESLICO
GO

CREATE TABLE dbo.COM_ICC_IMEI
	( NUMERO        varchar(255)        NULL
	, ICC           varchar(255)        NULL
	, TERMINAL      varchar(255)        NULL
	, IMEI          varchar(255)        NULL
	, DUPLO         varchar(255)        NULL
	, OBSERVACIONES varchar(255)        NULL
	)
GO

	/* El objeto 'dbo.COM_IDENTIDY' no tiene ningún índice o el usuario no tiene permisos. */
	/* No hay ninguna restricción definida en el objeto 'dbo.COM_IDENTIDY' o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.COM_IDENTIDY' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.COM_IDENTIDY'. */
USE GESLICO
GO

CREATE TABLE dbo.COM_IDENTIDY
	( Linea         int                 NULL
	, CORTO         int                 NULL
	, DNI           varchar(255)        NULL
	, GRUPO         varchar(255)        NULL
	, DNI duplicado varchar(255)        NULL
	, Campo6        int                 NULL
	, TERMINAL      varchar(255)        NULL
	, CODADC        varchar(255)        NULL
	, OBSERVA       varchar(255)        NULL
	)
GO

	/* El objeto 'dbo.COM_IDENTIDY_JMGB5' no tiene ningún índice o el usuario no tiene permisos. */
	/* No hay ninguna restricción definida en el objeto 'dbo.COM_IDENTIDY_JMGB5' o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.COM_IDENTIDY_JMGB5' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.COM_IDENTIDY_JMGB5'. */
USE GESLICO
GO

CREATE TABLE dbo.COM_IDENTIDY_JMGB5
	( Linea         varchar(255)        NULL
	, CORTO         varchar(255)        NULL
	, DNI           varchar(255)        NULL
	, CODADC        varchar(255)        NULL
	, TERMINAL      varchar(255)        NULL
	, OBSERVACIONES varchar(255)        NULL
	)
GO

	/* El objeto 'dbo.COM_IMEI_ICC' no tiene ningún índice o el usuario no tiene permisos. */
	/* No hay ninguna restricción definida en el objeto 'dbo.COM_IMEI_ICC' o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.COM_IMEI_ICC' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.COM_IMEI_ICC'. */
USE GESLICO
GO

CREATE TABLE dbo.COM_IMEI_ICC
	( NUMERO        varchar(255)        NULL
	, ICC           varchar(255)        NULL
	, TERMINAL      varchar(255)        NULL
	, IMEI          varchar(255)        NULL
	, DUPLO         varchar(255)        NULL
	, OBSERVACIONES varchar(255)        NULL
	)
GO

	/* El objeto 'dbo.COM_PLANTILLA' no tiene ningún índice o el usuario no tiene permisos. */
	/* No hay ninguna restricción definida en el objeto 'dbo.COM_PLANTILLA' o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.COM_PLANTILLA' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.COM_PLANTILLA'. */
USE GESLICO
GO

CREATE TABLE dbo.COM_PLANTILLA
	( PUESTO_PTO            int                 NULL
	, DEN_PUESTO            nvarchar(200)       NULL
	, TIPO_PTO              nvarchar(2)         NULL
	, ID_UNIDAD_ADSCRIPCION nvarchar(16)        NULL
	, ADSCRIPCION_PTO       nvarchar(24)        NULL
	, NUMPER                int                 NULL
	, TIP_DOCUMEN_PER       nvarchar(2)         NULL
	, NUM_DOCUMEN_PER       nvarchar(18)        NULL
	, CLS_DOCUMEN_PER       nvarchar(4)         NULL
	, APELLIDO1_PER         nvarchar(80)        NULL
	, APELLIDO2_PER         nvarchar(80)        NULL
	, NOMBRE_PER            nvarchar(80)        NULL
	, EMAIL_PER             nvarchar(160)       NULL
	, DIVISION              nvarchar(8)         NULL
	, SITUACION             nvarchar(4)         NULL
	, MODALIDAD             nvarchar(4)         NULL
	, TELEFONO1_PTO         nvarchar(18)        NULL
	, TELEFONO2_PTO         nvarchar(18)        NULL
	, TELEFONO3_PTO         nvarchar(18)        NULL
	, FAX_PTO               nvarchar(18)        NULL
	, MOVIL_PER             nvarchar(18)        NULL
	, AREA_PESONAL          nvarchar(6)         NULL
	, GRUPO_PTO             nvarchar(24)        NULL
	, NIVEL_PTO             nvarchar(4)         NULL
	)
GO

	/* El objeto 'dbo.COM_RPV' no tiene ningún índice o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.COM_RPV' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.COM_RPV'. */
USE GESLICO
GO

CREATE TABLE dbo.COM_RPV
	( NUMCORTO    varchar(50)         NULL
	, NUMLARGO    varchar(50)         NULL
	, dFchControl datetime        NOT NULL
	)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.COM_SUBTIPOS' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.COM_SUBTIPOS'. */
USE GESLICO
GO

CREATE TABLE dbo.COM_SUBTIPOS
	( id           nchar(8)        NOT NULL
	, cDescripcion varchar(50)     NOT NULL
	)
GO

ALTER TABLE dbo.COM_SUBTIPOS ADD CONSTRAINT PK_COM_SUBTIPOS PRIMARY KEY clustered (id)
GO

	/* El objeto 'dbo.COM_TELEFONOS_PERSONAS' no tiene ningún índice o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.COM_TELEFONOS_PERSONAS' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.COM_TELEFONOS_PERSONAS'. */
USE GESLICO
GO

CREATE TABLE dbo.COM_TELEFONOS_PERSONAS
	( NUMPER              int             NOT NULL
	, DISPOSITIVO         nvarchar(18)    NOT NULL
	, TIP_DISPOSITIVO     nvarchar(2)     NOT NULL
	, TIP_DISPOSITIVO_SAP nchar(8)            NULL
	, VISIBILIDAD         nvarchar(2)     NOT NULL
	, dFchControl         datetime            NULL
	)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.COM_TELEFONOS_PLANTILLA' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.COM_TELEFONOS_PLANTILLA'. */
USE GESLICO
GO

CREATE TABLE dbo.COM_TELEFONOS_PLANTILLA
	( ID_UNIDAD           int             NOT NULL
	, NUMPER              int             NOT NULL
	, ID_PUESTO           int             NOT NULL
	, DISPOSITIVO         nvarchar(18)    NOT NULL
	, TIP_DISPOSITIVO     nvarchar(2)     NOT NULL
	, TIP_DISPOSITIVO_SAP nchar(8)            NULL
	, VISIBILIDAD         nvarchar(2)     NOT NULL
	, dFchControl         datetime            NULL
	)
GO

CREATE  nonclustered INDEX _dta_index_COM_TELEFONOS_PLANTILLA_17_2032114380__K4 on dbo.COM_TELEFONOS_PLANTILLA(DISPOSITIVO)
GO

CREATE  nonclustered INDEX _dta_index_COM_TELEFONOS_PLANTILLA_17_2032114380__K4_K1_K5_3 on dbo.COM_TELEFONOS_PLANTILLA(DISPOSITIVO, ID_UNIDAD, TIP_DISPOSITIVO)
GO

CREATE  nonclustered INDEX IX_COM_TELEFONOS_PLANTILLA on dbo.COM_TELEFONOS_PLANTILLA(NUMPER, ID_PUESTO, DISPOSITIVO)
GO

CREATE  nonclustered INDEX IX_COM_TELEFONOS_PLANTILLA_id_puesto on dbo.COM_TELEFONOS_PLANTILLA(ID_PUESTO)
GO

	/* No hay ninguna restricción definida en el objeto 'dbo.COM_TELEFONOS_UNIDADES' o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.COM_TELEFONOS_UNIDADES' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.COM_TELEFONOS_UNIDADES'. */
USE GESLICO
GO

CREATE TABLE dbo.COM_TELEFONOS_UNIDADES
	( ID_UNIDAD           int             NOT NULL
	, DISPOSITIVO         nvarchar(18)    NOT NULL
	, TIP_DISPOSITIVO     nvarchar(2)     NOT NULL
	, TIP_DISPOSITIVO_SAP nchar(8)            NULL
	, VISIBILIDAD         nvarchar(2)     NOT NULL
	, dFchControl         datetime            NULL
	)
GO

CREATE  nonclustered INDEX _dta_index_COM_TELEFONOS_UNIDADES_17_2048114437__K1_K3_2 on dbo.COM_TELEFONOS_UNIDADES(ID_UNIDAD, TIP_DISPOSITIVO)
GO

CREATE  nonclustered INDEX _dta_index_COM_TELEFONOS_UNIDADES_17_2048114437__K2 on dbo.COM_TELEFONOS_UNIDADES(DISPOSITIVO)
GO

	/* El objeto 'dbo.COM_TERMINALES' no tiene ningún índice o el usuario no tiene permisos. */
	/* No hay ninguna restricción definida en el objeto 'dbo.COM_TERMINALES' o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.COM_TERMINALES' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.COM_TERMINALES'. */
USE GESLICO
GO

CREATE TABLE dbo.COM_TERMINALES
	( Linea    float               NULL
	, TERMINAL varchar(255)        NULL
	)
GO

	/* El objeto 'dbo.COM_User_sistemas' no tiene ningún índice o el usuario no tiene permisos. */
	/* No hay ninguna restricción definida en el objeto 'dbo.COM_User_sistemas' o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.COM_User_sistemas' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.COM_User_sistemas'. */
USE GESLICO
GO

CREATE TABLE dbo.COM_User_sistemas
	( NOMBRE            nvarchar(510)       NULL
	, APELLIDOS         nvarchar(510)       NULL
	, DISPLAY NAME      nvarchar(510)       NULL
	, DISTINGUISHEDNAME nvarchar(510)       NULL
	, SAMACCOUNTNAME    nvarchar(510)       NULL
	, MAIL              nvarchar(510)       NULL
	, TELEFONO          float               NULL
	)
GO

	/* No hay ninguna restricción definida en el objeto 'dbo.COM_USUARIOS_AYRE' o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.COM_USUARIOS_AYRE' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.COM_USUARIOS_AYRE'. */
USE GESLICO
GO

CREATE TABLE dbo.COM_USUARIOS_AYRE
	( NUMPER      int             NOT NULL
	, DISPOSITIVO nvarchar(18)    NOT NULL
	, VISIBILIDAD nvarchar(2)     NOT NULL
	)
GO

CREATE  nonclustered INDEX ABD_IX1 on dbo.COM_USUARIOS_AYRE(NUMPER)
GO

	/* El objeto 'dbo.CSQ_DetailedCallAgent' no tiene ningún índice o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.CSQ_DetailedCallAgent' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.CSQ_DetailedCallAgent'. */
USE GESLICO
GO

CREATE TABLE dbo.CSQ_DetailedCallAgent
	( cId                 nvarchar(30)    NOT NULL
	, dCallStartTime      datetime        NOT NULL
	, dCallEndTime        datetime        NOT NULL
	, nContactDisposition smallint            NULL
	, cOriginatorDN       nvarchar(510)       NULL
	, cDestinationDN      nvarchar(100)       NULL
	, cCalledNumber       nvarchar(100)       NULL
	, cCSQName            nvarchar(40)        NULL
	, dQueueTime          datetime            NULL
	, cAgentName          nvarchar(510)       NULL
	, dRingTime           datetime            NULL
	, dTalkTime           datetime            NULL
	, dWorkTime           datetime            NULL
	, cAppName            nvarchar(50)        NULL
	, dFchControl         datetime        NOT NULL
	)
GO

	/* El objeto 'dbo.CSQ_DetailedCallAgent_tmp' no tiene ningún índice o el usuario no tiene permisos. */
	/* No hay ninguna restricción definida en el objeto 'dbo.CSQ_DetailedCallAgent_tmp' o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.CSQ_DetailedCallAgent_tmp' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.CSQ_DetailedCallAgent_tmp'. */
USE GESLICO
GO

CREATE TABLE dbo.CSQ_DetailedCallAgent_tmp
	( cId                 nvarchar(30)    NOT NULL
	, dCallStartTime      datetime        NOT NULL
	, dCallEndTime        datetime        NOT NULL
	, nContactDisposition smallint            NULL
	, cOriginatorDN       nvarchar(510)       NULL
	, cDestinationDN      nvarchar(100)       NULL
	, cCalledNumber       nvarchar(100)       NULL
	, cCSQName            nvarchar(40)        NULL
	, dQueueTime          datetime            NULL
	, cAgentName          nvarchar(510)       NULL
	, dRingTime           datetime            NULL
	, dTalkTime           datetime            NULL
	, dWorkTime           datetime            NULL
	, cAppName            nvarchar(50)        NULL
	)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.CSQ_Festivos' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.CSQ_Festivos'. */
USE GESLICO
GO

CREATE TABLE dbo.CSQ_Festivos
	( dFestivos datetime        NOT NULL
	)
GO

ALTER TABLE dbo.CSQ_Festivos ADD CONSTRAINT PK_CSQ_Festivos PRIMARY KEY clustered (dFestivos)
GO

	/* El objeto 'dbo.CSQ_SicamVip' no tiene ningún índice o el usuario no tiene permisos. */
	/* No hay ninguna restricción definida en el objeto 'dbo.CSQ_SicamVip' o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.CSQ_SicamVip' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.CSQ_SicamVip'. */
USE GESLICO
GO

CREATE TABLE dbo.CSQ_SicamVip
	( dSabado datetime        NOT NULL
	)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.CUOM_AllPhonesReport' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.CUOM_AllPhonesReport'. */
USE GESLICO
GO

CREATE TABLE dbo.CUOM_AllPhonesReport
	( Extn                 nvarchar(100)       NULL
	, PhoneDescription     nvarchar(100)       NULL
	, IPAddress            nvarchar(100)       NULL
	, MACAddress           nvarchar(100)   NOT NULL
	, Model                nvarchar(100)       NULL
	, Regd                 nvarchar(100)       NULL
	, CMCMEAddress         nvarchar(100)       NULL
	, SwitchAddress        nvarchar(100)       NULL
	, Port                 nvarchar(100)       NULL
	, DevicePool           nvarchar(100)       NULL
	, PartitionName        nvarchar(100)       NULL
	, StatusReasonCode     nvarchar(100)       NULL
	, Protocol             nvarchar(100)       NULL
	, CMCMEName            nvarchar(100)       NULL
	, CM                   nvarchar(100)       NULL
	, PrimaryCUCM          nvarchar(100)       NULL
	, SwitchName           nvarchar(100)       NULL
	, SwitchPrivateAddress nvarchar(100)       NULL
	, PortStatus           nvarchar(100)       NULL
	, VLANName             nvarchar(100)       NULL
	, VLANID               nvarchar(100)       NULL
	, SRSTmode             nvarchar(100)       NULL
	, SRSTRouter           nvarchar(100)       NULL
	, SerialNo             nvarchar(100)       NULL
	, ApplicationId        nvarchar(100)       NULL
	, LoadId               nvarchar(100)       NULL
	, dFchControl          datetime        NOT NULL
	)
GO

CREATE  nonclustered INDEX IX_CUOM_AllPhonesReport_ext on dbo.CUOM_AllPhonesReport(Extn)
GO

CREATE  nonclustered INDEX IX_CUOM_AllPhonesReport_mac on dbo.CUOM_AllPhonesReport(MACAddress)
GO

	/* El objeto 'dbo.CUOMUnknownRejected' no tiene ningún índice o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.CUOMUnknownRejected' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.CUOMUnknownRejected'. */
USE GESLICO
GO

CREATE TABLE dbo.CUOMUnknownRejected
	( Name         varchar(50)         NULL
	, IpAddress    varchar(50)         NULL
	, DN           varchar(50)         NULL
	, DevicePool   varchar(50)         NULL
	, Description  varchar(250)        NULL
	, Model        varchar(50)         NULL
	, Status       varchar(50)         NULL
	, StatusReason varchar(50)         NULL
	, dFchControl  datetime            NULL
	)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.DefragmentIndexes' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.DefragmentIndexes'. */
USE GESLICO
GO

CREATE TABLE dbo.DefragmentIndexes
	( DatabaseName      nvarchar(200)   NOT NULL
	, SchemaName        nvarchar(200)   NOT NULL
	, TableName         nvarchar(200)   NOT NULL
	, IndexName         nvarchar(200)   NOT NULL
	, DefragmentDate    nvarchar(60)    NOT NULL
	, PercentFragmented float           NOT NULL
	)
GO

ALTER TABLE dbo.DefragmentIndexes ADD CONSTRAINT PK_DefragmentIndexes PRIMARY KEY clustered (DatabaseName, SchemaName, TableName, IndexName, DefragmentDate)
GO

	/* No hay ninguna restricción definida en el objeto 'dbo.DML_LOG' o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.DML_LOG' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.DML_LOG'. */
USE GESLICO
GO

CREATE TABLE dbo.DML_LOG
	( PostTime datetime            NULL
	, DB_User  varchar(100)        NULL
	, App      varchar(100)        NULL
	, Host     varchar(100)        NULL
	, TSQL     varchar(-1)         NULL
	)
GO

CREATE  nonclustered INDEX IX_BY_APP on dbo.DML_LOG(App)
GO

CREATE  nonclustered INDEX IX_BY_TIME on dbo.DML_LOG(PostTime)
GO

CREATE  nonclustered INDEX IX_BY_USER on dbo.DML_LOG(DB_User)
GO

	/* El objeto 'dbo.edgeEDR' no tiene ningún índice o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.edgeEDR' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.edgeEDR'. */
USE GESLICO
GO

CREATE TABLE dbo.edgeEDR
	( FromNode bigint          NOT NULL
	, ToNode   bigint          NOT NULL
	, Weight   int             NOT NULL
	)
GO

	/* El objeto 'dbo.edgeSite' no tiene ningún índice o el usuario no tiene permisos. */
	/* No hay ninguna restricción definida en el objeto 'dbo.edgeSite' o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.edgeSite' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.edgeSite'. */
USE GESLICO
GO

CREATE TABLE dbo.edgeSite
	( FromNode int             NOT NULL
	, ToNode   int             NOT NULL
	, Weight   int             NOT NULL
	)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.GraficasCentralitas' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.GraficasCentralitas'. */
USE GESLICO
GO

CREATE TABLE dbo.GraficasCentralitas
	( FECHA       datetime        NOT NULL
	, BP          int                 NULL
	, BP_250      int                 NULL
	, BP_50       int                 NULL
	, BP_COMPACT  int                 NULL
	, BP_COMSAT   int                 NULL
	, BP_TRUNK    int                 NULL
	, BP_TARIFICA int                 NULL
	, IBERCOM     int                 NULL
	, LIMS        int                 NULL
	)
GO

ALTER TABLE dbo.GraficasCentralitas ADD CONSTRAINT PK_GraficasCentralitas PRIMARY KEY clustered (FECHA)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.GraficasChecklico' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.GraficasChecklico'. */
USE GESLICO
GO

CREATE TABLE dbo.GraficasChecklico
	( DFECHA        datetime        NOT NULL
	, NCODTAREA     int             NOT NULL
	, NTIPOTAREA    int             NOT NULL
	, NPRIORIDAD    smallint            NULL
	, NELEMENERROR  int                 NULL
	, NIDUSUARIO    int                 NULL
	, NIDSUPERVISOR int                 NULL
	)
GO

ALTER TABLE dbo.GraficasChecklico ADD CONSTRAINT PK_GraficasChecklico PRIMARY KEY clustered (DFECHA, NCODTAREA)
GO

	/* El objeto 'dbo.GraficasDispositivosAtributos' no tiene ningún índice o el usuario no tiene permisos. */
	/* No hay ninguna restricción definida en el objeto 'dbo.GraficasDispositivosAtributos' o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.GraficasDispositivosAtributos' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.GraficasDispositivosAtributos'. */
USE GESLICO
GO

CREATE TABLE dbo.GraficasDispositivosAtributos
	( dFchControl  varchar(30)         NULL
	, cDescripcion varchar(50)     NOT NULL
	, cStatus      varchar(20)     NOT NULL
	, cDevicePool  varchar(50)         NULL
	, nCodAlmacen  int                 NULL
	, cNombre      varchar(100)    NOT NULL
	, cEstado      varchar(20)     NOT NULL
	)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.GraficasLinDatosTipo' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.GraficasLinDatosTipo'. */
USE GESLICO
GO

CREATE TABLE dbo.GraficasLinDatosTipo
	( dFecha             datetime        NOT NULL
	, nADSL              int                 NULL
	, nADSLX1            int                 NULL
	, nADSLX2            int                 NULL
	, nADSLX3            int                 NULL
	, nADSLX4            int                 NULL
	, nADSLX6            int                 NULL
	, nADSLX8            int                 NULL
	, nADSLX10           int                 NULL
	, nPaP               int                 NULL
	, nDiba              int                 NULL
	, nMacrolan          int                 NULL
	, nCobrelan          int                 NULL
	, nVPNIP             int                 NULL
	, nFrameRelay        int                 NULL
	, nX25               int                 NULL
	, nRdsiPrimarioDatos int                 NULL
	, nRdsiMAmbiente     int                 NULL
	, nRdsi              int                 NULL
	, nTIC               int                 NULL
	, n3G                int                 NULL
	)
GO

ALTER TABLE dbo.GraficasLinDatosTipo ADD CONSTRAINT PK_GraficasLinDatosTipo PRIMARY KEY clustered (dFecha)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.GraficasLineas' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.GraficasLineas'. */
USE GESLICO
GO

CREATE TABLE dbo.GraficasLineas
	( FECHA           datetime        NOT NULL
	, BP_A            int                 NULL
	, BP_D            int                 NULL
	, IBERCOM_A       int                 NULL
	, IBERCOM_D       int                 NULL
	, TOIP            int                 NULL
	, VG              int                 NULL
	, RTC_VOZ         int                 NULL
	, RTC_AL_AS       int                 NULL
	, RTC_FAX         int                 NULL
	, RTC_OTR         int                 NULL
	, T0              int                 NULL
	, BP_NUMERACION   int                 NULL
	, RDSI_NUMERACION int                 NULL
	, PRIMARIOS_VOZ   int                 NULL
	, PRIMARIOS_DATOS int                 NULL
	)
GO

ALTER TABLE dbo.GraficasLineas ADD CONSTRAINT PK_GraficasLineas PRIMARY KEY clustered (FECHA)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.GraficasLineasSalidaExt' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.GraficasLineasSalidaExt'. */
USE GESLICO
GO

CREATE TABLE dbo.GraficasLineasSalidaExt
	( dFchDatos datetime        NOT NULL
	, nADSL     int                 NULL
	, nADSLx1   int                 NULL
	, nADSLx2   int                 NULL
	, nADSLx3   int                 NULL
	, nADSLx4   int                 NULL
	, nADSLx6   int                 NULL
	, nADSLx8   int                 NULL
	, nADSLx10  int                 NULL
	, nX25      int                 NULL
	, nFRAME    int                 NULL
	, nDIBA     int                 NULL
	)
GO

ALTER TABLE dbo.GraficasLineasSalidaExt ADD CONSTRAINT PK_GraficasLineasSalidaExt PRIMARY KEY clustered (dFchDatos)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.GraficasModelos' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.GraficasModelos'. */
USE GESLICO
GO

CREATE TABLE dbo.GraficasModelos
	( dFchControl        datetime        NOT NULL
	, Modelo             varchar(50)     NOT NULL
	, DesplegadosActivos int                 NULL
	, TotalDesplegados   int                 NULL
	, Retirados          int                 NULL
	)
GO

ALTER TABLE dbo.GraficasModelos ADD CONSTRAINT PK_GraficasModelos PRIMARY KEY clustered (dFchControl, Modelo)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.GraficasVLAN' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.GraficasVLAN'. */
USE GESLICO
GO

CREATE TABLE dbo.GraficasVLAN
	( dFecha          datetime        NOT NULL
	, nAE             int                 NULL
	, nBibliotecas    int                 NULL
	, nCCulturales    int                 NULL
	, nGenericosIAM   int                 NULL
	, nSalud          int                 NULL
	, nSSociales      int                 NULL
	, nPolideportivos int                 NULL
	, nPolicia        int                 NULL
	, nSamur          int                 NULL
	, nBomberos       int                 NULL
	, nBackUpRCM      int                 NULL
	, nCPD            int                 NULL
	)
GO

ALTER TABLE dbo.GraficasVLAN ADD CONSTRAINT PK_GraficasVLAN PRIMARY KEY clustered (dFecha)
GO

	/* El objeto 'dbo.HDeviceCUCM' no tiene ningún índice o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.HDeviceCUCM' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.HDeviceCUCM'. */
USE GESLICO
GO

CREATE TABLE dbo.HDeviceCUCM
	( cMAC          varchar(12)     NOT NULL
	, cTipo         char(1)         NOT NULL
	, dFchOperacion datetime        NOT NULL
	)
GO

	/* El objeto 'dbo.HLinFijosPuestos' no tiene ningún índice o el usuario no tiene permisos. */
	/* No hay ninguna restricción definida en el objeto 'dbo.HLinFijosPuestos' o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.HLinFijosPuestos' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.HLinFijosPuestos'. */
USE GESLICO
GO

CREATE TABLE dbo.HLinFijosPuestos
	( nLinea        int             NOT NULL
	, nCodPto       int             NOT NULL
	, cOperacion    char(2)             NULL
	, cDNI          nchar(20)           NULL
	, dFchOperacion datetime            NULL
	)
GO

	/* El objeto 'dbo.HLinFijosUnidades' no tiene ningún índice o el usuario no tiene permisos. */
	/* No hay ninguna restricción definida en el objeto 'dbo.HLinFijosUnidades' o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.HLinFijosUnidades' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.HLinFijosUnidades'. */
USE GESLICO
GO

CREATE TABLE dbo.HLinFijosUnidades
	( nLinea        int             NOT NULL
	, nCodUni       int             NOT NULL
	, cOperacion    char(2)             NULL
	, dFchOperacion datetime            NULL
	)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.IdentificadoresLibres4Lineas' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.IdentificadoresLibres4Lineas'. */
USE GESLICO
GO

CREATE TABLE dbo.IdentificadoresLibres4Lineas
	( nId int             NOT NULL
	)
GO

ALTER TABLE dbo.IdentificadoresLibres4Lineas ADD CONSTRAINT PK_IdentificadoresLibres4Lineas PRIMARY KEY clustered (nId)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.Informes001' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.Informes001'. */
USE GESLICO
GO

CREATE TABLE dbo.Informes001
	( nUniPadre int             NOT NULL
	, nCodSede  int             NOT NULL
	, nCodUni   int             NOT NULL
	)
GO

ALTER TABLE dbo.Informes001 ADD CONSTRAINT PK_Informes001 PRIMARY KEY clustered (nUniPadre, nCodSede, nCodUni)
GO

	/* No hay ninguna restricción definida en el objeto 'dbo.Informes002' o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.Informes002' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.Informes002'. */
USE GESLICO
GO

CREATE TABLE dbo.Informes002
	( LINEA       int                 NULL
	, NUMCORTO    int                 NULL
	, DNI         varchar(9)          NULL
	, APELLIDO1   varchar(40)         NULL
	, APELLIDO2   varchar(40)         NULL
	, NOMBRE      varchar(40)         NULL
	, NIVEL       int                 NULL
	, PUESTO      varchar(40)         NULL
	, COD_UNIDAD  int                 NULL
	, DEN_UNIDAD  varchar(60)         NULL
	, CENTROCOSTE varchar(10)         NULL
	, COD_AREA    int                 NULL
	, DEN_AREA    varchar(60)         NULL
	, PERFIL      varchar(50)         NULL
	, GPRS        varchar(50)         NULL
	, INTRANET    varchar(50)         NULL
	, MOVILMAIL   varchar(50)         NULL
	, SMS         varchar(50)         NULL
	, BLACKBERRY  varchar(50)         NULL
	, MMS         varchar(50)         NULL
	, nOrder      int                 NULL
	, Terminal1   varchar(50)         NULL
	, Terminal2   varchar(50)         NULL
	, Terminal3   varchar(50)         NULL
	, Voz_1       numeric(12,2)       NULL
	, Voz_2       numeric(12,2)       NULL
	, Voz_3       numeric(12,2)       NULL
	, Datos_1     numeric(12,2)       NULL
	, Datos_2     numeric(12,2)       NULL
	, Datos_3     numeric(12,2)       NULL
	, cUsuario    varchar(10)         NULL
	, Cuotas_1    numeric(12,2)       NULL
	, Cuotas_2    numeric(12,2)       NULL
	, Cuotas_3    numeric(12,2)       NULL
	, Mes_1       nchar(20)           NULL
	, Mes_2       nchar(20)           NULL
	, Mes_3       nchar(20)           NULL
	)
GO

CREATE  nonclustered INDEX IX_Informes002_Area on dbo.Informes002(COD_AREA)
GO

CREATE  nonclustered INDEX IX_Informes002_Linea on dbo.Informes002(LINEA)
GO

CREATE  nonclustered INDEX IX_Informes002_Orden on dbo.Informes002(nOrder)
GO

CREATE  nonclustered INDEX IX_Informes002_Unidad on dbo.Informes002(COD_UNIDAD)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.IP_VoiceQoS' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.IP_VoiceQoS'. */
USE GESLICO
GO

CREATE TABLE dbo.IP_VoiceQoS
	( id           int             NOT NULL
	, nNumCorto    int             NOT NULL
	, cMAC         varchar(50)     NOT NULL
	, cModelo      varchar(50)     NOT NULL
	, nNumDestino  int                 NULL
	, sIP          nvarchar(32)    NOT NULL
	, nCodSede     int             NOT NULL
	, sTipo        char(1)         NOT NULL
	, dFechaInicio datetime        NOT NULL
	, nDuracion    int                 NULL
	, sIPend       nvarchar(100)       NULL
	, sCodec       varchar(25)         NULL
	, nLost        int                 NULL
	, nDelayAvg    int                 NULL
	, nDelayMax    int                 NULL
	, nDelayMin    int                 NULL
	, nJitterAvg   int                 NULL
	, nJitterMax   int                 NULL
	, nJitterMin   int                 NULL
	, nLostRateAvg int                 NULL
	, nLostRateMax int                 NULL
	, nLostRateMin int                 NULL
	, cComentario  varchar(250)        NULL
	, dFchControl  datetime        NOT NULL
	)
GO

CREATE unique nonclustered INDEX IX_LlamadaUnica on dbo.IP_VoiceQoS(dFechaInicio, sIP, sTipo, cMAC, nNumCorto)
GO

ALTER TABLE dbo.IP_VoiceQoS ADD CONSTRAINT PK_IP_VoiceQoS PRIMARY KEY clustered (id)
GO

	/* El objeto 'dbo.MAX_CONSUMO_MENSUAL' no tiene ningún índice o el usuario no tiene permisos. */
	/* No hay ninguna restricción definida en el objeto 'dbo.MAX_CONSUMO_MENSUAL' o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.MAX_CONSUMO_MENSUAL' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.MAX_CONSUMO_MENSUAL'. */
USE GESLICO
GO

CREATE TABLE dbo.MAX_CONSUMO_MENSUAL
	( MES        int             NOT NULL
	, ANYO       int             NOT NULL
	, MAXCONSUMO int                 NULL
	)
GO

	/* El objeto 'dbo.MonitorCandado' no tiene ningún índice o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.MonitorCandado' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.MonitorCandado'. */
USE GESLICO
GO

CREATE TABLE dbo.MonitorCandado
	( extension   varchar(30)     NOT NULL
	, particion   varchar(30)     NOT NULL
	, dFchControl datetime        NOT NULL
	)
GO

	/* El objeto 'dbo.NET_CatalogoRed' no tiene ningún índice o el usuario no tiene permisos. */
	/* No hay ninguna restricción definida en el objeto 'dbo.NET_CatalogoRed' o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.NET_CatalogoRed' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.NET_CatalogoRed'. */
USE GESLICO
GO

CREATE TABLE dbo.NET_CatalogoRed
	( nCodElemento int             NOT NULL
	, cFabricante  varchar(50)         NULL
	, cModelo      varchar(100)        NULL
	, cDescripcion varchar(250)        NULL
	, nCodTipoEdR  smallint            NULL
	, nBocasRed    smallint            NULL
	)
GO

	/* El objeto 'dbo.NET_Componentes' no tiene ningún índice o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.NET_Componentes' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.NET_Componentes'. */
USE GESLICO
GO

CREATE TABLE dbo.NET_Componentes
	( nCodElectronicaRed int             NOT NULL
	, nCodComponente     int                 NULL
	, cSerie             varchar(50)         NULL
	, cProducto          varchar(50)         NULL
	, cPart              varchar(50)         NULL
	, cTipo              varchar(50)         NULL
	, cMAC               varchar(50)         NULL
	, dFchDescarga       datetime            NULL
	)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.NET_DescargaEDR' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.NET_DescargaEDR'. */
USE GESLICO
GO

CREATE TABLE dbo.NET_DescargaEDR
	( nCodElectronicaRed int             NOT NULL
	, cDireccionIP       nvarchar(32)    NOT NULL
	, cNombre            varchar(50)         NULL
	, cComando           varchar(50)     NOT NULL
	, cResultado         varchar(-1)         NULL
	, cTiempoRespuesta   nvarchar(30)        NULL
	, dFchDescarga       datetime        NOT NULL
	)
GO

ALTER TABLE dbo.NET_DescargaEDR ADD CONSTRAINT PK_NET_DescargaEDR_IP PRIMARY KEY clustered (nCodElectronicaRed, cComando, dFchDescarga)
GO

	/* El objeto 'dbo.NET_ElectronicaRed' no tiene ningún índice o el usuario no tiene permisos. */
	/* No hay ninguna restricción definida en el objeto 'dbo.NET_ElectronicaRed' o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.NET_ElectronicaRed' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.NET_ElectronicaRed'. */
USE GESLICO
GO

CREATE TABLE dbo.NET_ElectronicaRed
	( nCodElectronicaRed int             NOT NULL
	, nCodComponente     int                 NULL
	, nSerie             varchar(50)         NULL
	, sProducto          varchar(50)         NULL
	, sPart              varchar(50)         NULL
	)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.NET_InterfaceStatus' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.NET_InterfaceStatus'. */
USE GESLICO
GO

CREATE TABLE dbo.NET_InterfaceStatus
	( nCodElectronicaRed int             NOT NULL
	, cDireccionIP       varchar(16)     NOT NULL
	, cPort              varchar(50)     NOT NULL
	, cName              varchar(50)         NULL
	, cStatus            varchar(50)         NULL
	, cVlan              varchar(50)         NULL
	, cOtros             varchar(250)        NULL
	, dFchDescarga       datetime        NOT NULL
	, dFchControl        datetime        NOT NULL
	)
GO

CREATE  nonclustered INDEX IX_NET_Istatus_DirIP on dbo.NET_InterfaceStatus(cDireccionIP)
GO

CREATE  nonclustered INDEX IX_NET_Istatus_FchControl on dbo.NET_InterfaceStatus(dFchControl)
GO

ALTER TABLE dbo.NET_InterfaceStatus ADD CONSTRAINT PK_NET_InterfaceStatus_1 PRIMARY KEY clustered (nCodElectronicaRed, cPort, dFchDescarga)
GO

	/* El objeto 'dbo.NET_Inventario' no tiene ningún índice o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.NET_Inventario' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.NET_Inventario'. */
USE GESLICO
GO

CREATE TABLE dbo.NET_Inventario
	( nCodElectronicaRed int             NOT NULL
	, cName              varchar(50)         NULL
	, cDescr             varchar(50)         NULL
	, cPID               varchar(50)         NULL
	, cSN                varchar(50)         NULL
	, dFchDescarga       datetime            NULL
	)
GO

	/* El objeto 'dbo.NET_PuertosVlanes' no tiene ningún índice o el usuario no tiene permisos. */
	/* No hay ninguna restricción definida en el objeto 'dbo.NET_PuertosVlanes' o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.NET_PuertosVlanes' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.NET_PuertosVlanes'. */
USE GESLICO
GO

CREATE TABLE dbo.NET_PuertosVlanes
	( nCodElectronicaRed int             NOT NULL
	, cVlan              varchar(50)     NOT NULL
	, cPort              varchar(20)     NOT NULL
	, dFchDescarga       datetime        NOT NULL
	, dFchControl        datetime        NOT NULL
	)
GO

	/* El objeto 'dbo.NET_VersionesEDR' no tiene ningún índice o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.NET_VersionesEDR' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.NET_VersionesEDR'. */
USE GESLICO
GO

CREATE TABLE dbo.NET_VersionesEDR
	( nCodElectronicaRed int             NOT NULL
	, cSoft              varchar(300)        NULL
	, cVersion           varchar(300)        NULL
	, cRelease           varchar(300)        NULL
	, dFchDescarga       datetime        NOT NULL
	)
GO

	/* El objeto 'dbo.NET_VlanBrief' no tiene ningún índice o el usuario no tiene permisos. */
	/* No hay ninguna restricción definida en el objeto 'dbo.NET_VlanBrief' o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.NET_VlanBrief' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.NET_VlanBrief'. */
USE GESLICO
GO

CREATE TABLE dbo.NET_VlanBrief
	( nCodElectronicaRed int             NOT NULL
	, cVlan              varchar(50)     NOT NULL
	, cPorts             varchar(-1)     NOT NULL
	, cName              varchar(50)         NULL
	, cStatus            varchar(50)         NULL
	, dFchDescarga       datetime        NOT NULL
	, dFchControl        datetime        NOT NULL
	)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.nodeDetailEDR' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.nodeDetailEDR'. */
USE GESLICO
GO

CREATE TABLE dbo.nodeDetailEDR
	( Id            bigint          NOT NULL
	, Name          varchar(50)     NOT NULL
	, cIP           varchar(50)         NULL
	, cPlatform     varchar(50)         NULL
	, cCapabilities varchar(100)        NULL
	, nCodSede      int                 NULL
	, nCodCampus    int                 NULL
	, cSede         varchar(100)        NULL
	, cDireccion    varchar(100)        NULL
	, nPlanta       real                NULL
	, cGrupo        varchar(15)         NULL
	, nLinea        int                 NULL
	, nNumCorto     int                 NULL
	, cDisplay      varchar(50)         NULL
	, cTipoLinDatos varchar(50)         NULL
	, dFchControl   datetime        NOT NULL
	)
GO

CREATE  nonclustered INDEX IX_nodeDetailEDR_NAME on dbo.nodeDetailEDR(Name)
GO

ALTER TABLE dbo.nodeDetailEDR ADD CONSTRAINT PK_nodeDetailEDR PRIMARY KEY clustered (Id)
GO

	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.nodeEDR'. */
USE GESLICO
GO

CREATE TABLE dbo.nodeEDR
	( id            bigint          NOT NULL
	, Name          varchar(50)     NOT NULL
	, cPlatform     varchar(100)        NULL
	, cCapabilities varchar(100)        NULL
	)
GO

CREATE  nonclustered INDEX IX_nodeEDR_Name on dbo.nodeEDR(Name)
GO

ALTER TABLE dbo.nodeEDR ADD CONSTRAINT PK_nodeEDR PRIMARY KEY clustered (id)
GO

	/* El objeto 'dbo.nodeSite' no tiene ningún índice o el usuario no tiene permisos. */
	/* No hay ninguna restricción definida en el objeto 'dbo.nodeSite' o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.nodeSite' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.nodeSite'. */
USE GESLICO
GO

CREATE TABLE dbo.nodeSite
	( id   int             NOT NULL
	, Name varchar(131)        NULL
	)
GO

	/* El objeto 'dbo.ObjetosBDBackup' no tiene ningún índice o el usuario no tiene permisos. */
	/* No hay ninguna restricción definida en el objeto 'dbo.ObjetosBDBackup' o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.ObjetosBDBackup' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.ObjetosBDBackup'. */
USE GESLICO
GO

CREATE TABLE dbo.ObjetosBDBackup
	( cObjeto     varchar(50)     NOT NULL
	, cDesc       varchar(-1)     NOT NULL
	, dFchControl datetime        NOT NULL
	)
GO

	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.OLD_TModelosTerminales'. */
USE GESLICO
GO

CREATE TABLE dbo.OLD_TModelosTerminales
	( id      int             NOT NULL
	, Modelo  varchar(150)    NOT NULL
	, Gama    varchar(50)         NULL
	, bImagen image(16)           NULL
	)
GO

CREATE unique nonclustered INDEX IX_TModelosTerminales on dbo.OLD_TModelosTerminales(Modelo)
GO

ALTER TABLE dbo.OLD_TModelosTerminales ADD CONSTRAINT PK_TModelosTerminales PRIMARY KEY clustered (id)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.OLD_TTerminalesMovil' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.OLD_TTerminalesMovil'. */
USE GESLICO
GO

CREATE TABLE dbo.OLD_TTerminalesMovil
	( cImei                varchar(15)     NOT NULL
	, nLineaMovil          int             NOT NULL
	, nCodTipTerm          int             NOT NULL
	, dFechaEntrega        smalldatetime       NULL
	, dFechaDevol          smalldatetime       NULL
	, Gama                 varchar(50)         NULL
	, cObserva             varchar(200)        NULL
	, nCodModelo           int             NOT NULL
	, bActivo              bit             NOT NULL
	, cCContrato           varchar(50)         NULL
	, cIdAfaria            varchar(10)         NULL
	, dFchBloqueo          datetime            NULL
	, cUsuarioAlta         varchar(10)         NULL
	, dFchAlta             smalldatetime       NULL
	, cUsuarioModificacion varchar(10)         NULL
	, dFchModificacion     smalldatetime       NULL
	)
GO

ALTER TABLE dbo.OLD_TTerminalesMovil ADD CONSTRAINT PK_TTerminalesMovil PRIMARY KEY clustered (cImei, nLineaMovil)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.PLAN_DEPENDENCIAS' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.PLAN_DEPENDENCIAS'. */
USE GESLICO
GO

CREATE TABLE dbo.PLAN_DEPENDENCIAS
	( DEPENDENCIA     nvarchar(24)    NOT NULL
	, DENOMINACION    nvarchar(160)   NOT NULL
	, DOMICILIO       nvarchar(80)    NOT NULL
	, TELEFONO1       nvarchar(18)    NOT NULL
	, TELEFONO2       nvarchar(18)    NOT NULL
	, TELEFONO3       nvarchar(18)    NOT NULL
	, TELEFONO4       nvarchar(18)    NOT NULL
	, EMAIL           nvarchar(160)   NOT NULL
	, FAX             nvarchar(18)    NOT NULL
	, MOVIL           nvarchar(18)    NOT NULL
	, DEN_ABREVIADA   nvarchar(52)    NOT NULL
	, TELEFONO1_VER   nvarchar(2)     NOT NULL
	, TELEFONO2_VER   nvarchar(2)     NOT NULL
	, TELEFONO3_VER   nvarchar(2)     NOT NULL
	, TELEFONO4_VER   nvarchar(2)     NOT NULL
	, EMAIL_VER       nvarchar(2)     NOT NULL
	, FAX_VER         nvarchar(2)     NOT NULL
	, MOVIL_VER       nvarchar(2)     NOT NULL
	, TIPO_NUDO       nvarchar(2)     NOT NULL
	, FCH_ALTA        datetime        NOT NULL
	, FCH_EFECTO      datetime        NOT NULL
	, FCH_ACTUALIZ    datetime        NOT NULL
	, NUM_ORDEN       smallint        NOT NULL
	, ID_UNIDAD       int             NOT NULL
	, ID_UNIDAD_PADRE int                 NULL
	, TIPO_UNIDAD     nvarchar(4)         NULL
	, SUBTIPO_UNIDAD  nvarchar(2)         NULL
	, CLS_VIAL        nvarchar(48)        NULL
	, NOM_VIAL        nvarchar(144)       NULL
	, NOM_APP         nvarchar(6)         NULL
	, NUM_APP         nvarchar(12)        NULL
	, CAL_APP         nvarchar(4)         NULL
	, COD_POST        nvarchar(10)        NULL
	, PAIS            nvarchar(52)        NULL
	, POBLACIÓN      nvarchar(140)       NULL
	, PROVINCIA       nvarchar(50)        NULL
	, MUNICIPIO       nvarchar(80)        NULL
	, PTO_AUTORIZANTE int                 NULL
	, CENTRO_TRABAJO  nvarchar(16)        NULL
	, ID_AREA_JM_OOAA nvarchar(16)        NULL
	, dFchControl     datetime        NOT NULL
	)
GO

CREATE  nonclustered INDEX IX_PLAN_DEPENDENCIAS_ID_UNIDAD on dbo.PLAN_DEPENDENCIAS(ID_UNIDAD)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.PLAN_PLANTILLA' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.PLAN_PLANTILLA'. */
USE GESLICO
GO

CREATE TABLE dbo.PLAN_PLANTILLA
	( PUESTO_PTO            int             NOT NULL
	, DEN_PUESTO            nvarchar(80)        NULL
	, TIPO_PTO              nvarchar(2)     NOT NULL
	, ID_UNIDAD_ADSCRIPCION int             NOT NULL
	, ADSCRIPCION_PTO       nvarchar(24)    NOT NULL
	, NUMPER                int             NOT NULL
	, TIP_DOCUMEN_PER       nvarchar(2)     NOT NULL
	, NUM_DOCUMEN_PER       nvarchar(16)    NOT NULL
	, CLS_DOCUMEN_PER       nvarchar(4)     NOT NULL
	, APELLIDO1_PER         nvarchar(50)    NOT NULL
	, APELLIDO2_PER         nvarchar(50)    NOT NULL
	, NOMBRE_PER            nvarchar(40)    NOT NULL
	, EMAIL_PER             nvarchar(160)   NOT NULL
	, DIVISION              nvarchar(8)         NULL
	, SITUACION             nvarchar(4)         NULL
	, MODALIDAD             nvarchar(4)         NULL
	, TELEFONO1_PTO         nvarchar(18)    NOT NULL
	, TELEFONO2_PTO         nvarchar(18)    NOT NULL
	, TELEFONO3_PTO         nvarchar(18)    NOT NULL
	, FAX_PTO               nvarchar(18)    NOT NULL
	, MOVIL_PER             nvarchar(18)    NOT NULL
	, AREA_PER              nvarchar(6)     NOT NULL
	, GRUPO_PTO             nvarchar(24)    NOT NULL
	, NIVEL_PTO             nvarchar(4)     NOT NULL
	, dFchControl           datetime            NULL
	)
GO

CREATE  nonclustered INDEX IX_PLAN_PLANTILLA_NUM_DOCUMEN_PER on dbo.PLAN_PLANTILLA(NUM_DOCUMEN_PER)
GO

CREATE  nonclustered INDEX IX_PLAN_PLANTILLA_NUMPER on dbo.PLAN_PLANTILLA(NUMPER)
GO

	/* El objeto 'dbo.PlanTMP' no tiene ningún índice o el usuario no tiene permisos. */
	/* No hay ninguna restricción definida en el objeto 'dbo.PlanTMP' o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.PlanTMP' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.PlanTMP'. */
USE GESLICO
GO

CREATE TABLE dbo.PlanTMP
	( nPagina int                 NULL
	, cPlan   varchar(-1)         NULL
	)
GO

	/* El objeto 'dbo.Query' no tiene ningún índice o el usuario no tiene permisos. */
	/* No hay ninguna restricción definida en el objeto 'dbo.Query' o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.Query' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.Query'. */
USE GESLICO
GO

CREATE TABLE dbo.Query
	( cIMEI                        varchar(15)         NULL
	, cClientFriendlyName          nvarchar(40)        NULL
	, nIdEntorno                   int             NOT NULL
	, nIdGrupo                     int             NOT NULL
	, cAllowUserProfiles           varchar(8)          NULL
	, cAllowUserPolicyChanges      varchar(8)          NULL
	, cPasswordHidden              varchar(8)          NULL
	, cPromptCredentialsEnabled    varchar(8)          NULL
	, cTlsCertificateSecurityLevel varchar(8)          NULL
	, cMinimumRequiredSecurity     varchar(30)         NULL
	)
GO

	/* El objeto 'dbo.RangosGrandes' no tiene ningún índice o el usuario no tiene permisos. */
	/* No hay ninguna restricción definida en el objeto 'dbo.RangosGrandes' o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.RangosGrandes' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.RangosGrandes'. */
USE GESLICO
GO

CREATE TABLE dbo.RangosGrandes
	( EDIFICIO       nvarchar(510)       NULL
	, UBICACIÓN     nvarchar(510)       NULL
	, DESCRIP        nvarchar(510)       NULL
	, Zona 1-7       nvarchar(510)       NULL
	, IX-EDIF        float               NULL
	, HOSTS          nvarchar(510)       NULL
	, GW Zona 1-7    nvarchar(510)       NULL
	, DESCRIP1       nvarchar(510)       NULL
	, Mng-Net        nvarchar(510)       NULL
	, IX-EDIF1       float               NULL
	, HOSTS1         nvarchar(510)       NULL
	, GW Mng-Net     nvarchar(510)       NULL
	, sedeplanta     nvarchar(510)       NULL
	, TieneRack      float               NULL
	, PlantaRack     float               NULL
	, SEDE           int                 NULL
	, Planta_para_IP float               NULL
	, CARGAR         nvarchar(510)       NULL
	, Literal        nvarchar(510)       NULL
	, Observaciones  nvarchar(510)       NULL
	)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.Rel_Usuarios' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.Rel_Usuarios'. */
USE GESLICO
GO

CREATE TABLE dbo.Rel_Usuarios
	( Usuario varchar(15)     NOT NULL
	)
GO

ALTER TABLE dbo.Rel_Usuarios ADD CONSTRAINT PK_Rel_Usuarios PRIMARY KEY clustered (Usuario)
GO

	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.SD_TiposAcometidas'. */
USE GESLICO
GO

CREATE TABLE dbo.SD_TiposAcometidas
	( IdAcometida  smallint        NOT NULL
	, cDescripcion varchar(20)     NOT NULL
	)
GO

ALTER TABLE dbo.SD_TiposAcometidas ADD CONSTRAINT PK_SD_TIPOSACOMETIDAS PRIMARY KEY clustered (IdAcometida)
GO

	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.SD_TiposCableadoV'. */
USE GESLICO
GO

CREATE TABLE dbo.SD_TiposCableadoV
	( IdVertical   smallint        NOT NULL
	, cDescripcion varchar(20)     NOT NULL
	)
GO

ALTER TABLE dbo.SD_TiposCableadoV ADD CONSTRAINT PK_SD_TIPOSCABLEADOSV PRIMARY KEY clustered (IdVertical)
GO

	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.SD_Ubicaciones'. */
USE GESLICO
GO

CREATE TABLE dbo.SD_Ubicaciones
	( IdUbicacion  smallint        NOT NULL
	, cDescripcion varchar(20)     NOT NULL
	)
GO

ALTER TABLE dbo.SD_Ubicaciones ADD CONSTRAINT PK_SD_UBICACIONES PRIMARY KEY clustered (IdUbicacion)
GO

	/* El objeto 'dbo.SD_Visitas' no tiene ningún índice o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.SD_Visitas' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.SD_Visitas'. */
USE GESLICO
GO

CREATE TABLE dbo.SD_Visitas
	( nCodVisita       int             NOT NULL
	, ID_VISITA        int             NOT NULL
	, nCodSede         int                 NULL
	, Mutisede         bit             NOT NULL
	, FotoExterior     bit             NOT NULL
	, Arqueta          bit             NOT NULL
	, FotoArqueta      bit             NOT NULL
	, Acometida        smallint            NULL
	, FotoAcometida    bit             NOT NULL
	, CableadoH        bit             NOT NULL
	, CategiraH        nvarchar(60)        NULL
	, CableadoVertical smallint            NULL
	, Canalizacion     bit             NOT NULL
	, PTRO             bit             NOT NULL
	, PTROFacil        bit             NOT NULL
	, PTROOtros        nvarchar(100)       NULL
	, FotoPTRO         bit             NOT NULL
	, AccesoFO         nvarchar(100)       NULL
	, RITI             bit             NOT NULL
	, EnchufesOcupados int                 NULL
	, EnchufesLibres   int                 NULL
	, Centralita       bit             NOT NULL
	, Modelo           int                 NULL
	, FotoCentralita   bit             NOT NULL
	, Ubicacion        smallint            NULL
	, Regleta          bit             NOT NULL
	, FotoRegleta      bit             NOT NULL
	, ExtensionesVoz   nvarchar(100)       NULL
	, NumRTC           int                 NULL
	, NumFax           int                 NULL
	, Tarificador      bit             NOT NULL
	, Trunking         bit             NOT NULL
	, COMSAT           bit             NOT NULL
	, RackDatos        bit             NOT NULL
	, FotoRack         bit             NOT NULL
	, CercaniaRack     bit             NOT NULL
	, MetroRack        int                 NULL
	, RosetasVoz       int                 NULL
	, RosetasDatos     int                 NULL
	, RosetasVozDatos  int                 NULL
	, FotoRosetas      bit             NOT NULL
	, Router           nvarchar(100)       NULL
	, FotoRouter       bit             NOT NULL
	, BocasOcupadas    int                 NULL
	, BocasLibres      int                 NULL
	, BocasLuz         int                 NULL
	, FotoBocas        bit             NOT NULL
	, NumRDSI          int                 NULL
	, WIFIint          bit             NOT NULL
	, WIFIext          bit             NOT NULL
	, NumPCs           int                 NULL
	, Observaciones    nvarchar(500)       NULL
	, Operador         nvarchar(100)       NULL
	, Fecha            datetime            NULL
	)
GO

	/* El objeto 'dbo.shInternetProtocol' no tiene ningún índice o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.shInternetProtocol' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.shInternetProtocol'. */
USE GESLICO
GO

CREATE TABLE dbo.shInternetProtocol
	( cDevice      varchar(25)     NOT NULL
	, cIp          varchar(25)     NOT NULL
	, cInterfaz    varchar(25)     NOT NULL
	, nLineSt      int             NOT NULL
	, nProtocolSt  int             NOT NULL
	, cRed         varchar(25)         NULL
	, dFchDescarga datetime        NOT NULL
	, dFchControl  datetime        NOT NULL
	)
GO

	/* El objeto 'dbo.shIpInterfaces' no tiene ningún índice o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.shIpInterfaces' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.shIpInterfaces'. */
USE GESLICO
GO

CREATE TABLE dbo.shIpInterfaces
	( cDevice      varchar(25)     NOT NULL
	, cIp          varchar(25)     NOT NULL
	, cInterfaz    varchar(25)     NOT NULL
	, nLineSt      int             NOT NULL
	, nProtocolSt  int             NOT NULL
	, cRed         varchar(25)         NULL
	, dFchDescarga datetime        NOT NULL
	, dFchControl  datetime        NOT NULL
	)
GO

	/* El objeto 'dbo.SICAM_DIRECCIONES' no tiene ningún índice o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.SICAM_DIRECCIONES' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.SICAM_DIRECCIONES'. */
USE GESLICO
GO

CREATE TABLE dbo.SICAM_DIRECCIONES
	( SICAM_txt_Codigo_direccion    varchar(25)         NULL
	, SICAM_txt_direccion_compuesta varchar(300)        NULL
	, SICAM_txt_Tipo_via            varchar(25)         NULL
	, SICAM_txt_Nombre_de_calle     varchar(255)        NULL
	, SICAM_txt_Numero_calle        varchar(25)         NULL
	, SICAM_txt_Codigo_postal       varchar(5)          NULL
	, SICAM_txt_zona_actuacion      varchar(255)        NULL
	, SICAM_txt_zona_grupo          varchar(255)        NULL
	, SICAM_txt_zona_grupo_id       varchar(255)        NULL
	, SICAM_txt_CodigoNDP           varchar(255)        NULL
	, dFchControl                   datetime        NOT NULL
	)
GO

	/* El objeto 'dbo.SICAM_GESLICO_LISTA_SERVICIO_EXTENDIDO' no tiene ningún índice o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.SICAM_GESLICO_LISTA_SERVICIO_EXTENDIDO' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.SICAM_GESLICO_LISTA_SERVICIO_EXTENDIDO'. */
USE GESLICO
GO

CREATE TABLE dbo.SICAM_GESLICO_LISTA_SERVICIO_EXTENDIDO
	( Remitente                        varchar(254)        NULL
	, Fecha_de_creación               int             NOT NULL
	, Última_modificación_realizada_ varchar(254)    NOT NULL
	, Fecha_de_modificación           int             NOT NULL
	, Remedy_Login_ID                  varchar(254)        NULL
	, SICAM_txt_Segundo_apellido       varchar(25)         NULL
	, SICAM_txt_Primer_apellido        varchar(25)         NULL
	, SICAM_txt_area_personal          varchar(25)         NULL
	, First_Name                       varchar(30)         NULL
	, SICAM_lst_Tipo_VIP               varchar(30)         NULL
	, dFchControl                      datetime        NOT NULL
	)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.SICAM_GESLICO_TICKET_ACTUACIONES' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.SICAM_GESLICO_TICKET_ACTUACIONES'. */
USE GESLICO
GO

CREATE TABLE dbo.SICAM_GESLICO_TICKET_ACTUACIONES
	( ID_Ticket                varchar(15)     NOT NULL
	, Categorizacion_Producto1 varchar(60)         NULL
	, Telefono_Largo           int                 NULL
	, Notas                    varchar(-1)         NULL
	, Fecha_registro           datetime            NULL
	, Tipo_servicio            varchar(50)         NULL
	, dFchControl              datetime        NOT NULL
	)
GO

ALTER TABLE dbo.SICAM_GESLICO_TICKET_ACTUACIONES ADD CONSTRAINT PK_SICAM_GESLICO_TICKET_ACTUACIONES PRIMARY KEY clustered (ID_Ticket)
GO

	/* El objeto 'dbo.SICAM_PERSONAS_GRUPOS' no tiene ningún índice o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.SICAM_PERSONAS_GRUPOS' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.SICAM_PERSONAS_GRUPOS'. */
USE GESLICO
GO

CREATE TABLE dbo.SICAM_PERSONAS_GRUPOS
	( Company                     varchar(254)        NULL
	, Support_Organization        varchar(60)         NULL
	, Support_Group_Name          varchar(60)         NULL
	, Support_Group_ID            varchar(15)     NOT NULL
	, First_Name                  varchar(30)         NULL
	, SICAM_txt_Primer_apellido   varchar(255)        NULL
	, SICAM_txt_Segundo_apellido  varchar(255)        NULL
	, Full_Name                   varchar(128)        NULL
	, Remedy_Login_ID             varchar(254)        NULL
	, SICAM_txt_telefono_contacto varchar(50)         NULL
	, Phone_Number_Mobile         varchar(50)         NULL
	, Phone_Number_Fax            varchar(50)         NULL
	, Internet_E_mail             varchar(255)        NULL
	, dFchControl                 datetime        NOT NULL
	)
GO

	/* El objeto 'dbo.SMS' no tiene ningún índice o el usuario no tiene permisos. */
	/* No hay ninguna restricción definida en el objeto 'dbo.SMS' o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.SMS' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.SMS'. */
USE GESLICO
GO

CREATE TABLE dbo.SMS
	( LINEA            int                 NULL
	, Nº EXT          float               NULL
	, TIPO DE TRÁFICO nvarchar(510)       NULL
	, Nº LLAMADAS     float               NULL
	)
GO

	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.SMSAgenda'. */
USE GESLICO
GO

CREATE TABLE dbo.SMSAgenda
	( id          int             NOT NULL
	, cNumero     varchar(20)     NOT NULL
	, cNombre     varchar(100)    NOT NULL
	, cNotas      text(16)            NULL
	, idUsuario   int             NOT NULL
	, dFchControl datetime        NOT NULL
	)
GO

ALTER TABLE dbo.SMSAgenda ADD CONSTRAINT PK_SMSAgenda PRIMARY KEY clustered (id)
GO

	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.SMSApps'. */
USE GESLICO
GO

CREATE TABLE dbo.SMSApps
	( id         int             NOT NULL
	, cAppMentes varchar(50)     NOT NULL
	, cPassword  varchar(50)     NOT NULL
	, nLimiteSMS int                 NULL
	)
GO

CREATE unique nonclustered INDEX IX_SMSApps on dbo.SMSApps(cAppMentes)
GO

ALTER TABLE dbo.SMSApps ADD CONSTRAINT PK_SMSApps PRIMARY KEY clustered (id)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.SMSEnviadosRecibidos' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.SMSEnviadosRecibidos'. */
USE GESLICO
GO

CREATE TABLE dbo.SMSEnviadosRecibidos
	( id                      int             NOT NULL
	, cNumero                 varchar(20)     NOT NULL
	, cNombre                 varchar(100)    NOT NULL
	, cMensaje                text(16)        NOT NULL
	, cIdentificadorMensaje   varchar(20)     NOT NULL
	, cCodPasarela            varchar(20)         NULL
	, cCodRespuesta           varchar(20)         NULL
	, dFechaRespuestaPasarela datetime            NULL
	, cEstadoEnvio            varchar(50)         NULL
	, dFechaNotificacion      datetime            NULL
	, cEstadoNotificacion     varchar(50)         NULL
	, idUsuario               int             NOT NULL
	, dFchControl             datetime        NOT NULL
	)
GO

ALTER TABLE dbo.SMSEnviadosRecibidos ADD CONSTRAINT PK_SMSEnviadosRecibidos PRIMARY KEY clustered (id)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.SMSListaAgenda' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.SMSListaAgenda'. */
USE GESLICO
GO

CREATE TABLE dbo.SMSListaAgenda
	( idLista     int             NOT NULL
	, idAgenda    int             NOT NULL
	, dFchControl datetime        NOT NULL
	)
GO

ALTER TABLE dbo.SMSListaAgenda ADD CONSTRAINT PK_SMSListaAgenda PRIMARY KEY clustered (idLista, idAgenda)
GO

	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.SMSListaContactos'. */
USE GESLICO
GO

CREATE TABLE dbo.SMSListaContactos
	( id           int             NOT NULL
	, cNombreLista varchar(100)    NOT NULL
	, idUsuario    int             NOT NULL
	, dFchControl  datetime        NOT NULL
	)
GO

ALTER TABLE dbo.SMSListaContactos ADD CONSTRAINT PK_SMSListaContactos PRIMARY KEY clustered (id)
GO

	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.SMSUsuarios'. */
USE GESLICO
GO

CREATE TABLE dbo.SMSUsuarios
	( id        int             NOT NULL
	, cNombre   varchar(20)     NOT NULL
	, idMentes  int             NOT NULL
	, cPassword varbinary(8000) NOT NULL
	, bActivo   bit             NOT NULL
	)
GO

ALTER TABLE dbo.SMSUsuarios ADD CONSTRAINT PK_SMSUsuarios PRIMARY KEY clustered (id)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.svrAmper_vistaenduserdevicelines' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.svrAmper_vistaenduserdevicelines'. */
USE GESLICO
GO

CREATE TABLE dbo.svrAmper_vistaenduserdevicelines
	( extension varchar(45)     NOT NULL
	, particion varchar(45)     NOT NULL
	, device    varchar(45)     NOT NULL
	, enduser   varchar(45)         NULL
	)
GO

ALTER TABLE dbo.svrAmper_vistaenduserdevicelines ADD CONSTRAINT PK_aux_vistaenduserdevicelines PRIMARY KEY clustered (extension, particion, device)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.sysdiagrams' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.sysdiagrams'. */
USE GESLICO
GO

CREATE TABLE dbo.sysdiagrams
	( name         sysname         NOT NULL
	, principal_id int             NOT NULL
	, diagram_id   int             NOT NULL
	, version      int                 NULL
	, definition   varbinary(-1)       NULL
	)
GO

ALTER TABLE dbo.sysdiagrams ADD CONSTRAINT PK__sysdiagrams__0F624AF8 PRIMARY KEY clustered (diagram_id)
GO

CREATE unique nonclustered INDEX UK_principal_name on dbo.sysdiagrams(principal_id, name)
GO

	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TAcronimosSedeEDR'. */
USE GESLICO
GO

CREATE TABLE dbo.TAcronimosSedeEDR
	( nId          int             NOT NULL
	, cCodigo      varchar(9)      NOT NULL
	, cDescripcion varchar(150)        NULL
	)
GO

CREATE unique nonclustered INDEX IX_TAcronimosSedeEDR on dbo.TAcronimosSedeEDR(cCodigo)
GO

ALTER TABLE dbo.TAcronimosSedeEDR ADD CONSTRAINT PK_TAcronimosSedeEDR PRIMARY KEY clustered (nId)
GO

	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TAfariaAplicaciones_old'. */
USE GESLICO
GO

CREATE TABLE dbo.TAfariaAplicaciones_old
	( nId                  int             NOT NULL
	, cSwName              varchar(255)    NOT NULL
	, cSwVersion           varchar(50)     NOT NULL
	, bActiva              int             NOT NULL
	, dFchInicio           datetime        NOT NULL
	, dFchFin              datetime            NULL
	, cUsuarioAlta         varchar(20)     NOT NULL
	, dFchAlta             datetime        NOT NULL
	, cUsuarioModificacion varchar(20)         NULL
	, dFchModificacion     datetime            NULL
	)
GO

CREATE unique nonclustered INDEX IX_TAfariaAplicaciones on dbo.TAfariaAplicaciones_old(cSwName, cSwVersion)
GO

ALTER TABLE dbo.TAfariaAplicaciones_old ADD CONSTRAINT PK_TAfariaAplicaciones PRIMARY KEY clustered (nId)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.TAfariaAplicacionesInstaladas' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TAfariaAplicacionesInstaladas'. */
USE GESLICO
GO

CREATE TABLE dbo.TAfariaAplicacionesInstaladas
	( nIdEntorno           int             NOT NULL
	, nIdGrupo             int             NOT NULL
	, cSoftwareName        varchar(255)        NULL
	, cSoftwareVersion     varchar(80)         NULL
	, bActiva              int             NOT NULL
	, dFchInicio           datetime        NOT NULL
	, dFchFin              datetime            NULL
	, cCanal               varchar(50)         NULL
	, cVersionCode         varchar(50)         NULL
	, cUsuarioAlta         varchar(20)     NOT NULL
	, dFchAlta             datetime        NOT NULL
	, cUsuarioModificacion varchar(20)         NULL
	, dFchModificacion     datetime            NULL
	)
GO

ALTER TABLE dbo.TAfariaAplicacionesInstaladas ADD CONSTRAINT PK_TAfariaAplicacionesInstaladas PRIMARY KEY clustered (nIdEntorno, nIdGrupo, dFchInicio)
GO

	/* El objeto 'dbo.TAfariaAplicacionesInstaladasBackup' no tiene ningún índice o el usuario no tiene permisos. */
	/* No hay ninguna restricción definida en el objeto 'dbo.TAfariaAplicacionesInstaladasBackup' o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.TAfariaAplicacionesInstaladasBackup' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TAfariaAplicacionesInstaladasBackup'. */
USE GESLICO
GO

CREATE TABLE dbo.TAfariaAplicacionesInstaladasBackup
	( nIdEntorno           int             NOT NULL
	, nIdGrupo             int             NOT NULL
	, cSoftwareName        varchar(255)    NOT NULL
	, cSoftwareVersion     varchar(80)         NULL
	, bActiva              int             NOT NULL
	, dFchInicio           datetime            NULL
	, dFchFin              datetime            NULL
	, cCanal               varchar(50)         NULL
	, cVersionCode         varchar(50)         NULL
	, cUsuarioAlta         varchar(20)     NOT NULL
	, dFchAlta             datetime        NOT NULL
	, cUsuarioModificacion varchar(20)         NULL
	, dFchModificacion     datetime            NULL
	)
GO

	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TAfariaAppBlackList'. */
USE GESLICO
GO

CREATE TABLE dbo.TAfariaAppBlackList
	( nIdEntorno   int             NOT NULL
	, nIdGrupo     int             NOT NULL
	, cPackageName varchar(255)    NOT NULL
	)
GO

ALTER TABLE dbo.TAfariaAppBlackList ADD CONSTRAINT PK_TAfariaAppBlackList PRIMARY KEY clustered (nIdEntorno, nIdGrupo, cPackageName)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.TAfariaAppWhiteList' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TAfariaAppWhiteList'. */
USE GESLICO
GO

CREATE TABLE dbo.TAfariaAppWhiteList
	( nIdEntorno   int             NOT NULL
	, nIdGrupo     int             NOT NULL
	, cPackageName varchar(255)    NOT NULL
	)
GO

ALTER TABLE dbo.TAfariaAppWhiteList ADD CONSTRAINT PK_TAfariaAppWhiteList PRIMARY KEY clustered (nIdEntorno, nIdGrupo, cPackageName)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.TAfariaBluetooth' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TAfariaBluetooth'. */
USE GESLICO
GO

CREATE TABLE dbo.TAfariaBluetooth
	( nIdEntorno                  int             NOT NULL
	, nIdGrupo                    int             NOT NULL
	, cSupported                  varchar(16)         NULL
	, cStatus                     varchar(16)         NULL
	, cDiscoverable               varchar(8)          NULL
	, cConnectable                varchar(8)          NULL
	, cOutgoingCallsAllowed       varchar(8)          NULL
	, cDesktopConnectivityEnabled varchar(8)          NULL
	, cDiscoverableEnabled        varchar(8)          NULL
	, cPairingEnabled             varchar(8)          NULL
	, cLimitedDiscoverableEnabled varchar(8)          NULL
	)
GO

CREATE unique nonclustered INDEX IX_TAfariaBluetooth on dbo.TAfariaBluetooth(nIdEntorno, nIdGrupo)
GO

ALTER TABLE dbo.TAfariaBluetooth ADD CONSTRAINT PK_TAfariaBluetooth PRIMARY KEY clustered (nIdEntorno, nIdGrupo)
GO

	/* El objeto 'dbo.TAfariaCanales' no tiene ningún índice o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.TAfariaCanales' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TAfariaCanales'. */
USE GESLICO
GO

CREATE TABLE dbo.TAfariaCanales
	( cAplicacion varchar(150)        NULL
	, cCanal      varchar(50)         NULL
	, dFchControl datetime        NOT NULL
	)
GO

	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TAfariaEntornos'. */
USE GESLICO
GO

CREATE TABLE dbo.TAfariaEntornos
	( nId          int             NOT NULL
	, cEntorno     varchar(20)     NOT NULL
	, cDescripcion varchar(40)         NULL
	)
GO

CREATE unique nonclustered INDEX IX_TAfariaEntornos on dbo.TAfariaEntornos(cEntorno)
GO

ALTER TABLE dbo.TAfariaEntornos ADD CONSTRAINT PK_TAfariaEntornos PRIMARY KEY clustered (nId)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.TAfariaGrupoAplicacion' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TAfariaGrupoAplicacion'. */
USE GESLICO
GO

CREATE TABLE dbo.TAfariaGrupoAplicacion
	( nIdGrupo      int             NOT NULL
	, nIdAplicacion int             NOT NULL
	, cUsuarioAlta  varchar(20)     NOT NULL
	, dFchAlta      datetime        NOT NULL
	)
GO

ALTER TABLE dbo.TAfariaGrupoAplicacion ADD CONSTRAINT PK_TAfariaGrupoAplicacion PRIMARY KEY clustered (nIdGrupo, nIdAplicacion)
GO

	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TAfariaGrupos'. */
USE GESLICO
GO

CREATE TABLE dbo.TAfariaGrupos
	( nId          int             NOT NULL
	, nIdEntorno   int             NOT NULL
	, cGrupo       varchar(30)     NOT NULL
	, cDescripcion varchar(75)         NULL
	, cPatron      varchar(10)         NULL
	, cCanal       varchar(50)         NULL
	)
GO

CREATE unique nonclustered INDEX IX_TAfariaGrupos on dbo.TAfariaGrupos(cGrupo)
GO

ALTER TABLE dbo.TAfariaGrupos ADD CONSTRAINT PK_TAfariaGrupos_1 PRIMARY KEY clustered (nId)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.TAfariaLocalizacion' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TAfariaLocalizacion'. */
USE GESLICO
GO

CREATE TABLE dbo.TAfariaLocalizacion
	( nIdEntorno               int             NOT NULL
	, nIdGrupo                 int             NOT NULL
	, cLocationProviderStates  varchar(64)         NULL
	, cTiene_Localización_gps varchar(2)          NULL
	)
GO

ALTER TABLE dbo.TAfariaLocalizacion ADD CONSTRAINT PK_TAfariaLocalizacion PRIMARY KEY clustered (nIdEntorno, nIdGrupo)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.TAfariaRestricciones' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TAfariaRestricciones'. */
USE GESLICO
GO

CREATE TABLE dbo.TAfariaRestricciones
	( nIdEntorno                     int             NOT NULL
	, nIdGrupo                       int             NOT NULL
	, cIsUsbDebuggingEnabled         varchar(8)          NULL
	, cIsUsbTetheringEnabled         varchar(8)          NULL
	, cIsWifiTetheringEnabled        varchar(8)          NULL
	, cIsMultipleUsersAllowed        varchar(8)          NULL
	, cIsUnknownSourceInstallEnabled varchar(8)          NULL
	, cIsRemoveDeviceAdminEnabled    varchar(8)          NULL
	)
GO

ALTER TABLE dbo.TAfariaRestricciones ADD CONSTRAINT PK_TAfariaRestricciones PRIMARY KEY clustered (nIdEntorno, nIdGrupo)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.TAfariaRoaming' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TAfariaRoaming'. */
USE GESLICO
GO

CREATE TABLE dbo.TAfariaRoaming
	( nIdEntorno          int             NOT NULL
	, nIdGrupo            int             NOT NULL
	, cRoamingSyncEnabled varchar(8)          NULL
	, cRoamingPushEnabled varchar(8)          NULL
	, cAllowDataRoaming   varchar(8)          NULL
	)
GO

ALTER TABLE dbo.TAfariaRoaming ADD CONSTRAINT PK_TAfariaRoaming PRIMARY KEY clustered (nIdEntorno, nIdGrupo)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.TAfariaSecurityPwd' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TAfariaSecurityPwd'. */
USE GESLICO
GO

CREATE TABLE dbo.TAfariaSecurityPwd
	( nIdEntorno             int             NOT NULL
	, nIdGrupo               int             NOT NULL
	, cPwdQuality            varchar(15)         NULL
	, nPwdMaxLength          int                 NULL
	, nPwdMinLength          int                 NULL
	, nPwdMaxFailedForWipe   int                 NULL
	, nPwdExpirationTimeout  int                 NULL
	, cPwdActiveIsSufficient varchar(8)          NULL
	, nPwdHistoryLength      int                 NULL
	)
GO

ALTER TABLE dbo.TAfariaSecurityPwd ADD CONSTRAINT PK_TAfariaSecurityPwd PRIMARY KEY clustered (nIdEntorno, nIdGrupo)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.TAfariaWifi' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TAfariaWifi'. */
USE GESLICO
GO

CREATE TABLE dbo.TAfariaWifi
	( nIdEntorno                   int             NOT NULL
	, nIdGrupo                     int             NOT NULL
	, cAllowUserProfiles           varchar(8)          NULL
	, cAllowUserPolicyChanges      varchar(8)          NULL
	, cPasswordHidden              varchar(8)          NULL
	, cPromptCredentialsEnabled    varchar(8)          NULL
	, cTlsCertificateSecurityLevel varchar(8)          NULL
	, cMinimumRequiredSecurity     varchar(30)         NULL
	)
GO

ALTER TABLE dbo.TAfariaWifi ADD CONSTRAINT PK_TAfariaWifi PRIMARY KEY clustered (nIdEntorno, nIdGrupo)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.TAfariaWifiInfo' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TAfariaWifiInfo'. */
USE GESLICO
GO

CREATE TABLE dbo.TAfariaWifiInfo
	( nIdEntorno           int             NOT NULL
	, nIdGrupo             int             NOT NULL
	, cSSID                varchar(255)        NULL
	, cNetworkLinkSecurity varchar(255)        NULL
	, cDHCPEnabled         varchar(8)          NULL
	, cIsNetworkBlocked    varchar(8)          NULL
	)
GO

ALTER TABLE dbo.TAfariaWifiInfo ADD CONSTRAINT PK_TAfariaWifiInfo PRIMARY KEY clustered (nIdEntorno, nIdGrupo)
GO

	/* El objeto 'dbo.TAlbaranesDigitalizacion' no tiene ningún índice o el usuario no tiene permisos. */
	/* No hay ninguna restricción definida en el objeto 'dbo.TAlbaranesDigitalizacion' o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.TAlbaranesDigitalizacion' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TAlbaranesDigitalizacion'. */
USE GESLICO
GO

CREATE TABLE dbo.TAlbaranesDigitalizacion
	( nNumAlbaran   int                 NULL
	, nIdTerminal   int                 NULL
	, dFchOperacion datetime        NOT NULL
	, nLinea        int                 NULL
	, cDNI          varchar(9)          NULL
	, nCodUni       int                 NULL
	, nCodActuacion int                 NULL
	, cImei         varchar(255)        NULL
	, cSerie        varchar(255)        NULL
	, cAccesorios   varchar(255)        NULL
	)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.TAlbaranesDigitalizados' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TAlbaranesDigitalizados'. */
USE GESLICO
GO

CREATE TABLE dbo.TAlbaranesDigitalizados
	( nNumAlbaran int             NOT NULL
	, cRuta       varchar(-1)     NOT NULL
	, dFchControl datetime        NOT NULL
	)
GO

ALTER TABLE dbo.TAlbaranesDigitalizados ADD CONSTRAINT PK_TAlbaranesDigitalizados PRIMARY KEY clustered (nNumAlbaran)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.TAlbaranMoviles' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TAlbaranMoviles'. */
USE GESLICO
GO

CREATE TABLE dbo.TAlbaranMoviles
	( cNumAlbaran        int             NOT NULL
	, nCodActuacion      int                 NULL
	, dFechaAlbaran      datetime        NOT NULL
	, cElemenEntregados  varchar(-1)         NULL
	, cTerminal          varchar(255)        NULL
	, cSerie             varchar(255)        NULL
	, cTarjeta           varchar(255)        NULL
	, cAccesorios        varchar(255)        NULL
	, cRutaDocumentacion varchar(-1)         NULL
	, nIdMovimiento      bigint              NULL
	, dFchAlta           datetime        NOT NULL
	, cUsuarioAlta       varchar(25)     NOT NULL
	)
GO

CREATE  nonclustered INDEX IX_CodActuacion on dbo.TAlbaranMoviles(nCodActuacion)
GO

ALTER TABLE dbo.TAlbaranMoviles ADD CONSTRAINT PK_TAlbaranMoviles PRIMARY KEY clustered (cNumAlbaran)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.TAlmacenMoviles' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TAlmacenMoviles'. */
USE GESLICO
GO

CREATE TABLE dbo.TAlmacenMoviles
	( nEMEI                varchar(15)     NOT NULL
	, dFechaEntrada        datetime            NULL
	, dFechaSalida         datetime            NULL
	, idModelo             int             NOT NULL
	, idUbicacion          int             NOT NULL
	, cUsuarioModificacion varchar(25)         NULL
	, dFchModificacion     datetime            NULL
	, cCContrato           varchar(50)         NULL
	, cObservaciones       varchar(50)         NULL
	)
GO

ALTER TABLE dbo.TAlmacenMoviles ADD CONSTRAINT PK_Talmacenmoviles PRIMARY KEY clustered (nEMEI)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.TAlmacenTerminalesMovil_sinUso' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TAlmacenTerminalesMovil_sinUso'. */
USE GESLICO
GO

CREATE TABLE dbo.TAlmacenTerminalesMovil_sinUso
	( nId     int             NOT NULL
	, cNombre varchar(50)     NOT NULL
	)
GO

ALTER TABLE dbo.TAlmacenTerminalesMovil_sinUso ADD CONSTRAINT PK_TAlmacenTerminalesMovil PRIMARY KEY clustered (nId)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.TAnchoBanda' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TAnchoBanda'. */
USE GESLICO
GO

CREATE TABLE dbo.TAnchoBanda
	( codAnchoBanda  int             NOT NULL
	, nAnchoBanda    bigint          NOT NULL
	, descAnchoBanda nchar(20)           NULL
	)
GO

ALTER TABLE dbo.TAnchoBanda ADD CONSTRAINT PK_TAnchoBanda PRIMARY KEY clustered (codAnchoBanda)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.TAnillosONO' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TAnillosONO'. */
USE GESLICO
GO

CREATE TABLE dbo.TAnillosONO
	( nCodLinDatos int             NOT NULL
	, nNumAnillo   smallint        NOT NULL
	)
GO

ALTER TABLE dbo.TAnillosONO ADD CONSTRAINT PK_TAnillosONO PRIMARY KEY clustered (nCodLinDatos, nNumAnillo)
GO

	/* El objeto 'dbo.TBajasDePersonas' no tiene ningún índice o el usuario no tiene permisos. */
	/* No hay ninguna restricción definida en el objeto 'dbo.TBajasDePersonas' o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.TBajasDePersonas' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TBajasDePersonas'. */
USE GESLICO
GO

CREATE TABLE dbo.TBajasDePersonas
	( cDNI          varchar(9)      NOT NULL
	, nLinea        int             NOT NULL
	, cApe1         varchar(40)     NOT NULL
	, cApe2         varchar(40)         NULL
	, cNombre       varchar(40)     NOT NULL
	, nCodUni       int             NOT NULL
	, cDenominacion varchar(60)     NOT NULL
	, cEmpNomPuesto varchar(40)     NOT NULL
	, dFecha        smalldatetime   NOT NULL
	)
GO

	/* El objeto 'dbo.TBajasDePuestos' no tiene ningún índice o el usuario no tiene permisos. */
	/* No hay ninguna restricción definida en el objeto 'dbo.TBajasDePuestos' o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.TBajasDePuestos' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TBajasDePuestos'. */
USE GESLICO
GO

CREATE TABLE dbo.TBajasDePuestos
	( ncodpto int                 NULL
	, nlinea  int             NOT NULL
	, Dfecha  smalldatetime       NULL
	)
GO

	/* El objeto 'dbo.TBajasDeUnidades' no tiene ningún índice o el usuario no tiene permisos. */
	/* No hay ninguna restricción definida en el objeto 'dbo.TBajasDeUnidades' o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.TBajasDeUnidades' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TBajasDeUnidades'. */
USE GESLICO
GO

CREATE TABLE dbo.TBajasDeUnidades
	( nCoduni        int                 NULL
	, nlinea         int             NOT NULL
	, cDenominacion  varchar(60)         NULL
	, cDescAdicional varchar(80)         NULL
	, Dfecha         smalldatetime       NULL
	)
GO

	/* El objeto 'dbo.TBL_SHOWCONTIG' no tiene ningún índice o el usuario no tiene permisos. */
	/* No hay ninguna restricción definida en el objeto 'dbo.TBL_SHOWCONTIG' o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.TBL_SHOWCONTIG' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TBL_SHOWCONTIG'. */
USE GESLICO
GO

CREATE TABLE dbo.TBL_SHOWCONTIG
	( ObjectName     char(255)           NULL
	, ObjectId       int                 NULL
	, IndexName      char(255)           NULL
	, IndexId        int                 NULL
	, Lvl            int                 NULL
	, CountPages     int                 NULL
	, CountRows      int                 NULL
	, MinRecSize     int                 NULL
	, MaxRecSize     int                 NULL
	, AvgRecSize     int                 NULL
	, ForRecCount    int                 NULL
	, Extents        int                 NULL
	, ExtentSwitches int                 NULL
	, AvgFreeBytes   int                 NULL
	, AvgPageDensity int                 NULL
	, ScanDensity    decimal(18,0)       NULL
	, BestCount      int                 NULL
	, ActualCount    int                 NULL
	, LogicalFrag    decimal(18,0)       NULL
	, ExtentFrag     decimal(18,0)       NULL
	)
GO

	/* El objeto 'dbo.TCapability_CallManager' no tiene ningún índice o el usuario no tiene permisos. */
	/* No hay ninguna restricción definida en el objeto 'dbo.TCapability_CallManager' o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.TCapability_CallManager' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TCapability_CallManager'. */
USE GESLICO
GO

CREATE TABLE dbo.TCapability_CallManager
	( nCodigo float               NULL
	, dFecha  datetime            NULL
	)
GO

	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TCatalogoFacturacion'. */
USE GESLICO
GO

CREATE TABLE dbo.TCatalogoFacturacion
	( nId                int             NOT NULL
	, cCodigo            varchar(20)     NOT NULL
	, cAnexo             varchar(5)      NOT NULL
	, nCodTipoLote       int             NOT NULL
	, cDescripcion       varchar(255)    NOT NULL
	, cDetalles          varchar(-1)     NOT NULL
	, cUnidad            varchar(255)    NOT NULL
	, nPrecio            money           NOT NULL
	, nIdFacturacionAlta int                 NULL
	, cAnexoInventario   varchar(5)          NULL
	, cUsuarioAlta       varchar(10)     NOT NULL
	, dFchAlta           datetime        NOT NULL
	, cTipo              varchar(12)         NULL
	, nFijo              int                 NULL
	)
GO

CREATE unique nonclustered INDEX IX_TCatalogoFacturacion on dbo.TCatalogoFacturacion(cCodigo)
GO

ALTER TABLE dbo.TCatalogoFacturacion ADD CONSTRAINT PK_TCatalogoFacturacion PRIMARY KEY clustered (nId)
GO

	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TCatalogoRed'. */
USE GESLICO
GO

CREATE TABLE dbo.TCatalogoRed
	( nCodTipoComponente   int             NOT NULL
	, cFabricante          varchar(50)     NOT NULL
	, cModelo              varchar(100)    NOT NULL
	, cDescripcion         varchar(250)        NULL
	, nCodSuperTipo        smallint        NOT NULL
	, cTipo                varchar(50)         NULL
	, nBocasRed            smallint            NULL
	, bGestionable         bit             NOT NULL
	, cObservaciones       varchar(250)        NULL
	, cUsuarioAlta         varchar(10)         NULL
	, dFchAlta             smalldatetime       NULL
	, cUsuarioModificacion varchar(10)         NULL
	, dFchModificacion     smalldatetime       NULL
	)
GO

CREATE unique nonclustered INDEX IX_FabricanteModelo on dbo.TCatalogoRed(cFabricante, cModelo)
GO

ALTER TABLE dbo.TCatalogoRed ADD CONSTRAINT PK_TCatalogoEdR PRIMARY KEY clustered (nCodTipoComponente)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.TCatalogoSLAs' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TCatalogoSLAs'. */
USE GESLICO
GO

CREATE TABLE dbo.TCatalogoSLAs
	( id                  int             NOT NULL
	, cCodigo             nvarchar(510)   NOT NULL
	, cOperacional        nvarchar(510)       NULL
	, cAplicacion         nvarchar(510)       NULL
	, cDescripcion        nvarchar(510)       NULL
	, cIncidenciaPeticion nvarchar(510)       NULL
	, cCriticitad         nvarchar(510)       NULL
	, nTiempo             int                 NULL
	, cHorasDias          nvarchar(510)       NULL
	, cGrupo              nvarchar(510)       NULL
	, cTipoMedida         nvarchar(510)       NULL
	, nHoras              int                 NULL
	, nEuros              money               NULL
	, nHorasPenalizacion  int                 NULL
	, cCP1                nvarchar(510)       NULL
	, cCP2                nvarchar(510)       NULL
	, cValoracion         nvarchar(-1)        NULL
	, dFchControl         datetime            NULL
	)
GO

CREATE unique nonclustered INDEX IX_TCatalogoSLAs on dbo.TCatalogoSLAs(cCodigo)
GO

ALTER TABLE dbo.TCatalogoSLAs ADD CONSTRAINT PK_TCatalogoSLAs PRIMARY KEY clustered (id)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.TCategoriaRestringida' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TCategoriaRestringida'. */
USE GESLICO
GO

CREATE TABLE dbo.TCategoriaRestringida
	( nLinea                         int             NOT NULL
	, nNumCorto                      int                 NULL
	, nCodSede                       int                 NULL
	, cTipoExtension                 char(2)             NULL
	, nCodCobertura                  int                 NULL
	, nRai                           int                 NULL
	, dFechaAviso                    smalldatetime   NOT NULL
	, dFechaEnvioCGP                 smalldatetime       NULL
	, dFchBajaDir                    smalldatetime       NULL
	, dFechaQuitarLocucionSinAsigDir smalldatetime       NULL
	, Cobertura                      varchar(40)         NULL
	, TipoCategoriaRestr             int                 NULL
	)
GO

CREATE  nonclustered INDEX _dta_index_TCategoriaRestringida_17_1299587768__K8_K1_K2_K6_K7_4_5_11 on dbo.TCategoriaRestringida(dFechaEnvioCGP, nLinea, nNumCorto, nRai, dFechaAviso)
GO

ALTER TABLE dbo.TCategoriaRestringida ADD CONSTRAINT PK_TCategoriaRestringida_1 PRIMARY KEY clustered (nLinea, dFechaAviso)
GO

	/* El objeto 'dbo.TCategoriaRestringida_aux' no tiene ningún índice o el usuario no tiene permisos. */
	/* No hay ninguna restricción definida en el objeto 'dbo.TCategoriaRestringida_aux' o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.TCategoriaRestringida_aux' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TCategoriaRestringida_aux'. */
USE GESLICO
GO

CREATE TABLE dbo.TCategoriaRestringida_aux
	( nLinea                         int             NOT NULL
	, nNumCorto                      int                 NULL
	, nCodSede                       int                 NULL
	, cTipoExtension                 char(2)             NULL
	, nCodCobertura                  int                 NULL
	, nRai                           int                 NULL
	, dFechaAviso                    smalldatetime   NOT NULL
	, dFechaEnvioCGP                 smalldatetime       NULL
	, dFchBajaDir                    smalldatetime       NULL
	, dFechaQuitarLocucionSinAsigDir smalldatetime       NULL
	, Cobertura                      varchar(40)         NULL
	, TipoCategoriaRestr             int                 NULL
	)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.TCategoriaTerminales' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TCategoriaTerminales'. */
USE GESLICO
GO

CREATE TABLE dbo.TCategoriaTerminales
	( nId          int             NOT NULL
	, cCategoria   varchar(50)     NOT NULL
	, cDescripcion varchar(255)    NOT NULL
	)
GO

ALTER TABLE dbo.TCategoriaTerminales ADD CONSTRAINT PK_TCategoriaTerminales PRIMARY KEY clustered (nId)
GO

	/* El objeto 'dbo.TCCoste' no tiene ningún índice o el usuario no tiene permisos. */
	/* No hay ninguna restricción definida en el objeto 'dbo.TCCoste' o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.TCCoste' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TCCoste'. */
USE GESLICO
GO

CREATE TABLE dbo.TCCoste
	( dependencia  varchar(12)         NULL
	, denominacion varchar(60)         NULL
	, CC           varchar(15)         NULL
	, descripcion  varchar(40)         NULL
	, ncoduni      int                 NULL
	)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.TCDR' o el usuario no tiene permisos para hacer referencia a tablas. */
USE GESLICO
GO

CREATE TABLE dbo.TCDR
	( pkId          varchar(60)     NOT NULL
	, IdCallManager int             NOT NULL
	, IdCall        int             NOT NULL
	, DateTimeOri   int             NOT NULL
	, Duracion      varchar(60)     NOT NULL
	, OriNodo       int             NOT NULL
	, DesNodo       int             NOT NULL
	, dDateTimeOri  datetime            NULL
	, dFchControl   datetime        NOT NULL
	)
GO

CREATE  nonclustered INDEX IX_TCDR on dbo.TCDR(pkId, IdCall, IdCallManager)
GO

ALTER TABLE dbo.TCDR ADD CONSTRAINT PK_TCDR PRIMARY KEY clustered (pkId, IdCallManager, IdCall, DateTimeOri, Duracion, OriNodo, DesNodo)
GO

	/* El objeto 'dbo.TCDR_bck160114' no tiene ningún índice o el usuario no tiene permisos. */
	/* No hay ninguna restricción definida en el objeto 'dbo.TCDR_bck160114' o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.TCDR_bck160114' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TCDR_bck160114'. */
USE GESLICO
GO

CREATE TABLE dbo.TCDR_bck160114
	( PKid          varchar(60)     NOT NULL
	, IdCallManager int             NOT NULL
	, IdCall        int             NOT NULL
	, DateTimeOri   int             NOT NULL
	, Duracion      varchar(60)         NULL
	, OriNodo       int                 NULL
	, DesNodo       int                 NULL
	)
GO

	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TCentralitas'. */
USE GESLICO
GO

CREATE TABLE dbo.TCentralitas
	( nCodCentralita       int             NOT NULL
	, nCodSede             int             NOT NULL
	, dFechaInstalacion    datetime            NULL
	, dFechaBaja           datetime            NULL
	, nCodEstado           smallint        NOT NULL
	, cModelo              varchar(60)         NULL
	, nEnlacesT0           int                 NULL
	, nNumCabecera         int                 NULL
	, nTeletarificacion    int                 NULL
	, nTelegestion         int                 NULL
	, nCodTipoCentralita   int                 NULL
	, nRAI                 int                 NULL
	, nEsclavos            int                 NULL
	, cObservaciones       nvarchar(-1)        NULL
	, nTrunkingIp          int                 NULL
	, cIP                  varchar(15)         NULL
	, nCOMSAT              int                 NULL
	, nCOMSAT2             int                 NULL
	, nCanales             int                 NULL
	, bTarifica            bit             NOT NULL
	, cIPCamara            varchar(15)         NULL
	, cUsuarioAlta         varchar(25)         NULL
	, dFchAlta             datetime            NULL
	, cUsuarioModificacion varchar(25)         NULL
	, dFchModificacion     datetime            NULL
	)
GO

CREATE  nonclustered INDEX _dta_index_TCentralitas_17_142675606__K1_K2 on dbo.TCentralitas(nCodCentralita, nCodSede)
GO

CREATE  nonclustered INDEX IX_TCentralitas_CodSede on dbo.TCentralitas(nCodSede)
GO

CREATE  nonclustered INDEX IX_TCentralitas_nCodTipoCentralita on dbo.TCentralitas(nCodTipoCentralita)
GO

ALTER TABLE dbo.TCentralitas ADD CONSTRAINT PK_TCentralitas PRIMARY KEY clustered (nCodCentralita)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.TChecklico' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TChecklico'. */
USE GESLICO
GO

CREATE TABLE dbo.TChecklico
	( nCodTarea         int             NOT NULL
	, bEnError          bit             NOT NULL
	, nTipoTarea        int             NOT NULL
	, cDescripcionTarea varchar(200)        NULL
	, cSolucionError    varchar(120)        NULL
	, nPrioridad        smallint            NULL
	, cSQL              varchar(-1)         NULL
	, bErrorSQL         bit             NOT NULL
	, bActiva           bit             NOT NULL
	, nElemenerror      int                 NULL
	, cUsuario          nvarchar(100)       NULL
	, nIdUsuario        int                 NULL
	, nIdSupervisor     int                 NULL
	, bExcel            bit             NOT NULL
	, cTabla            varchar(-1)         NULL
	, dFchActualizacion datetime        NOT NULL
	)
GO

ALTER TABLE dbo.TChecklico ADD CONSTRAINT PK_TChecklico_auxiliar PRIMARY KEY clustered (nCodTarea)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.TCiscoVLanes' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TCiscoVLanes'. */
USE GESLICO
GO

CREATE TABLE dbo.TCiscoVLanes
	( nCodVLAN             int             NOT NULL
	, nVLANId              int                 NULL
	, cNombreVLAN          varchar(50)         NULL
	, cSubnet              varchar(50)         NULL
	, cSubnetMask          varchar(50)         NULL
	, dLastSeen            datetime            NULL
	, cUsuarioAlta         varchar(50)         NULL
	, dFchAlta             smalldatetime       NULL
	, cUsuarioModificacion nvarchar(100)       NULL
	, dFchModificacion     smalldatetime       NULL
	)
GO

ALTER TABLE dbo.TCiscoVLanes ADD CONSTRAINT PK_TCiscoVLanes PRIMARY KEY clustered (nCodVLAN)
GO

	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TClasesTarjetas'. */
USE GESLICO
GO

CREATE TABLE dbo.TClasesTarjetas
	( cCodClase varchar(4)      NOT NULL
	, cClase    varchar(20)     NOT NULL
	)
GO

ALTER TABLE dbo.TClasesTarjetas ADD CONSTRAINT PK_TClasesTarjetas PRIMARY KEY clustered (cCodClase)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.TCMDB_TLinMoviles' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TCMDB_TLinMoviles'. */
USE GESLICO
GO

CREATE TABLE dbo.TCMDB_TLinMoviles
	( nLinea            nvarchar(18)    NOT NULL
	, nNumCorto         nvarchar(18)        NULL
	, cDNI              nvarchar(18)        NULL
	, nCodUni           nvarchar(18)        NULL
	, Modelo            varchar(150)        NULL
	, nCodSede          nvarchar(12)        NULL
	, bHorarioExtendido bit                 NULL
	, bPrincipal        bit                 NULL
	)
GO

ALTER TABLE dbo.TCMDB_TLinMoviles ADD CONSTRAINT PK_TCMDB_TLinMoviles PRIMARY KEY clustered (nLinea)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.TCMR' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TCMR'. */
USE GESLICO
GO

CREATE TABLE dbo.TCMR
	( pkId             varchar(40)     NOT NULL
	, IdCallManager    int             NOT NULL
	, IdCall           int             NOT NULL
	, OriNodo          int             NOT NULL
	, DesNodo          int             NOT NULL
	, OriPaqSend       int                 NULL
	, OriPaqLost       int                 NULL
	, DesPaqSend       int                 NULL
	, DesPaqLost       int                 NULL
	, OriJitter        int                 NULL
	, DesJitter        int                 NULL
	, OriLaten         int                 NULL
	, DesLaten         int                 NULL
	, OriNomDisp       varchar(60)         NULL
	, DisNomDisp       varchar(60)         NULL
	, OriNumero        varchar(60)         NULL
	, DesNumero        varchar(60)         NULL
	, OriLlamada       varchar(60)         NULL
	, DesLlamada       varchar(60)         NULL
	, origvarVQMetrics varchar(130)        NULL
	, destvarVQMetrics varchar(130)        NULL
	, dFecha           datetime            NULL
	)
GO

CREATE  nonclustered INDEX IDX_TCMR on dbo.TCMR(pkId, dFecha)
GO

ALTER TABLE dbo.TCMR ADD CONSTRAINT PK_TCMR PRIMARY KEY clustered (pkId, IdCallManager, IdCall, OriNodo, DesNodo)
GO

	/* El objeto 'dbo.TCMR_bck160114' no tiene ningún índice o el usuario no tiene permisos. */
	/* No hay ninguna restricción definida en el objeto 'dbo.TCMR_bck160114' o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.TCMR_bck160114' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TCMR_bck160114'. */
USE GESLICO
GO

CREATE TABLE dbo.TCMR_bck160114
	( PkId             varchar(40)     NOT NULL
	, IdCallManager    int             NOT NULL
	, IdCall           int             NOT NULL
	, OriNodo          int             NOT NULL
	, DesNodo          int             NOT NULL
	, OriPaqSend       int                 NULL
	, OriPaqLost       int                 NULL
	, DesPaqSend       int                 NULL
	, DesPaqLost       int                 NULL
	, OriJitter        int                 NULL
	, DesJitter        int                 NULL
	, OriLaten         int                 NULL
	, DesLaten         int                 NULL
	, OriNomDisp       varchar(60)         NULL
	, DisNomDisp       varchar(60)         NULL
	, OriNumero        varchar(60)         NULL
	, DesNumero        varchar(60)         NULL
	, OriLlamada       varchar(60)         NULL
	, DesLlamada       varchar(60)         NULL
	, DFecha           varchar(20)         NULL
	, origvarVQMetrics varchar(130)        NULL
	, destvarVQMetrics varchar(130)        NULL
	)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.TCoberturasTeoricas' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TCoberturasTeoricas'. */
USE GESLICO
GO

CREATE TABLE dbo.TCoberturasTeoricas
	( Asignacion       varchar(1)      NOT NULL
	, VIP              bit             NOT NULL
	, Nivel            int                 NULL
	, nCodUso          smallint        NOT NULL
	, CategoriaTeorica varchar(50)         NULL
	, CodCategoriaCGP  int                 NULL
	)
GO

CREATE  nonclustered INDEX IX_TCoberturasTeoricas on dbo.TCoberturasTeoricas(Asignacion, VIP, nCodUso)
GO

CREATE  nonclustered INDEX IX_TCoberturasTeoricas_1 on dbo.TCoberturasTeoricas(nCodUso)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.TColectorTACACS' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TColectorTACACS'. */
USE GESLICO
GO

CREATE TABLE dbo.TColectorTACACS
	( cIP         varchar(15)     NOT NULL
	, nIntento    int             NOT NULL
	, cComando    varchar(100)    NOT NULL
	, cHoraInicio varchar(50)         NULL
	, cHoraFin    varchar(50)         NULL
	, cResultado  varchar(-1)         NULL
	, dFchControl datetime        NOT NULL
	)
GO

CREATE  nonclustered INDEX IX_TColectorTACACS_FchControl on dbo.TColectorTACACS(dFchControl)
GO

CREATE  nonclustered INDEX IX_TColectorTACACS_IP on dbo.TColectorTACACS(cIP)
GO

ALTER TABLE dbo.TColectorTACACS ADD CONSTRAINT PK_TColectorTACACS PRIMARY KEY clustered (cIP, nIntento, cComando, dFchControl)
GO

	/* El objeto 'dbo.TColectorTACACS_bck160212' no tiene ningún índice o el usuario no tiene permisos. */
	/* No hay ninguna restricción definida en el objeto 'dbo.TColectorTACACS_bck160212' o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.TColectorTACACS_bck160212' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TColectorTACACS_bck160212'. */
USE GESLICO
GO

CREATE TABLE dbo.TColectorTACACS_bck160212
	( cIP         varchar(15)     NOT NULL
	, nIntento    int             NOT NULL
	, cComando    varchar(100)    NOT NULL
	, cHoraInicio varchar(50)         NULL
	, cHoraFin    varchar(50)         NULL
	, cResultado  varchar(-1)         NULL
	, dFchControl datetime        NOT NULL
	)
GO

	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TComponentesRed'. */
USE GESLICO
GO

CREATE TABLE dbo.TComponentesRed
	( nCodElectronicaRed   int                 NULL
	, nCodComponente       int             NOT NULL
	, nCodTipoComponente   int             NOT NULL
	, cPrefijoMAC          nvarchar(100)       NULL
	, nTicket              nvarchar(100)       NULL
	, cSerie               nvarchar(100)       NULL
	, cBien                nvarchar(100)       NULL
	, cExpediente          nvarchar(100)       NULL
	, cBienPrincipal       nvarchar(100)       NULL
	, nCodUbicacion        int                 NULL
	, nCodSede             int                 NULL
	, dFchEntrada          datetime            NULL
	, dFchSalida           datetime            NULL
	, dFchFinGarantia      datetime            NULL
	, dFchFinMantenimiento datetime            NULL
	, dFchBaja             datetime            NULL
	, bUsado               bit             NOT NULL
	, nPrecioUnitario      money               NULL
	, cObservaciones       varchar(-1)         NULL
	, cUsuarioAlta         varchar(25)     NOT NULL
	, dFchAlta             datetime        NOT NULL
	, cUsuarioModificacion varchar(25)         NULL
	, dFchModificacion     datetime            NULL
	)
GO

ALTER TABLE dbo.TComponentesRed ADD CONSTRAINT PK_TComponentesRed PRIMARY KEY clustered (nCodComponente)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.TComponentesRedFacturacion' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TComponentesRedFacturacion'. */
USE GESLICO
GO

CREATE TABLE dbo.TComponentesRedFacturacion
	( nCodComponente int             NOT NULL
	, nIdFacturacion int             NOT NULL
	, dFchAlta       datetime        NOT NULL
	, dFchBaja       datetime            NULL
	, bSinCoste      bit             NOT NULL
	, dFchControl    datetime        NOT NULL
	, cUsuario       varchar(25)     NOT NULL
	)
GO

ALTER TABLE dbo.TComponentesRedFacturacion ADD CONSTRAINT PK_TComponentesRedFacturacion PRIMARY KEY clustered (nCodComponente, nIdFacturacion)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.TComponentesRedFacturacionVersiones' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TComponentesRedFacturacionVersiones'. */
USE GESLICO
GO

CREATE TABLE dbo.TComponentesRedFacturacionVersiones
	( dFchVersion    datetime        NOT NULL
	, nCodComponente int             NOT NULL
	, nIdFacturacion int             NOT NULL
	, dFchAlta       datetime        NOT NULL
	, dFchBaja       datetime            NULL
	, dFchControl    datetime        NOT NULL
	)
GO

ALTER TABLE dbo.TComponentesRedFacturacionVersiones ADD CONSTRAINT PK_TComponentesRedFacturacionVersiones PRIMARY KEY clustered (dFchVersion, nCodComponente, nIdFacturacion, dFchAlta)
GO

	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TConceptosFacturas'. */
USE GESLICO
GO

CREATE TABLE dbo.TConceptosFacturas
	( nCodConcepto  int             NOT NULL
	, cCodConcepto  varchar(10)     NOT NULL
	, cDenominacion varchar(30)     NOT NULL
	, cMedida       varchar(10)     NOT NULL
	, bItinerancia  bit             NOT NULL
	)
GO

CREATE  nonclustered INDEX IX_TConceptosFacturas on dbo.TConceptosFacturas(cDenominacion)
GO

ALTER TABLE dbo.TConceptosFacturas ADD CONSTRAINT PK_TConceptosFacturas PRIMARY KEY clustered (nCodConcepto)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.TConsumosFijosAYRE' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TConsumosFijosAYRE'. */
USE GESLICO
GO

CREATE TABLE dbo.TConsumosFijosAYRE
	( nLinea          int             NOT NULL
	, nNumCorto       int                 NULL
	, cNumero         varchar(20)         NULL
	, cNumCorto       varchar(20)         NULL
	, cCobertura      varchar(40)         NULL
	, cModelo         varchar(50)         NULL
	, nCodUni         int             NOT NULL
	, nCodUniPadre    int                 NULL
	, cUnidad         varchar(100)    NOT NULL
	, nCodPto         int                 NULL
	, cDNI            varchar(9)          NULL
	, cApellido1      varchar(40)         NULL
	, cApellido2      varchar(40)         NULL
	, cNombre         varchar(40)         NULL
	, nEmpNumPer      int                 NULL
	, cPuesto         varchar(40)         NULL
	, cGrupoTpo       varchar(12)         NULL
	, nNivelPto       varchar(2)          NULL
	, cDireccion      varchar(100)        NULL
	, dFecha          datetime        NOT NULL
	, nNumLlamadasEnt int                 NULL
	, nNumLlamadasMCo int             NOT NULL
	, nCosteMCo       money               NULL
	, nNumLlamadasMov int             NOT NULL
	, nCosteMov       money               NULL
	, nNumLlamadasFCo int             NOT NULL
	, nNumLlamadasF   int                 NULL
	, nCosteF         money               NULL
	, nLineaMovil     int                 NULL
	, nNumCortoMovil  int                 NULL
	, cModeloMovil    varchar(150)        NULL
	, cCoberturaMovil varchar(50)         NULL
	, dFchControl     datetime        NOT NULL
	)
GO

CREATE  nonclustered INDEX IX_TConsumosFijosAYRE on dbo.TConsumosFijosAYRE(nLinea, cApellido1, cApellido2, cDNI, cNombre, nCodUni, dFecha, nEmpNumPer, nCodUniPadre)
GO

	/* El objeto 'dbo.TConsumosMovilesAYRE' no tiene ningún índice o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.TConsumosMovilesAYRE' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TConsumosMovilesAYRE'. */
USE GESLICO
GO

CREATE TABLE dbo.TConsumosMovilesAYRE
	( dFecha         datetime        NOT NULL
	, nLinea         int             NOT NULL
	, nNumCorto      int                 NULL
	, cPerfil        varchar(50)         NULL
	, cCobertura     varchar(50)         NULL
	, cModelo        varchar(150)        NULL
	, nCodUni        int             NOT NULL
	, nCodUniPadre   int                 NULL
	, cUnidad        varchar(100)    NOT NULL
	, nCodPto        int                 NULL
	, cDNI           varchar(9)          NULL
	, cApellido1     varchar(40)         NULL
	, cApellido2     varchar(40)         NULL
	, cNombre        varchar(40)         NULL
	, nEmpNumPer     int                 NULL
	, cPuesto        varchar(40)         NULL
	, cGrupoTpo      varchar(2)          NULL
	, nNivelPto      int                 NULL
	, nImporteCuotas money               NULL
	, nNumLlamadas   int             NOT NULL
	, nSMS           int             NOT NULL
	, nMegabytes     money           NOT NULL
	, nImporteDatos  money           NOT NULL
	, nImporteVoz    money           NOT NULL
	, nLineaFijo     int                 NULL
	, nNumCortoFijo  int                 NULL
	, cModeloFijo    varchar(50)         NULL
	, cCoberturaFijo varchar(50)         NULL
	, dFchControl    datetime        NOT NULL
	)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.TContajes' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TContajes'. */
USE GESLICO
GO

CREATE TABLE dbo.TContajes
	( nCodContaje  int             NOT NULL
	, nContador    int             NOT NULL
	, cLiteral     varchar(15)     NOT NULL
	, cSQL         varchar(-1)     NOT NULL
	, cToolTipText varchar(249)        NULL
	)
GO

ALTER TABLE dbo.TContajes ADD CONSTRAINT PK_TContajes PRIMARY KEY clustered (nCodContaje)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.TCorreosUGD' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TCorreosUGD'. */
USE GESLICO
GO

CREATE TABLE dbo.TCorreosUGD
	( nIdArea   int             NOT NULL
	, nCodUni   int             NOT NULL
	, ceMailUGD nvarchar(150)       NULL
	, ceMailSGT nvarchar(150)       NULL
	)
GO

ALTER TABLE dbo.TCorreosUGD ADD CONSTRAINT PK_TCorreosUGD PRIMARY KEY clustered (nIdArea, nCodUni)
GO

	/* El objeto 'dbo.TDatosDetalleLineaFacturaVersiones' no tiene ningún índice o el usuario no tiene permisos. */
	/* No hay ninguna restricción definida en el objeto 'dbo.TDatosDetalleLineaFacturaVersiones' o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.TDatosDetalleLineaFacturaVersiones' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TDatosDetalleLineaFacturaVersiones'. */
USE GESLICO
GO

CREATE TABLE dbo.TDatosDetalleLineaFacturaVersiones
	( dFchVersion    datetime        NOT NULL
	, nLinea         int             NOT NULL
	, nIdFacturacion int             NOT NULL
	, cCodigo        varchar(20)     NOT NULL
	, nCodTipoLote   int             NOT NULL
	, dFchAlta       datetime        NOT NULL
	, dFchBaja       datetime            NULL
	, cMAC           varchar(15)         NULL
	)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.TDatosFacturaDetalleVersiones' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TDatosFacturaDetalleVersiones'. */
USE GESLICO
GO

CREATE TABLE dbo.TDatosFacturaDetalleVersiones
	( dFchVersion        datetime        NOT NULL
	, IDER               varchar(100)    NOT NULL
	, CODIGO             varchar(20)     NOT NULL
	, ANEXO              varchar(5)      NOT NULL
	, LITERAL            varchar(100)        NULL
	, AGRUPADOR          varchar(100)        NULL
	, LOTE               int             NOT NULL
	, DESCRIPCIÓN       varchar(255)    NOT NULL
	, DETALLES           varchar(-1)     NOT NULL
	, UNIDAD_MEDIDA      varchar(255)    NOT NULL
	, PRECIO             money           NOT NULL
	, ANEXO_INVENTARIO   varchar(5)          NULL
	, LINEA              int                 NULL
	, NUM_ADMINISTRATIVO varchar(50)         NULL
	, LINEA_ASOCIADA     varchar(50)         NULL
	, MAC                varchar(15)         NULL
	, SEDE               int                 NULL
	, DIRECCION_SEDE     varchar(100)        NULL
	, CAMPUS             int                 NULL
	, DIRECCION_CAMPUS   varchar(100)        NULL
	, CODUNI             int                 NULL
	, UNIDAD             varchar(100)        NULL
	, IDAREA             int                 NULL
	, AREA               varchar(100)        NULL
	, dFchControl        datetime        NOT NULL
	)
GO

ALTER TABLE dbo.TDatosFacturaDetalleVersiones ADD CONSTRAINT PK_TDatosFacturaDetalleVersiones PRIMARY KEY clustered (dFchVersion, IDER, CODIGO)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.TDatosFacturaVersiones' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TDatosFacturaVersiones'. */
USE GESLICO
GO

CREATE TABLE dbo.TDatosFacturaVersiones
	( dFchVersion      datetime        NOT NULL
	, CODIGO           varchar(20)     NOT NULL
	, ANEXO            varchar(5)      NOT NULL
	, LITERAL          varchar(100)        NULL
	, AGRUPADOR        varchar(100)        NULL
	, LOTE             int             NOT NULL
	, DESCRIPCIÓN     varchar(255)    NOT NULL
	, DETALLES         varchar(-1)     NOT NULL
	, ANEXO_INVENTARIO varchar(5)          NULL
	, UNIDAD_MEDIDA    varchar(255)    NOT NULL
	, PRECIO           money           NOT NULL
	, UNIDADES         numeric(18,2)       NULL
	)
GO

ALTER TABLE dbo.TDatosFacturaVersiones ADD CONSTRAINT PK_TDatosFacturaVersiones PRIMARY KEY clustered (dFchVersion, CODIGO)
GO

	/* El objeto 'dbo.TDeviceNeighbour' no tiene ningún índice o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.TDeviceNeighbour' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TDeviceNeighbour'. */
USE GESLICO
GO

CREATE TABLE dbo.TDeviceNeighbour
	( cDevice          varchar(100)    NOT NULL
	, cIpDevice        varchar(100)    NOT NULL
	, cDeviceNeighbour varchar(100)    NOT NULL
	, cIpNeighbour     varchar(100)    NOT NULL
	, cPlatform        varchar(100)    NOT NULL
	, cCapabilities    varchar(100)    NOT NULL
	, cInterface       varchar(100)    NOT NULL
	, cPortID          varchar(100)    NOT NULL
	, dFchControl      datetime        NOT NULL
	)
GO

	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TDeviceProfile'. */
USE GESLICO
GO

CREATE TABLE dbo.TDeviceProfile
	( nCodDeviceProfile    int             NOT NULL
	, cDeviceName          varchar(50)     NOT NULL
	, nCodModelo           int                 NULL
	, cDescription         varchar(100)        NULL
	, cProtocol            varchar(50)         NULL
	, cUsuarioAlta         varchar(25)     NOT NULL
	, dFchAlta             datetime        NOT NULL
	, cUsuarioModificacion varchar(25)         NULL
	, dFchModificacion     datetime            NULL
	)
GO

CREATE unique nonclustered INDEX IX_TDeviceProfile on dbo.TDeviceProfile(cDeviceName)
GO

ALTER TABLE dbo.TDeviceProfile ADD CONSTRAINT PK_TDeviceProfile PRIMARY KEY clustered (nCodDeviceProfile)
GO

	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TDispositivosIP'. */
USE GESLICO
GO

CREATE TABLE dbo.TDispositivosIP
	( nCodDispositivosIP   int             NOT NULL
	, cMAC                 varchar(15)     NOT NULL
	, cSerie               varchar(20)         NULL
	, nCodModelo           int             NOT NULL
	, cDescription         varchar(65)         NULL
	, cIP                  varchar(16)         NULL
	, dFchIP               datetime            NULL
	, cRegistrado          varchar(16)         NULL
	, dFchRegistro         datetime            NULL
	, cStatus              varchar(40)         NULL
	, cUserId              varchar(30)         NULL
	, cUserIdExt           varchar(30)         NULL
	, cDevicePool          varchar(50)         NULL
	, dFchDevicePool       datetime            NULL
	, nCodElectronicaRed   int                 NULL
	, cPuerto              nchar(20)           NULL
	, nIDVLan              int                 NULL
	, cVLan                varchar(50)         NULL
	, cModulo1             varchar(15)         NULL
	, cModulo2             varchar(15)         NULL
	, nModulos             int             NOT NULL
	, cProtocolo           varchar(5)          NULL
	, cFirmware            varchar(30)         NULL
	, bCandado             bit             NOT NULL
	, bConsumo             bit             NOT NULL
	, bControlled          bit             NOT NULL
	, nCodAlmacen          int                 NULL
	, dFchAlmacen          datetime            NULL
	, nCodEstado           int             NOT NULL
	, bWeb                 bit                 NULL
	, cUsuarioAlta         varchar(25)     NOT NULL
	, dFchAlta             datetime        NOT NULL
	, cUsuarioModificacion varchar(25)         NULL
	, dFchModificacion     datetime            NULL
	)
GO

CREATE  nonclustered INDEX IX_cSerie on dbo.TDispositivosIP(cSerie)
GO

CREATE  nonclustered INDEX IX_TDispositivosIP_249370 on dbo.TDispositivosIP(nCodEstado)
GO

CREATE  nonclustered INDEX IX_TDispositivosIP_317333 on dbo.TDispositivosIP(nCodEstado)
GO

CREATE  nonclustered INDEX IX_TDispositivosIP_IP on dbo.TDispositivosIP(cIP)
GO

CREATE unique nonclustered INDEX IX_TDispositivosIP_MAC on dbo.TDispositivosIP(cMAC)
GO

ALTER TABLE dbo.TDispositivosIP ADD CONSTRAINT PK_TDispositivosIP PRIMARY KEY clustered (nCodDispositivosIP)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.TDispositivosIPFacturacion' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TDispositivosIPFacturacion'. */
USE GESLICO
GO

CREATE TABLE dbo.TDispositivosIPFacturacion
	( nCodDispositivosIP int             NOT NULL
	, nIdFacturacion     int             NOT NULL
	, dFchAlta           datetime        NOT NULL
	, dFchBaja           datetime            NULL
	, dFchControl        datetime        NOT NULL
	, cUsuario           varchar(25)         NULL
	)
GO

ALTER TABLE dbo.TDispositivosIPFacturacion ADD CONSTRAINT PK_TDispositivosIPFacturacion PRIMARY KEY clustered (nCodDispositivosIP, nIdFacturacion, dFchAlta)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.TDispositivosIPFacturacionVersiones' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TDispositivosIPFacturacionVersiones'. */
USE GESLICO
GO

CREATE TABLE dbo.TDispositivosIPFacturacionVersiones
	( dFchVersion        datetime        NOT NULL
	, nCodDispositivosIP int             NOT NULL
	, nIdFacturacion     int             NOT NULL
	, dFchAlta           datetime        NOT NULL
	, dFchBaja           datetime            NULL
	, dFchControl        datetime        NOT NULL
	)
GO

ALTER TABLE dbo.TDispositivosIPFacturacionVersiones ADD CONSTRAINT PK_TDispositivosIPFacturacionVersiones PRIMARY KEY clustered (dFchVersion, nCodDispositivosIP, nIdFacturacion, dFchAlta)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.TDispositivosIPPuestosPersonasHistorico' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TDispositivosIPPuestosPersonasHistorico'. */
USE GESLICO
GO

CREATE TABLE dbo.TDispositivosIPPuestosPersonasHistorico
	( cMAC       varchar(15)     NOT NULL
	, cDNI       varchar(9)      NOT NULL
	, cLetraDNI  varchar(1)          NULL
	, cNombre    varchar(40)     NOT NULL
	, cApellido1 varchar(40)     NOT NULL
	, cApellido2 varchar(40)     NOT NULL
	, nNumPer    int                 NULL
	, nNumPuesto int                 NULL
	, cPuesto    varchar(40)         NULL
	, cGrupo     varchar(2)          NULL
	, nNivel     int                 NULL
	, nCodUni    int             NOT NULL
	, cUnidad    varchar(100)    NOT NULL
	, nIdArea    int             NOT NULL
	, Area       varchar(100)    NOT NULL
	, dFchInicio datetime        NOT NULL
	, dFchFin    datetime            NULL
	)
GO

CREATE  nonclustered INDEX IX_TDispositivosIPPuestosPersonasHistorico_DNI on dbo.TDispositivosIPPuestosPersonasHistorico(cDNI)
GO

CREATE  nonclustered INDEX IX_TDispositivosIPPuestosPersonasHistorico_MAC on dbo.TDispositivosIPPuestosPersonasHistorico(cMAC)
GO

CREATE  nonclustered INDEX IX_TDispositivosIPPuestosPersonasHistorico_NumPer on dbo.TDispositivosIPPuestosPersonasHistorico(nNumPer)
GO

CREATE  nonclustered INDEX IX_TDispositivosIPPuestosPersonasHistorico_NumPuesto on dbo.TDispositivosIPPuestosPersonasHistorico(nNumPuesto)
GO

	/* El objeto 'dbo.TDispositivosResumen' no tiene ningún índice o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.TDispositivosResumen' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TDispositivosResumen'. */
USE GESLICO
GO

CREATE TABLE dbo.TDispositivosResumen
	( nLinea           int                 NULL
	, nNumCorto        int                 NULL
	, MACAddress       nvarchar(100)       NULL
	, IPAddress        nvarchar(100)       NULL
	, PhoneDescription nvarchar(100)       NULL
	, Model            nvarchar(100)       NULL
	, SwitchAddress    nvarchar(100)       NULL
	, cNombre          varchar(50)         NULL
	, Port             nvarchar(100)       NULL
	, DevicePool       nvarchar(100)       NULL
	, StatusReasonCode nvarchar(100)       NULL
	, Protocol         nvarchar(100)       NULL
	, VLANName         nvarchar(100)       NULL
	, ApplicationId    nvarchar(100)       NULL
	, LoadId           nvarchar(100)       NULL
	, nCodRack         int                 NULL
	, cUbicacion       text(16)            NULL
	, nPlanta          real                NULL
	, nCodSede         int                 NULL
	, cSede            varchar(100)        NULL
	, cDireccion       varchar(100)        NULL
	, dFchControl      datetime        NOT NULL
	)
GO

	/* El objeto 'dbo.TDistritos' no tiene ningún índice o el usuario no tiene permisos. */
	/* No hay ninguna restricción definida en el objeto 'dbo.TDistritos' o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.TDistritos' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TDistritos'. */
USE GESLICO
GO

CREATE TABLE dbo.TDistritos
	( nDistrito int             NOT NULL
	, cDistrito varchar(8000)       NULL
	)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.TEdificios' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TEdificios'. */
USE GESLICO
GO

CREATE TABLE dbo.TEdificios
	( nCodEdificio int             NOT NULL
	, cTipoVia     varchar(30)     NOT NULL
	, cNombreCalle varchar(72)     NOT NULL
	, cTipo_Num    varchar(3)      NOT NULL
	, cNumero      varchar(6)      NOT NULL
	, CAL_APP      varchar(2)      NOT NULL
	, cCodPostal   varchar(5)      NOT NULL
	, cPais        varchar(26)     NOT NULL
	, cProvincia   varchar(20)     NOT NULL
	, cMunicipio   varchar(40)     NOT NULL
	, cUsuarioAlta varchar(25)         NULL
	, dFchAlta     datetime            NULL
	)
GO

ALTER TABLE dbo.TEdificios ADD CONSTRAINT PK_TEdificios PRIMARY KEY clustered (nCodEdificio)
GO

	/* El objeto 'dbo.TEDRVLAN' no tiene ningún índice o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.TEDRVLAN' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TEDRVLAN'. */
USE GESLICO
GO

CREATE TABLE dbo.TEDRVLAN
	( cIpEDR      varchar(20)         NULL
	, cVlan       varchar(30)         NULL
	, dFchControl datetime            NULL
	)
GO

	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TElectronicaRed'. */
USE GESLICO
GO

CREATE TABLE dbo.TElectronicaRed
	( nCodElectronicaRed   int             NOT NULL
	, nCodRack             int             NOT NULL
	, cIPGestion           varchar(20)         NULL
	, cNombre              varchar(50)     NOT NULL
	, nCodTipoEDR          smallint            NULL
	, cObservaciones       varchar(-1)         NULL
	, cFuenteAlimentacion  varchar(100)        NULL
	, bPOE                 bit                 NULL
	, bbPOE                bit                 NULL
	, nNumPuertosUsuario   int                 NULL
	, nPosicion            int                 NULL
	, nIdGrTACACS          int                 NULL
	, bGestionable         bit             NOT NULL
	, bCritico             bit             NOT NULL
	, cUsuarioAlta         varchar(25)     NOT NULL
	, dFchAlta             datetime        NOT NULL
	, cUsuarioModificacion varchar(25)         NULL
	, dFchModificacion     datetime            NULL
	)
GO

CREATE  nonclustered INDEX IX_TElectronicaRed_IpGestion on dbo.TElectronicaRed(cIPGestion)
GO

CREATE unique nonclustered INDEX IX_TElectronicaRed_Nombre on dbo.TElectronicaRed(cNombre)
GO

ALTER TABLE dbo.TElectronicaRed ADD CONSTRAINT PK_TElectronicaRed PRIMARY KEY clustered (nCodElectronicaRed)
GO

	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TEndPoints'. */
USE GESLICO
GO

CREATE TABLE dbo.TEndPoints
	( nCodElectronicaRed int             NOT NULL
	, cEndPoint          varchar(50)     NOT NULL
	, nNumCorto          int                 NULL
	, nRegleta           int             NOT NULL
	)
GO

ALTER TABLE dbo.TEndPoints ADD CONSTRAINT PK_TEndPoints_1 PRIMARY KEY clustered (cEndPoint)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.TEnlaces' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TEnlaces'. */
USE GESLICO
GO

CREATE TABLE dbo.TEnlaces
	( nNumAdministrativo numeric(14,0)   NOT NULL
	, nCodOrigen         int             NOT NULL
	, nCodDestino        int             NOT NULL
	)
GO

ALTER TABLE dbo.TEnlaces ADD CONSTRAINT PK_TEnlaces PRIMARY KEY clustered (nNumAdministrativo)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.TEnviosCorreo' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TEnviosCorreo'. */
USE GESLICO
GO

CREATE TABLE dbo.TEnviosCorreo
	( nCodEnvio            int             NOT NULL
	, dFchEnvio            datetime        NOT NULL
	, cLanzador            varchar(200)        NULL
	, cProfile             varchar(50)     NOT NULL
	, cRecipients          varchar(200)    NOT NULL
	, cBlindCopyRecipients varchar(200)        NULL
	, cSensitivity         varchar(50)         NULL
	, cBody                varchar(-1)     NOT NULL
	, cBodyFormat          varchar(50)         NULL
	, cSubject             varchar(200)    NOT NULL
	)
GO

ALTER TABLE dbo.TEnviosCorreo ADD CONSTRAINT PK_TEnviosCorreo PRIMARY KEY clustered (nCodEnvio)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.TEstadisticaProyectoIP' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TEstadisticaProyectoIP'. */
USE GESLICO
GO

CREATE TABLE dbo.TEstadisticaProyectoIP
	( dFecha           datetime        NOT NULL
	, dFchDescargaCUCM datetime            NULL
	, nFicheroCUCM     int                 NULL
	, dFchDescargaCUOM datetime            NULL
	, nFicheroCUOM     int                 NULL
	, nCUCM            int                 NULL
	, nCUCM_MD         int                 NULL
	, nCUCM_Sup        int                 NULL
	, nCUCM_MD_Sup     int                 NULL
	)
GO

ALTER TABLE dbo.TEstadisticaProyectoIP ADD CONSTRAINT PK_TEstadisticaProyectoIP PRIMARY KEY clustered (dFecha)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.TEstadisticasSedeProyectoIP' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TEstadisticasSedeProyectoIP'. */
USE GESLICO
GO

CREATE TABLE dbo.TEstadisticasSedeProyectoIP
	( dFecha          varchar(30)     NOT NULL
	, nCodSede        int             NOT NULL
	, nCodTipFijo     smallint        NOT NULL
	, nCodSubTipoFijo smallint        NOT NULL
	, cSubtipo        varchar(50)     NOT NULL
	, nLineas         int                 NULL
	)
GO

ALTER TABLE dbo.TEstadisticasSedeProyectoIP ADD CONSTRAINT PK_TEstadisticasSedeProyectoIP PRIMARY KEY clustered (dFecha, nCodSede, nCodTipFijo, nCodSubTipoFijo)
GO

	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TEstadoDispositivosIP'. */
USE GESLICO
GO

CREATE TABLE dbo.TEstadoDispositivosIP
	( nCodEstado   int             NOT NULL
	, cEstado      varchar(20)     NOT NULL
	, cDescripcion varchar(100)        NULL
	)
GO

ALTER TABLE dbo.TEstadoDispositivosIP ADD CONSTRAINT PK_TEstadoDispositivosIP PRIMARY KEY clustered (nCodEstado)
GO

	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TEstadosCentralita'. */
USE GESLICO
GO

CREATE TABLE dbo.TEstadosCentralita
	( nCodEstado   smallint        NOT NULL
	, cDescripcion varchar(50)     NOT NULL
	)
GO

ALTER TABLE dbo.TEstadosCentralita ADD CONSTRAINT PK__TEstadosCentrali__2799C73C PRIMARY KEY clustered (nCodEstado)
GO

	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TEstadosLinea'. */
USE GESLICO
GO

CREATE TABLE dbo.TEstadosLinea
	( nCodEstLin   int             NOT NULL
	, cCodTipLinea varchar(1)          NULL
	, cDescEstado  varchar(50)         NULL
	)
GO

ALTER TABLE dbo.TEstadosLinea ADD CONSTRAINT PK__TEstadosLinea__5535A963 PRIMARY KEY clustered (nCodEstLin)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.TEstadosSedes' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TEstadosSedes'. */
USE GESLICO
GO

CREATE TABLE dbo.TEstadosSedes
	( nCodEstado   int             NOT NULL
	, cDescripcion varchar(50)         NULL
	)
GO

ALTER TABLE dbo.TEstadosSedes ADD CONSTRAINT PK_TEstadosSedes PRIMARY KEY clustered (nCodEstado)
GO

	/* No hay ninguna restricción definida en el objeto 'dbo.TEstadoTarificador' o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.TEstadoTarificador' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TEstadoTarificador'. */
USE GESLICO
GO

CREATE TABLE dbo.TEstadoTarificador
	( dFchUltimaTrama datetime        NOT NULL
	, nTramas         numeric(29,0)   NOT NULL
	, dFchControl     datetime        NOT NULL
	)
GO

CREATE unique nonclustered INDEX IX_TEstadoTarificador_FchControl on dbo.TEstadoTarificador(dFchControl)
GO

	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TEstadoTerminalesMovil'. */
USE GESLICO
GO

CREATE TABLE dbo.TEstadoTerminalesMovil
	( nCodEstado   int             NOT NULL
	, cEstado      varchar(20)     NOT NULL
	, cDescripcion varchar(100)        NULL
	)
GO

ALTER TABLE dbo.TEstadoTerminalesMovil ADD CONSTRAINT PK_TTEstadoTerminalesMovil PRIMARY KEY clustered (nCodEstado)
GO

	/* El objeto 'dbo.TetraAgendaISSI' no tiene ningún índice o el usuario no tiene permisos. */
	/* No hay ninguna restricción definida en el objeto 'dbo.TetraAgendaISSI' o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.TetraAgendaISSI' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TetraAgendaISSI'. */
USE GESLICO
GO

CREATE TABLE dbo.TetraAgendaISSI
	( nISSI       int             NOT NULL
	, nGSSI       int                 NULL
	, nCalls      int                 NULL
	, nUnit       int                 NULL
	, nLocation   int                 NULL
	, dFchControl datetime        NOT NULL
	)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.TetraAuthenticationFailure' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TetraAuthenticationFailure'. */
USE GESLICO
GO

CREATE TABLE dbo.TetraAuthenticationFailure
	( dFecha                   datetime        NOT NULL
	, cOperatingUnit           varchar(10)     NOT NULL
	, cReason                  varchar(50)     NOT NULL
	, cAuthenticationType      varchar(20)     NOT NULL
	, cAuthentication          varchar(20)     NOT NULL
	, cAuthenticationInitiator varchar(5)      NOT NULL
	, cEncryptionKey           varchar(10)     NOT NULL
	, cRequestingZoneID        varchar(4)      NOT NULL
	, cRequestingSiteID        varchar(4)      NOT NULL
	, dFchControl              datetime        NOT NULL
	)
GO

CREATE  nonclustered INDEX IX_TetraAuthenticationFailure_FECHA on dbo.TetraAuthenticationFailure(dFecha)
GO

CREATE  nonclustered INDEX IX_TetraAuthenticationFailure_ISSI on dbo.TetraAuthenticationFailure(cOperatingUnit)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.TetraAuthenticationRejected' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TetraAuthenticationRejected'. */
USE GESLICO
GO

CREATE TABLE dbo.TetraAuthenticationRejected
	( dFecha                   datetime        NOT NULL
	, cOperatingUnit           varchar(10)     NOT NULL
	, cReason                  varchar(50)     NOT NULL
	, cAuthenticationType      varchar(20)     NOT NULL
	, cAuthentication          varchar(20)     NOT NULL
	, cAuthenticationInitiator varchar(5)      NOT NULL
	, cEncryptionKey           varchar(10)     NOT NULL
	, cRequestingZoneID        varchar(4)      NOT NULL
	, cRequestingSiteID        varchar(4)      NOT NULL
	, dFchControl              datetime        NOT NULL
	)
GO

CREATE  nonclustered INDEX IX_TetraAuthenticationRejected_FECHA on dbo.TetraAuthenticationRejected(dFecha)
GO

CREATE  nonclustered INDEX IX_TetraAuthenticationRejected_ISSI on dbo.TetraAuthenticationRejected(cOperatingUnit)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.TetraAuthenticationSuccess' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TetraAuthenticationSuccess'. */
USE GESLICO
GO

CREATE TABLE dbo.TetraAuthenticationSuccess
	( dFecha                   datetime        NOT NULL
	, cOperatingUnit           varchar(10)     NOT NULL
	, cReason                  varchar(50)     NOT NULL
	, cAuthenticationType      varchar(20)     NOT NULL
	, cAuthentication          varchar(20)     NOT NULL
	, cAuthenticationInitiator varchar(5)      NOT NULL
	, cEncryptionKey           varchar(10)     NOT NULL
	, cRequestingZoneID        varchar(4)      NOT NULL
	, cRequestingSiteID        varchar(4)      NOT NULL
	, dFchControl              datetime        NOT NULL
	)
GO

CREATE  nonclustered INDEX IX_TetraAuthenticationSuccess_Fecha on dbo.TetraAuthenticationSuccess(dFecha)
GO

CREATE  nonclustered INDEX IX_TetraAuthenticationSuccess_ISSI on dbo.TetraAuthenticationSuccess(cOperatingUnit)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.TetraAuthenticationTimeout' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TetraAuthenticationTimeout'. */
USE GESLICO
GO

CREATE TABLE dbo.TetraAuthenticationTimeout
	( dFecha                   datetime        NOT NULL
	, cOperatingUnit           varchar(10)     NOT NULL
	, cReason                  varchar(50)     NOT NULL
	, cAuthenticationType      varchar(20)     NOT NULL
	, cAuthentication          varchar(20)     NOT NULL
	, cAuthenticationInitiator varchar(5)      NOT NULL
	, cEncryptionKey           varchar(10)     NOT NULL
	, cRequestingZoneID        varchar(4)      NOT NULL
	, cRequestingSiteID        varchar(4)      NOT NULL
	, dFchControl              datetime        NOT NULL
	)
GO

CREATE  nonclustered INDEX IX_TetraAuthenticationTimeout_FECHA on dbo.TetraAuthenticationTimeout(dFecha)
GO

CREATE  nonclustered INDEX IX_TetraAuthenticationTimeout_ISSI on dbo.TetraAuthenticationTimeout(cOperatingUnit)
GO

	/* El objeto 'dbo.TetraAuxGSSIs' no tiene ningún índice o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.TetraAuxGSSIs' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TetraAuxGSSIs'. */
USE GESLICO
GO

CREATE TABLE dbo.TetraAuxGSSIs
	( cTalkgroupAlias                      varchar(50)         NULL
	, nTalkgroupID                         int                 NULL
	, cSecurityGroup                       varchar(50)         NULL
	, cConsoleTGMGCapabilitiesProfileAlias varchar(50)         NULL
	, cTGMGCapabilitiesProfileAlias        varchar(50)         NULL
	, cTGMGValidSitesProfileAlias          varchar(50)         NULL
	, cPreemptCapable                      varchar(5)          NULL
	, cExtendedBandChannelsCanBeAssigned   varchar(5)          NULL
	, cTalkgroupRegroupable                varchar(5)          NULL
	, cGroupEnabled                        varchar(5)          NULL
	, dFchControl                          datetime            NULL
	)
GO

	/* El objeto 'dbo.TetraAuxISSI_AUC' no tiene ningún índice o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.TetraAuxISSI_AUC' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TetraAuxISSI_AUC'. */
USE GESLICO
GO

CREATE TABLE dbo.TetraAuxISSI_AUC
	( nId              int                 NULL
	, cRef             varchar(20)         NULL
	, cSerialNumber    varchar(20)         NULL
	, cISSI            varchar(10)         NULL
	, cKAssigned       varchar(5)          NULL
	, cState           varchar(10)         NULL
	, nIdSecurityGroup int                 NULL
	, cSecurityGroup   varchar(50)         NULL
	, nBatchNumber     int                 NULL
	, dBatchDate       datetime            NULL
	, dFchControl      datetime            NULL
	)
GO

	/* El objeto 'dbo.TetraAuxISSIs' no tiene ningún índice o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.TetraAuxISSIs' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TetraAuxISSIs'. */
USE GESLICO
GO

CREATE TABLE dbo.TetraAuxISSIs
	( cRadioSN          varchar(50)         NULL
	, nRadioId          int                 NULL
	, cRadioReferenceId varchar(50)         NULL
	, cSecurityGroup    varchar(50)         NULL
	, dFchControl       datetime        NOT NULL
	)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.TetraCalls' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TetraCalls'. */
USE GESLICO
GO

CREATE TABLE dbo.TetraCalls
	( dFecha         datetime        NOT NULL
	, nCallId        int             NOT NULL
	, cType          varchar(50)     NOT NULL
	, nCaller        int             NOT NULL
	, nTarget        int             NOT NULL
	, nCallSequence  int             NOT NULL
	, nEventSequence int             NOT NULL
	, dFchControl    datetime        NOT NULL
	)
GO

CREATE  nonclustered INDEX IX_TetraCalls_Fecha on dbo.TetraCalls(dFecha)
GO

CREATE  nonclustered INDEX IX_TetraCalls_IdCall on dbo.TetraCalls(nCallId)
GO

CREATE  nonclustered INDEX IX_TetraCalls_ISSI on dbo.TetraCalls(nCaller)
GO

CREATE  nonclustered INDEX IX_TetraCalls_Target on dbo.TetraCalls(nTarget)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.TetraCalls1m' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TetraCalls1m'. */
USE GESLICO
GO

CREATE TABLE dbo.TetraCalls1m
	( nISSI                        int             NOT NULL
	, nTotalLlamadas               int             NOT NULL
	, nLlamadasAudioPatched        int             NOT NULL
	, nLlamadasTalkgroup           int             NOT NULL
	, nLlamadasPrivate             int             NOT NULL
	, nLlamadasEmergency           int             NOT NULL
	, nTotalParticipaciones        int             NOT NULL
	, nParticipacionesAudioPatched int             NOT NULL
	, nParticipacionesTalkgroup    int             NOT NULL
	, nParticipacionesPrivate      int             NOT NULL
	, nParticipacionesEmergency    int             NOT NULL
	, dFchControl                  datetime        NOT NULL
	)
GO

ALTER TABLE dbo.TetraCalls1m ADD CONSTRAINT PK_TetraCalls1m PRIMARY KEY clustered (nISSI)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.TetraCalls24h' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TetraCalls24h'. */
USE GESLICO
GO

CREATE TABLE dbo.TetraCalls24h
	( nISSI                        int             NOT NULL
	, nTotalLlamadas               int             NOT NULL
	, nLlamadasAudioPatched        int             NOT NULL
	, nLlamadasTalkgroup           int             NOT NULL
	, nLlamadasPrivate             int             NOT NULL
	, nLlamadasEmergency           int             NOT NULL
	, nTotalParticipaciones        int             NOT NULL
	, nParticipacionesAudioPatched int             NOT NULL
	, nParticipacionesTalkgroup    int             NOT NULL
	, nParticipacionesPrivate      int             NOT NULL
	, nParticipacionesEmergency    int             NOT NULL
	, dFchControl                  datetime        NOT NULL
	)
GO

ALTER TABLE dbo.TetraCalls24h ADD CONSTRAINT PK_TetraCalls24h PRIMARY KEY clustered (nISSI)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.TetraCalls7d' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TetraCalls7d'. */
USE GESLICO
GO

CREATE TABLE dbo.TetraCalls7d
	( nISSI                        int             NOT NULL
	, nTotalLlamadas               int             NOT NULL
	, nLlamadasAudioPatched        int             NOT NULL
	, nLlamadasTalkgroup           int             NOT NULL
	, nLlamadasPrivate             int             NOT NULL
	, nLlamadasEmergency           int             NOT NULL
	, nTotalParticipaciones        int             NOT NULL
	, nParticipacionesAudioPatched int             NOT NULL
	, nParticipacionesTalkgroup    int             NOT NULL
	, nParticipacionesPrivate      int             NOT NULL
	, nParticipacionesEmergency    int             NOT NULL
	, dFchControl                  datetime        NOT NULL
	)
GO

ALTER TABLE dbo.TetraCalls7d ADD CONSTRAINT PK_TetraCalls7d PRIMARY KEY clustered (nISSI)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.TetraCallsGSSI1m' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TetraCallsGSSI1m'. */
USE GESLICO
GO

CREATE TABLE dbo.TetraCallsGSSI1m
	( nGSSI                        int             NOT NULL
	, nTotalLlamadas               int             NOT NULL
	, nLlamadasAudioPatched        int             NOT NULL
	, nLlamadasTalkgroup           int             NOT NULL
	, nLlamadasEmergency           int             NOT NULL
	, nParticipantesDistintos      int             NOT NULL
	, nTotalParticipaciones        int             NOT NULL
	, nParticipacionesAudioPatched int             NOT NULL
	, nParticipacionesTalkgroup    int             NOT NULL
	, nParticipacionesEmergency    int             NOT NULL
	, dFchControl                  datetime        NOT NULL
	)
GO

ALTER TABLE dbo.TetraCallsGSSI1m ADD CONSTRAINT PK_TetraCallsGSSI1m PRIMARY KEY clustered (nGSSI)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.TetraCallsGSSI24h' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TetraCallsGSSI24h'. */
USE GESLICO
GO

CREATE TABLE dbo.TetraCallsGSSI24h
	( nGSSI                        int             NOT NULL
	, nTotalLlamadas               int             NOT NULL
	, nLlamadasAudioPatched        int             NOT NULL
	, nLlamadasTalkgroup           int             NOT NULL
	, nLlamadasEmergency           int             NOT NULL
	, nParticipantesDistintos      int             NOT NULL
	, nTotalParticipaciones        int             NOT NULL
	, nParticipacionesAudioPatched int             NOT NULL
	, nParticipacionesTalkgroup    int             NOT NULL
	, nParticipacionesEmergency    int             NOT NULL
	, dFchControl                  datetime        NOT NULL
	)
GO

ALTER TABLE dbo.TetraCallsGSSI24h ADD CONSTRAINT PK_TetraCallsGSSI24h PRIMARY KEY clustered (nGSSI)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.TetraCallsGSSI7d' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TetraCallsGSSI7d'. */
USE GESLICO
GO

CREATE TABLE dbo.TetraCallsGSSI7d
	( nGSSI                        int             NOT NULL
	, nTotalLlamadas               int             NOT NULL
	, nLlamadasAudioPatched        int             NOT NULL
	, nLlamadasTalkgroup           int             NOT NULL
	, nLlamadasEmergency           int             NOT NULL
	, nParticipantesDistintos      int             NOT NULL
	, nTotalParticipaciones        int             NOT NULL
	, nParticipacionesAudioPatched int             NOT NULL
	, nParticipacionesTalkgroup    int             NOT NULL
	, nParticipacionesEmergency    int             NOT NULL
	, dFchControl                  datetime        NOT NULL
	)
GO

ALTER TABLE dbo.TetraCallsGSSI7d ADD CONSTRAINT PK_TetraCallsGSSI7d PRIMARY KEY clustered (nGSSI)
GO

	/* El objeto 'dbo.TetraCallsTMP' no tiene ningún índice o el usuario no tiene permisos. */
	/* No hay ninguna restricción definida en el objeto 'dbo.TetraCallsTMP' o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.TetraCallsTMP' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TetraCallsTMP'. */
USE GESLICO
GO

CREATE TABLE dbo.TetraCallsTMP
	( dFecha         datetime        NOT NULL
	, nCallId        int             NOT NULL
	, cType          varchar(50)     NOT NULL
	, nCaller        int             NOT NULL
	, nTarget        int             NOT NULL
	, nCallSequence  int             NOT NULL
	, nEventSequence int             NOT NULL
	, dFchControl    datetime        NOT NULL
	)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.TetraCodesFAC' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TetraCodesFAC'. */
USE GESLICO
GO

CREATE TABLE dbo.TetraCodesFAC
	( cBinCode varchar(8)      NOT NULL
	, cHexCode varchar(2)      NOT NULL
	, cDecCode int             NOT NULL
	, cCompany varchar(50)     NOT NULL
	)
GO

CREATE unique nonclustered INDEX IX_TetraCodesFAC_BinCode on dbo.TetraCodesFAC(cBinCode)
GO

CREATE unique nonclustered INDEX IX_TetraCodesFAC_HexCode on dbo.TetraCodesFAC(cBinCode)
GO

ALTER TABLE dbo.TetraCodesFAC ADD CONSTRAINT PK_TetraCodesFAC PRIMARY KEY clustered (cDecCode)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.TetraConsolaISSIGSSI' o el usuario no tiene permisos para hacer referencia a tablas. */
USE GESLICO
GO

CREATE TABLE dbo.TetraConsolaISSIGSSI
	( nIdConsola     int             NOT NULL
	, nISSI          int             NOT NULL
	, nGSSI          int             NOT NULL
	, bActivo        bit             NOT NULL
	, dFchUltimoCall datetime            NULL
	)
GO

CREATE unique nonclustered INDEX IX_TetraConsolaISSIGSSI_ConsolaGSSI on dbo.TetraConsolaISSIGSSI(nIdConsola, nGSSI)
GO

CREATE unique nonclustered INDEX IX_TetraConsolaISSIGSSI_ISSI on dbo.TetraConsolaISSIGSSI(nISSI)
GO

ALTER TABLE dbo.TetraConsolaISSIGSSI ADD CONSTRAINT PK_TetraConsolaISSIGSSI PRIMARY KEY clustered (nIdConsola, nISSI, nGSSI)
GO

	/* El objeto 'dbo.TetraConsolaISSIGSSI_BCK160411' no tiene ningún índice o el usuario no tiene permisos. */
	/* No hay ninguna restricción definida en el objeto 'dbo.TetraConsolaISSIGSSI_BCK160411' o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.TetraConsolaISSIGSSI_BCK160411' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TetraConsolaISSIGSSI_BCK160411'. */
USE GESLICO
GO

CREATE TABLE dbo.TetraConsolaISSIGSSI_BCK160411
	( nIdConsola int             NOT NULL
	, nISSI      int             NOT NULL
	, nGSSI      int             NOT NULL
	, bActivo    bit             NOT NULL
	)
GO

	/* El objeto 'dbo.TetraConsolaISSIGSSI_BCK160519' no tiene ningún índice o el usuario no tiene permisos. */
	/* No hay ninguna restricción definida en el objeto 'dbo.TetraConsolaISSIGSSI_BCK160519' o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.TetraConsolaISSIGSSI_BCK160519' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TetraConsolaISSIGSSI_BCK160519'. */
USE GESLICO
GO

CREATE TABLE dbo.TetraConsolaISSIGSSI_BCK160519
	( nIdConsola     int             NOT NULL
	, nISSI          int             NOT NULL
	, nGSSI          int             NOT NULL
	, bActivo        bit             NOT NULL
	, dFchUltimoCall datetime            NULL
	)
GO

	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TetraConsolas'. */
USE GESLICO
GO

CREATE TABLE dbo.TetraConsolas
	( nId                  int             NOT NULL
	, cNombre              varchar(20)     NOT NULL
	, nIdFlota             int                 NULL
	, cZona                int             NOT NULL
	, cCEB                 int                 NULL
	, cEquipo              varchar(200)        NULL
	, cIdentificacion      varchar(200)        NULL
	, cLog                 varchar(20)         NULL
	, cPass                varchar(20)         NULL
	, cConfgRed            varchar(200)        NULL
	, cObservaciones       varchar(-1)         NULL
	, nCodSede             int                 NULL
	, cUsuarioAlta         varchar(20)     NOT NULL
	, dFchAlta             datetime        NOT NULL
	, cUsuarioModificacion varchar(20)         NULL
	, dFchModificacion     datetime            NULL
	)
GO

CREATE unique nonclustered INDEX IX_TetraConsolas on dbo.TetraConsolas(cNombre, cZona)
GO

ALTER TABLE dbo.TetraConsolas ADD CONSTRAINT PK_TetraConsolas PRIMARY KEY clustered (nId)
GO

	/* El objeto 'dbo.TetraConsolas_bck160413' no tiene ningún índice o el usuario no tiene permisos. */
	/* No hay ninguna restricción definida en el objeto 'dbo.TetraConsolas_bck160413' o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.TetraConsolas_bck160413' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TetraConsolas_bck160413'. */
USE GESLICO
GO

CREATE TABLE dbo.TetraConsolas_bck160413
	( nId                  int             NOT NULL
	, cNombre              varchar(20)     NOT NULL
	, nIdFlota             int                 NULL
	, cZona                int             NOT NULL
	, cCEB                 int                 NULL
	, cEquipo              varchar(200)        NULL
	, cIdentificacion      varchar(200)        NULL
	, cLog                 varchar(20)         NULL
	, cPass                varchar(20)         NULL
	, cConfgRed            varchar(200)        NULL
	, cObservaciones       varchar(-1)         NULL
	, nCodSede             int                 NULL
	, cUsuarioAlta         varchar(20)     NOT NULL
	, dFchAlta             datetime        NOT NULL
	, cUsuarioModificacion varchar(20)         NULL
	, dFchModificacion     datetime            NULL
	)
GO

	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TetraFlotas'. */
USE GESLICO
GO

CREATE TABLE dbo.TetraFlotas
	( nId    int             NOT NULL
	, cFlota varchar(20)     NOT NULL
	)
GO

ALTER TABLE dbo.TetraFlotas ADD CONSTRAINT PK_TetraFlotas PRIMARY KEY clustered (nId)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.TetraGSSI_borrar' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TetraGSSI_borrar'. */
USE GESLICO
GO

CREATE TABLE dbo.TetraGSSI_borrar
	( nId                                  int             NOT NULL
	, cAlias                               varchar(50)         NULL
	, nIdFlota                             int                 NULL
	, cSecurityGroup                       varchar(50)         NULL
	, cConsoleTGMGCapabilitiesProfileAlias varchar(50)         NULL
	, cTGMGCapabilitiesProfileAlias        varchar(50)         NULL
	, cTGMGValidSitesProfileAlias          varchar(50)         NULL
	, cPreemptCapable                      varchar(5)          NULL
	, cExtendedBandChannelsCanBeAssigned   varchar(5)          NULL
	, cTalkgroupRegroupable                varchar(5)          NULL
	, cGroupEnabled                        varchar(5)          NULL
	, bReserva                             bit             NOT NULL
	, nRestId                              int                 NULL
	, cObservaciones                       varchar(250)        NULL
	, cUsuarioAlta                         varchar(20)     NOT NULL
	, dFchAlta                             datetime        NOT NULL
	, cUsuarioModificacion                 varchar(20)         NULL
	, dFchModificacion                     datetime            NULL
	)
GO

CREATE  nonclustered INDEX IX_TetraGSSI_nRestId on dbo.TetraGSSI_borrar(nRestId)
GO

CREATE unique nonclustered INDEX IX_TetraGSSI_TalkgroupAlias on dbo.TetraGSSI_borrar(cAlias)
GO

CREATE unique nonclustered INDEX IX_TetraGSSI_TalkgroupID on dbo.TetraGSSI_borrar(nId)
GO

ALTER TABLE dbo.TetraGSSI_borrar ADD CONSTRAINT PK_TetraGSSI_nId PRIMARY KEY clustered (nId)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.TetraHistoricoTerminalesRadio' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TetraHistoricoTerminalesRadio'. */
USE GESLICO
GO

CREATE TABLE dbo.TetraHistoricoTerminalesRadio
	( nId         int             NOT NULL
	, nIdTerminal int                 NULL
	, cDetalle    varchar(500)        NULL
	, dFchControl datetime            NULL
	)
GO

ALTER TABLE dbo.TetraHistoricoTerminalesRadio ADD CONSTRAINT PK_TetraHistoricoTerminalesRadio PRIMARY KEY clustered (nId)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.TetraLocationRegistration' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TetraLocationRegistration'. */
USE GESLICO
GO

CREATE TABLE dbo.TetraLocationRegistration
	( dFecha                      datetime        NOT NULL
	, cOperatingUnit              varchar(10)     NOT NULL
	, cOperatingGroup             varchar(20)     NOT NULL
	, cOperatingGroupAlias        varchar(30)     NOT NULL
	, cDevice                     varchar(10)     NOT NULL
	, cReplacePreviousAffiliation varchar(15)     NOT NULL
	, cMobilityResponse           varchar(50)     NOT NULL
	, cAuthenticationType         varchar(40)     NOT NULL
	, cEncryptionKey              varchar(15)     NOT NULL
	, cClassOfMS                  varchar(80)     NOT NULL
	, cMobilityResponseSite       varchar(5)      NOT NULL
	, cMobilityResponseLocalZone  varchar(5)      NOT NULL
	, dFchControl                 datetime        NOT NULL
	)
GO

CREATE  nonclustered INDEX IX_TetraLocationRegistration_Fecha on dbo.TetraLocationRegistration(dFecha)
GO

CREATE  nonclustered INDEX IX_TetraLocationRegistration_ISSI on dbo.TetraLocationRegistration(cOperatingUnit)
GO

	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TetraModelosRadio'. */
USE GESLICO
GO

CREATE TABLE dbo.TetraModelosRadio
	( nId     int             NOT NULL
	, cMarca  varchar(20)     NOT NULL
	, cModelo varchar(20)     NOT NULL
	, cClave  varchar(50)         NULL
	)
GO

CREATE unique nonclustered INDEX IX_TetraModelosRadio on dbo.TetraModelosRadio(cMarca, cModelo)
GO

ALTER TABLE dbo.TetraModelosRadio ADD CONSTRAINT PK_TetraModelosRadio PRIMARY KEY clustered (nId)
GO

	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TetraPlanGSSIs'. */
USE GESLICO
GO

CREATE TABLE dbo.TetraPlanGSSIs
	( nGSSI              int             NOT NULL
	, cNombre            varchar(50)         NULL
	, nIdFlota           int                 NULL
	, bActivo            bit             NOT NULL
	, nRango             int             NOT NULL
	, dFchUltimoUnit     datetime            NULL
	, dFchUltimoLocation datetime            NULL
	, dFchUltimoCall     datetime            NULL
	)
GO

ALTER TABLE dbo.TetraPlanGSSIs ADD CONSTRAINT PK_TetraPlanGSSIs PRIMARY KEY clustered (nGSSI)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.TetraPlanGSSIsB' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TetraPlanGSSIsB'. */
USE GESLICO
GO

CREATE TABLE dbo.TetraPlanGSSIsB
	( nGSSI              int             NOT NULL
	, cNombre            varchar(50)         NULL
	, nIdFlota           int                 NULL
	, bActivo            bit             NOT NULL
	, nRango             int             NOT NULL
	, dFchUltimoUnit     datetime            NULL
	, dFchUltimoLocation datetime            NULL
	, dFchUltimoCall     datetime            NULL
	)
GO

ALTER TABLE dbo.TetraPlanGSSIsB ADD CONSTRAINT PK_TetraPlanGSSIsB PRIMARY KEY clustered (nGSSI)
GO

	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TetraPlanISSIs'. */
USE GESLICO
GO

CREATE TABLE dbo.TetraPlanISSIs
	( nISSI    int             NOT NULL
	, nIdFlota int                 NULL
	, nIdTipo  int                 NULL
	, nRango   int             NOT NULL
	)
GO

ALTER TABLE dbo.TetraPlanISSIs ADD CONSTRAINT PK_TetraPlanISSIs PRIMARY KEY clustered (nISSI)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.TetraTelemetriaMPR' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TetraTelemetriaMPR'. */
USE GESLICO
GO

CREATE TABLE dbo.TetraTelemetriaMPR
	( dTime          datetime        NOT NULL
	, nLocTxPower    numeric(10,1)       NULL
	, nRemTxPower    numeric(10,1)       NULL
	, nLocRxPower    numeric(10,1)       NULL
	, nRemRxPower    numeric(10,1)       NULL
	, nLocDivRxPower numeric(10,1)       NULL
	, nRemDivRxPower numeric(10,1)       NULL
	, nLocXPD        numeric(10,1)       NULL
	, nRemXPD        numeric(10,1)       NULL
	, nLocMSE        numeric(10,1)       NULL
	, nRemMSE        numeric(10,1)       NULL
	, nTxMod         int                 NULL
	, nRxMod         int                 NULL
	, nLocEPS        int                 NULL
	, nRemEPS        int                 NULL
	, nLocRPS        int                 NULL
	, nRemRPS        int                 NULL
	, nLocTPS        int                 NULL
	, nRemTPS        int                 NULL
	, nLocHBERAlm    int                 NULL
	, nRemHBERAlm    int                 NULL
	, nLocEWAlm      int                 NULL
	, nRemEWAlm      int                 NULL
	, nLocDemFailAlm int                 NULL
	, nRemDemFailAlm int                 NULL
	, cMPR           varchar(15)     NOT NULL
	, cEnlace        varchar(15)     NOT NULL
	, dFchControl    datetime        NOT NULL
	)
GO

CREATE  nonclustered INDEX IX_TetraTelemetriaMPR_MPR_Enlace on dbo.TetraTelemetriaMPR(cMPR, cEnlace)
GO

CREATE  nonclustered INDEX IX_TetraTelemetriaMPR_Time on dbo.TetraTelemetriaMPR(dTime)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.TetraTerminalesRadio' o el usuario no tiene permisos para hacer referencia a tablas. */
USE GESLICO
GO

CREATE TABLE dbo.TetraTerminalesRadio
	( nId                  int             NOT NULL
	, nISSI                int                 NULL
	, cNumeroSerie         varchar(20)     NOT NULL
	, nullBusterISSI       varchar(30)         NULL
	, nIdModelo            int             NOT NULL
	, cTEI                 varchar(16)         NULL
	, nullbusterTEI        varchar(20)         NULL
	, cKAssigned           varchar(5)          NULL
	, cEstado              varchar(20)         NULL
	, nIdFlota             int                 NULL
	, nBatch               int                 NULL
	, dFchBatch            datetime            NULL
	, dFchFabricacion      datetime            NULL
	, dFchPrimeraCnx       datetime            NULL
	, dFchULtimaCnx        datetime            NULL
	, nIdEstado            int             NOT NULL
	, dFchBaja             datetime            NULL
	, cObservaciones       varchar(50)         NULL
	, cUsuarioAlta         varchar(25)     NOT NULL
	, dFchAlta             datetime        NOT NULL
	, cUsuarioModificacion varchar(25)         NULL
	, dFchModificacion     datetime            NULL
	)
GO

CREATE unique nonclustered INDEX IX_TetraTerminalesRadio_nullBusterISSI on dbo.TetraTerminalesRadio(nullBusterISSI)
GO

CREATE unique nonclustered INDEX IX_TetraTerminalesRadio_nullBusterTEI on dbo.TetraTerminalesRadio(nullbusterTEI)
GO

CREATE  nonclustered INDEX IX_TetraTerminalesRadio_TEI on dbo.TetraTerminalesRadio(cTEI)
GO

CREATE unique nonclustered INDEX IX_TetraTerminalesRadioISSI on dbo.TetraTerminalesRadio(nId)
GO

CREATE unique nonclustered INDEX IX_TetraTerminalesRadioNumSerie on dbo.TetraTerminalesRadio(cNumeroSerie)
GO

ALTER TABLE dbo.TetraTerminalesRadio ADD CONSTRAINT PK_TetraTerminalesRadio PRIMARY KEY clustered (nId)
GO

	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TetraTipoISSI'. */
USE GESLICO
GO

CREATE TABLE dbo.TetraTipoISSI
	( nId   int             NOT NULL
	, cTipo varchar(15)     NOT NULL
	)
GO

ALTER TABLE dbo.TetraTipoISSI ADD CONSTRAINT PK_TetraTipoISSI PRIMARY KEY clustered (nId)
GO

	/* El objeto 'dbo.TetraTramasIgnorada' no tiene ningún índice o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.TetraTramasIgnorada' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TetraTramasIgnorada'. */
USE GESLICO
GO

CREATE TABLE dbo.TetraTramasIgnorada
	( cRegistro   varchar(-1)         NULL
	, cFileName   varchar(50)         NULL
	, dFchControl datetime        NOT NULL
	)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.TetraUnitRegistration' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TetraUnitRegistration'. */
USE GESLICO
GO

CREATE TABLE dbo.TetraUnitRegistration
	( dFecha                              datetime        NOT NULL
	, cOperatingUnit                      varchar(100)    NOT NULL
	, cRequesterAffiliationTalkgroup      varchar(100)        NULL
	, cRequesterAffiliationTalkgroupAlias varchar(100)        NULL
	, cDevice                             varchar(10)     NOT NULL
	, cMobilityResponse                   varchar(50)     NOT NULL
	, cAuthenticationType                 varchar(40)     NOT NULL
	, cEncryptionKey                      varchar(15)     NOT NULL
	, cClassOfMS                          varchar(80)     NOT NULL
	, cMobilityResponseSite               varchar(5)      NOT NULL
	, cMobilityResponseLocalZone          varchar(5)      NOT NULL
	, dFchControl                         datetime        NOT NULL
	)
GO

CREATE  nonclustered INDEX IX_TetraUnitRegistration_FECHA on dbo.TetraUnitRegistration(dFecha)
GO

CREATE  nonclustered INDEX IX_TetraUnitRegistration_ISSI on dbo.TetraUnitRegistration(cOperatingUnit)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.TFactelResumen1' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TFactelResumen1'. */
USE GESLICO
GO

CREATE TABLE dbo.TFactelResumen1
	( dFchFactura     datetime        NOT NULL
	, dFecha          datetime        NOT NULL
	, nLinea          int             NOT NULL
	, nNumCorto       int                 NULL
	, nNumLLamadasMv  int                 NULL
	, nDuracionMv     numeric(38,20)      NULL
	, nCosteMv        numeric(38,20)      NULL
	, nCosteTMv       numeric(38,20)      NULL
	, nNumLLamadasIn  int                 NULL
	, nDuracionIn     numeric(38,20)      NULL
	, nNumLLamadasMet int                 NULL
	, nDuracionMet    numeric(38,20)      NULL
	, nCosteMet       numeric(38,20)      NULL
	, nNumLLamadasPro int                 NULL
	, nDuracionPro    numeric(38,20)      NULL
	, nCostePro       numeric(38,20)      NULL
	, nNumLLamadasNac int                 NULL
	, nDuracionNac    numeric(38,20)      NULL
	, nCosteNac       numeric(38,20)      NULL
	, nNumLLamadasInt int                 NULL
	, nDuracionInt    numeric(38,20)      NULL
	, nCosteInt       numeric(38,20)      NULL
	, nNumLLamadasOtr int                 NULL
	, nDuracionOtr    numeric(38,20)      NULL
	, nCosteOtr       numeric(38,20)      NULL
	, dFchDescarga    datetime        NOT NULL
	)
GO

CREATE  nonclustered INDEX IX_TFactelResumen_nNumCorto on dbo.TFactelResumen1(nNumCorto)
GO

CREATE  nonclustered INDEX IX_TFactelResumen1_32070 on dbo.TFactelResumen1(nLinea, dFecha)
GO

ALTER TABLE dbo.TFactelResumen1 ADD CONSTRAINT PK_TFactelResumen1 PRIMARY KEY clustered (dFchFactura, dFecha, nLinea)
GO

	/* El objeto 'dbo.TFactelResumen2' no tiene ningún índice o el usuario no tiene permisos. */
	/* No hay ninguna restricción definida en el objeto 'dbo.TFactelResumen2' o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.TFactelResumen2' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TFactelResumen2'. */
USE GESLICO
GO

CREATE TABLE dbo.TFactelResumen2
	( dFecha              datetime        NOT NULL
	, nLinea              int             NOT NULL
	, nNumCorto           int                 NULL
	, nNumLlamadasMv      int                 NULL
	, nDuracionMv         float               NULL
	, nCosteMv            float               NULL
	, nNumLlamadasIn      int                 NULL
	, nDuracionIn         float               NULL
	, nNumLLamadasMet     int                 NULL
	, nDuracionMet        float               NULL
	, nCosteMet           float               NULL
	, nNumLLamadasPro     int                 NULL
	, nDuracionPro        float               NULL
	, nCostePro           float               NULL
	, nNumLLamadasNac     int                 NULL
	, nDuracionNac        float               NULL
	, nCosteNac           float               NULL
	, nNumLLamadasInt     int                 NULL
	, nDuracionInt        float               NULL
	, nCosteInt           float               NULL
	, nNumLLamadas901n1   int                 NULL
	, nDuracion901n1      float               NULL
	, nCoste901n1         float               NULL
	, nNumLLamadas901n2   int                 NULL
	, nDuracion901n2      float               NULL
	, nCoste901n2         float               NULL
	, nNumLLamadas901nR   int                 NULL
	, nDuracion901nR      float               NULL
	, nCoste901nR         float               NULL
	, nNumLLamadas902     int                 NULL
	, nDuracion902        float               NULL
	, nCoste902           float               NULL
	, nNumLLamadas010     int                 NULL
	, nDuracion010        float               NULL
	, nCoste010           float               NULL
	, nNumLLamadas08X_09X int                 NULL
	, nDuracion08X_09X    float               NULL
	, nCoste08X_09X       float               NULL
	, nNumLLamadas061_012 int                 NULL
	, nDuracion061_012    float               NULL
	, nCoste061_012       float               NULL
	, nNumLLamadas060     int                 NULL
	, nDuracion060        float               NULL
	, nCoste060           float               NULL
	, nNumLLamadas80367   int                 NULL
	, nDuracion80367      float               NULL
	, nCoste80367         float               NULL
	, nNumLLamadas905     int                 NULL
	, nDuracion905        float               NULL
	, nCoste905           float               NULL
	, nNumLLamadas11818   int                 NULL
	, nDuracion11818      float               NULL
	, nCoste11818         float               NULL
	, nNumLLamadas118     int                 NULL
	, nDuracion118        float               NULL
	, nCoste118           float               NULL
	, nNumLLamadasResto   int                 NULL
	, nDuracionResto      float               NULL
	, nCosteResto         float               NULL
	, dFchDescarga        datetime        NOT NULL
	)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.TFactelResumenDetalle' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TFactelResumenDetalle'. */
USE GESLICO
GO

CREATE TABLE dbo.TFactelResumenDetalle
	( dFechaFactura smalldatetime   NOT NULL
	, nLinea        int             NOT NULL
	, nNumLlamadasM int             NOT NULL
	, nDuracionM    int             NOT NULL
	, nImporteM     float           NOT NULL
	, nNumLlamadasF int             NOT NULL
	, nDuracionF    int             NOT NULL
	, nImporteF     float           NOT NULL
	, dFchControl   datetime        NOT NULL
	)
GO

ALTER TABLE dbo.TFactelResumenDetalle ADD CONSTRAINT PK_TFactelResumenDetalle PRIMARY KEY clustered (dFechaFactura, nLinea)
GO

	/* Ninguna clave externa hace referencia a la tabla 'dbo.TFactelResumenTrafico' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TFactelResumenTrafico'. */
USE GESLICO
GO

CREATE TABLE dbo.TFactelResumenTrafico
	( dFechaFactura smalldatetime   NOT NULL
	, nLinea        int             NOT NULL
	, nNumLlamadasM int             NOT NULL
	, nDuracionM    int                 NULL
	, nImporteM     float           NOT NULL
	, nNumLlamadasF int             NOT NULL
	, nDuracionF    int                 NULL
	, nImporteF     float           NOT NULL
	, dFc