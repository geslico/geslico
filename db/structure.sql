-- 	/* Falta o está vacío un nombre de objeto o columna. Compruebe si todas las columnas de las instrucciones SELECT INTO tienen un nombre. Para otras instrucciones, busque si hay nombres de alias vacíos. No se permiten los alias definidos como "" o []. Cambie el alias por un nombre válido. */
-- 	/* La base de datos '' no existe. Asegúrese de que ha escrito el nombre correctamente. */
-- 	/* El objeto 'dbo.AFARIA_APP_BLACK_LIST' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.AFARIA_APP_BLACK_LIST' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AFARIA_APP_BLACK_LIST'. */

-- CREATE TABLE dbo.AFARIA_APP_BLACK_LIST
-- 	( cIMEI               varchar(15)         NULL
-- 	, cClientFriendlyName varchar(20)         NULL
-- 	, nIdEntorno          int             NOT NULL
-- 	, nIdGrupo            int             NOT NULL
-- 	, cPackageName        varchar(255)    NOT NULL
-- 	, dFchControl         datetime        NOT NULL
-- 	)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.AFARIA_APP_INSTALADAS' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AFARIA_APP_INSTALADAS'. */

-- CREATE TABLE dbo.AFARIA_APP_INSTALADAS
-- 	( nId                       int             NOT NULL
-- 	, ClientUID                 int             NOT NULL
-- 	, SoftwareName              nvarchar(510)   NOT NULL
-- 	, SoftwareSize              int                 NULL
-- 	, SoftwareVersion           nvarchar(160)       NULL
-- 	, ClientCategory            int             NOT NULL
-- 	, AppInstallCount           int                 NULL
-- 	, AppUnInstallCount         int                 NULL
-- 	, AppDisabled               varchar(8)          NULL
-- 	, AppInstallationDisabled   varchar(8)          NULL
-- 	, AppUninstallationDisabled varchar(8)          NULL
-- 	, dFchControl               datetime        NOT NULL
-- 	)

-- ALTER TABLE dbo.AFARIA_APP_INSTALADAS ADD CONSTRAINT PK_AFARIA_APP_INSTALADAS PRIMARY KEY clustered (nId)

-- 	/* El objeto 'dbo.AFARIA_APP_WHITE_LIST' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.AFARIA_APP_WHITE_LIST' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AFARIA_APP_WHITE_LIST'. */

-- CREATE TABLE dbo.AFARIA_APP_WHITE_LIST
-- 	( cIMEI               varchar(15)         NULL
-- 	, cClientFriendlyName varchar(20)         NULL
-- 	, nIdEntorno          int             NOT NULL
-- 	, nIdGrupo            int             NOT NULL
-- 	, cPackageName        varchar(255)    NOT NULL
-- 	, dFchControl         datetime        NOT NULL
-- 	)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.AFARIA_BLUETOOTH' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AFARIA_BLUETOOTH'. */

-- CREATE TABLE dbo.AFARIA_BLUETOOTH
-- 	( cIMEI                       varchar(15)         NULL
-- 	, cClientFriendlyName         varchar(20)         NULL
-- 	, nIdEntorno                  int             NOT NULL
-- 	, nIdGrupo                    int             NOT NULL
-- 	, cSupported                  varchar(16)         NULL
-- 	, cStatus                     varchar(16)         NULL
-- 	, cDiscoverable               varchar(8)          NULL
-- 	, cConnectable                varchar(8)          NULL
-- 	, cOutgoingCallsAllowed       varchar(8)          NULL
-- 	, cDesktopConnectivityEnabled varchar(8)          NULL
-- 	, cDiscoverableEnabled        varchar(8)          NULL
-- 	, cPairingEnabled             varchar(8)          NULL
-- 	, cLimitedDiscoverableEnabled varchar(8)          NULL
-- 	, dFchControl                 datetime            NULL
-- 	)

-- CREATE  nonclustered INDEX IX_AFARIA_BLUETOOTH on dbo.AFARIA_BLUETOOTH(cIMEI)

-- 	/* El objeto 'dbo.AFARIA_ENVIO_INVENTARIO' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.AFARIA_ENVIO_INVENTARIO' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AFARIA_ENVIO_INVENTARIO'. */

-- CREATE TABLE dbo.AFARIA_ENVIO_INVENTARIO
-- 	( nIdEntorno      int             NOT NULL
-- 	, nClientUID      int             NOT NULL
-- 	, cUserName       varchar(256)        NULL
-- 	, cIMEI           varchar(15)         NULL
-- 	, LastConnectDate datetime            NULL
-- 	, dFchControl     datetime        NOT NULL
-- 	)

-- 	/* El objeto 'dbo.AFARIA_LOCALIZACION' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.AFARIA_LOCALIZACION' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AFARIA_LOCALIZACION'. */

-- CREATE TABLE dbo.AFARIA_LOCALIZACION
-- 	( cIMEI                    varchar(15)         NULL
-- 	, cClientFriendlyName      nvarchar(40)        NULL
-- 	, nIdEntorno               int             NOT NULL
-- 	, nIdGrupo                 int             NOT NULL
-- 	, cLocationProviderStates  varchar(64)         NULL
-- 	, cTiene_Localización_gps varchar(2)          NULL
-- 	, dFchControl              datetime            NULL
-- 	)

-- 	/* El objeto 'dbo.AFARIA_RESTRICCIONES' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.AFARIA_RESTRICCIONES' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AFARIA_RESTRICCIONES'. */

-- CREATE TABLE dbo.AFARIA_RESTRICCIONES
-- 	( cIMEI                          varchar(15)         NULL
-- 	, cClientFriendlyName            varchar(20)         NULL
-- 	, nIdEntorno                     int             NOT NULL
-- 	, nIdGrupo                       int             NOT NULL
-- 	, cIsUsbDebuggingEnabled         varchar(8)          NULL
-- 	, cIsUsbTetheringEnabled         varchar(8)          NULL
-- 	, cIsWifiTetheringEnabled        varchar(8)          NULL
-- 	, cIsMultipleUsersAllowed        varchar(8)          NULL
-- 	, cIsUnknownSourceInstallEnabled varchar(8)          NULL
-- 	, cIsRemoveDeviceAdminEnabled    varchar(8)          NULL
-- 	, dFchControl                    datetime            NULL
-- 	)

-- 	/* El objeto 'dbo.AFARIA_ROAMING' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.AFARIA_ROAMING' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AFARIA_ROAMING'. */

-- CREATE TABLE dbo.AFARIA_ROAMING
-- 	( cIMEI               varchar(15)         NULL
-- 	, cClientFriendlyName nvarchar(40)        NULL
-- 	, nIdEntorno          int             NOT NULL
-- 	, nIdGrupo            int             NOT NULL
-- 	, cRoamingSyncEnabled varchar(8)          NULL
-- 	, cRoamingPushEnabled varchar(8)          NULL
-- 	, cAllowDataRoaming   varchar(8)          NULL
-- 	, dFchControl         datetime            NULL
-- 	)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.AFARIA_SECURITY_PWD' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AFARIA_SECURITY_PWD'. */

-- CREATE TABLE dbo.AFARIA_SECURITY_PWD
-- 	( cIMEI                  varchar(15)         NULL
-- 	, cClientFriendlyName    varchar(20)         NULL
-- 	, nIdEntorno             int             NOT NULL
-- 	, nIdGrupo               int             NOT NULL
-- 	, cPwdQuality            varchar(15)         NULL
-- 	, nPwdMaxLength          int                 NULL
-- 	, nPwdMinLength          int                 NULL
-- 	, nPwdMaxFailedForWipe   int                 NULL
-- 	, nPwdExpirationTimeout  int                 NULL
-- 	, cPwdActiveIsSufficient varchar(8)          NULL
-- 	, nPwdHistoryLength      int                 NULL
-- 	, dFchControl            datetime        NOT NULL
-- 	)

-- CREATE  nonclustered INDEX IX_AFARIA_SECURITY_PWD_IMEI_cClientFriendlyName on dbo.AFARIA_SECURITY_PWD(cClientFriendlyName)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.AFARIA_TENANT' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AFARIA_TENANT'. */

-- CREATE TABLE dbo.AFARIA_TENANT
-- 	( TenantID    int             NOT NULL
-- 	, Name        varchar(255)    NOT NULL
-- 	, Description varchar(255)        NULL
-- 	, State       varchar(10)     NOT NULL
-- 	, dFchControl datetime        NOT NULL
-- 	)

-- ALTER TABLE dbo.AFARIA_TENANT ADD CONSTRAINT PK_AFARIA_TENANT PRIMARY KEY clustered (TenantID)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.AFARIA_V_ALL_CLIENTS' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AFARIA_V_ALL_CLIENTS'. */

-- CREATE TABLE dbo.AFARIA_V_ALL_CLIENTS
-- 	( ClientGUID             char(38)        NOT NULL
-- 	, ClientUID              int             NOT NULL
-- 	, ClientName             nvarchar(512)       NULL
-- 	, ClientFriendlyName     nvarchar(510)       NULL
-- 	, ClientFriendlyNameType nvarchar(16)        NULL
-- 	, SelfServiceUserName    nvarchar(510)       NULL
-- 	, ClientCategory         int             NOT NULL
-- 	, ClientCategoryName     varchar(40)     NOT NULL
-- 	, Model                  nvarchar(510)       NULL
-- 	, FirstConnectDate       datetime            NULL
-- 	, LastConnectDate        datetime            NULL
-- 	, OSVersion              varchar(255)        NULL
-- 	, OSShell                varchar(32)     NOT NULL
-- 	, CodeSigner             varchar(64)     NOT NULL
-- 	, Approved               tinyint             NULL
-- 	, TenantID               int             NOT NULL
-- 	, PhoneNumber            varchar(64)         NULL
-- 	, IMSI                   varchar(40)         NULL
-- 	, IMEI                   varchar(24)         NULL
-- 	, SerialNumber           varchar(255)        NULL
-- 	, Corporate              tinyint         NOT NULL
-- 	, DirectoryId            nvarchar(510)       NULL
-- 	, DeviceState            tinyint             NULL
-- 	, DeviceUser             nvarchar(520)       NULL
-- 	, UserName               nvarchar(512)       NULL
-- 	, UDID                   char(40)            NULL
-- 	, NitroDesk              int             NOT NULL
-- 	, dFchControl            datetime        NOT NULL
-- 	, PhoneSIMSerialNumber   varchar(24)         NULL
-- 	)

-- CREATE  nonclustered INDEX IX_A_V_ALL_CLIENTS_ClientUID on dbo.AFARIA_V_ALL_CLIENTS(ClientUID)

-- CREATE  nonclustered INDEX IX_A_V_ALL_CLIENTS_IMEI on dbo.AFARIA_V_ALL_CLIENTS(IMEI)

-- ALTER TABLE dbo.AFARIA_V_ALL_CLIENTS ADD CONSTRAINT PK_AFARIA_V_ALL_CLIENTS PRIMARY KEY clustered (ClientGUID)

-- 	/* El objeto 'dbo.AFARIA_V_ALL_CLIENTS_BCK151105' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.AFARIA_V_ALL_CLIENTS_BCK151105' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.AFARIA_V_ALL_CLIENTS_BCK151105' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AFARIA_V_ALL_CLIENTS_BCK151105'. */

-- CREATE TABLE dbo.AFARIA_V_ALL_CLIENTS_BCK151105
-- 	( ClientGUID             char(38)        NOT NULL
-- 	, ClientUID              int             NOT NULL
-- 	, ClientName             nvarchar(512)       NULL
-- 	, ClientFriendlyName     nvarchar(510)       NULL
-- 	, ClientFriendlyNameType nvarchar(16)        NULL
-- 	, SelfServiceUserName    nvarchar(510)       NULL
-- 	, ClientCategory         int             NOT NULL
-- 	, ClientCategoryName     varchar(40)     NOT NULL
-- 	, Model                  nvarchar(510)       NULL
-- 	, FirstConnectDate       datetime            NULL
-- 	, LastConnectDate        datetime            NULL
-- 	, OSVersion              varchar(255)        NULL
-- 	, OSShell                varchar(32)     NOT NULL
-- 	, CodeSigner             varchar(64)     NOT NULL
-- 	, Approved               tinyint             NULL
-- 	, TenantID               int             NOT NULL
-- 	, PhoneNumber            varchar(64)         NULL
-- 	, IMSI                   varchar(40)         NULL
-- 	, IMEI                   varchar(24)         NULL
-- 	, SerialNumber           varchar(255)        NULL
-- 	, Corporate              tinyint         NOT NULL
-- 	, DirectoryId            nvarchar(510)       NULL
-- 	, DeviceState            tinyint             NULL
-- 	, DeviceUser             nvarchar(520)       NULL
-- 	, UserName               nvarchar(512)       NULL
-- 	, UDID                   char(40)            NULL
-- 	, NitroDesk              int             NOT NULL
-- 	, dFchControl            datetime        NOT NULL
-- 	)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.AFARIA_V_ALL_GROUPS' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AFARIA_V_ALL_GROUPS'. */

-- CREATE TABLE dbo.AFARIA_V_ALL_GROUPS
-- 	( GroupId               int             NOT NULL
-- 	, Name                  varchar(255)        NULL
-- 	, QueryId               int                 NULL
-- 	, Description           varchar(255)        NULL
-- 	, MemberUpdateTimeStamp datetime            NULL
-- 	, Type                  int                 NULL
-- 	, TenantId              int                 NULL
-- 	, dFchControl           datetime        NOT NULL
-- 	)

-- CREATE  nonclustered INDEX IX_AFARIA_V_ALL_GROUPS_TenantId on dbo.AFARIA_V_ALL_GROUPS(TenantId)

-- ALTER TABLE dbo.AFARIA_V_ALL_GROUPS ADD CONSTRAINT PK_AFARIA_V_ALL_GROUPS PRIMARY KEY clustered (GroupId)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.AFARIA_V_ALL_GROUPS_ALL_MEMBERS' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AFARIA_V_ALL_GROUPS_ALL_MEMBERS'. */

-- CREATE TABLE dbo.AFARIA_V_ALL_GROUPS_ALL_MEMBERS
-- 	( TenantId       int             NOT NULL
-- 	, GroupId        int             NOT NULL
-- 	, DeviceId       int             NOT NULL
-- 	, ClientCategory int                 NULL
-- 	, Type           int                 NULL
-- 	, dFchControl    datetime            NULL
-- 	)

-- ALTER TABLE dbo.AFARIA_V_ALL_GROUPS_ALL_MEMBERS ADD CONSTRAINT PK_AFARIA_V_ALL_GROUPS_ALL_MEMBERS PRIMARY KEY clustered (TenantId, GroupId, DeviceId)

-- 	/* El objeto 'dbo.AFARIA_WIFI' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.AFARIA_WIFI' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AFARIA_WIFI'. */

-- CREATE TABLE dbo.AFARIA_WIFI
-- 	( cIMEI                        varchar(15)         NULL
-- 	, cClientFriendlyName          varchar(20)         NULL
-- 	, nIdEntorno                   int             NOT NULL
-- 	, nIdGrupo                     int             NOT NULL
-- 	, cAllowUserProfiles           varchar(8)          NULL
-- 	, cAllowUserPolicyChanges      varchar(8)          NULL
-- 	, cPasswordHidden              varchar(8)          NULL
-- 	, cPromptCredentialsEnabled    varchar(8)          NULL
-- 	, cTlsCertificateSecurityLevel varchar(8)          NULL
-- 	, cMinimumRequiredSecurity     varchar(30)         NULL
-- 	, dFchControl                  datetime            NULL
-- 	)

-- 	/* El objeto 'dbo.AFARIA_WIFI_INFO' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.AFARIA_WIFI_INFO' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AFARIA_WIFI_INFO'. */

-- CREATE TABLE dbo.AFARIA_WIFI_INFO
-- 	( cIMEI                varchar(15)         NULL
-- 	, cClientFriendlyName  varchar(20)         NULL
-- 	, nIdEntorno           int             NOT NULL
-- 	, nIdGrupo             int             NOT NULL
-- 	, cSSID                varchar(255)        NULL
-- 	, cNetworkLinkSecurity varchar(255)        NULL
-- 	, cDHCPEnabled         varchar(8)          NULL
-- 	, cIsNetworkBlocked    varchar(8)          NULL
-- 	, dFchControl          datetime            NULL
-- 	)

-- 	/* El objeto 'dbo.amper_intentollamada' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.amper_intentollamada' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.amper_intentollamada' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.amper_intentollamada'. */

-- CREATE TABLE dbo.amper_intentollamada
-- 	( extension varchar(30)     NOT NULL
-- 	, particion varchar(50)     NOT NULL
-- 	, fechahora datetime        NOT NULL
-- 	)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.amper_vistaalerting' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.amper_vistaalerting'. */

-- CREATE TABLE dbo.amper_vistaalerting
-- 	( extension    varchar(30)     NOT NULL
-- 	, particion    varchar(50)     NOT NULL
-- 	, alertingname varchar(50)         NULL
-- 	, dFchControl  datetime        NOT NULL
-- 	)

-- ALTER TABLE dbo.amper_vistaalerting ADD CONSTRAINT PK_amper_vistaalerting PRIMARY KEY clustered (extension, particion)

-- 	/* El objeto 'dbo.amper_vistaenduserdevicelines' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.amper_vistaenduserdevicelines' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.amper_vistaenduserdevicelines' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.amper_vistaenduserdevicelines'. */

-- CREATE TABLE dbo.amper_vistaenduserdevicelines
-- 	( extension varchar(45)     NOT NULL
-- 	, particion varchar(50)     NOT NULL
-- 	, device    varchar(50)     NOT NULL
-- 	, endUser   varchar(45)         NULL
-- 	)

-- 	/* El objeto 'dbo.amper_vistaerrorenduserdeviceline' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.amper_vistaerrorenduserdeviceline' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.amper_vistaerrorenduserdeviceline' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.amper_vistaerrorenduserdeviceline'. */

-- CREATE TABLE dbo.amper_vistaerrorenduserdeviceline
-- 	( id        int             NOT NULL
-- 	, extension varchar(45)         NULL
-- 	, particion varchar(45)         NULL
-- 	, device    varchar(45)         NULL
-- 	, endUser   varchar(45)         NULL
-- 	, error     varchar(250)        NULL
-- 	, fechahora datetime            NULL
-- 	)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.amper_vistaextensionescandado' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.amper_vistaextensionescandado'. */

-- CREATE TABLE dbo.amper_vistaextensionescandado
-- 	( extension                    varchar(20)     NOT NULL
-- 	, particion                    varchar(45)     NOT NULL
-- 	, estadocandado                varchar(45)     NOT NULL
-- 	, tipocandado                  varchar(45)     NOT NULL
-- 	, fechahoraultimaactivacion    datetime        NOT NULL
-- 	, fechahoraultimadesactivacion datetime        NOT NULL
-- 	, dFchControl                  datetime            NULL
-- 	)

-- CREATE  nonclustered INDEX IX_amper_vistaextensionescandado on dbo.amper_vistaextensionescandado(extension, particion)

-- 	/* El objeto 'dbo.amper_vistajefesconsecretariasdegrupo' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.amper_vistajefesconsecretariasdegrupo' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.amper_vistajefesconsecretariasdegrupo' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.amper_vistajefesconsecretariasdegrupo'. */

-- CREATE TABLE dbo.amper_vistajefesconsecretariasdegrupo
-- 	( secretaria varchar(20)     NOT NULL
-- 	, jefe       varchar(45)     NOT NULL
-- 	)

-- 	/* El objeto 'dbo.amper_vistajefescontiposecretariaydesvio' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.amper_vistajefescontiposecretariaydesvio' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.amper_vistajefescontiposecretariaydesvio' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.amper_vistajefescontiposecretariaydesvio'. */

-- CREATE TABLE dbo.amper_vistajefescontiposecretariaydesvio
-- 	( extension                    varchar(20)     NOT NULL
-- 	, nombrectiroutepoint          varchar(45)     NOT NULL
-- 	, estado                       varchar(45)     NOT NULL
-- 	, extensionSecre               varchar(20)     NOT NULL
-- 	, tiposecretaria               varchar(45)     NOT NULL
-- 	, fechahoraultimoarranque      datetime        NOT NULL
-- 	, fechahoraultimaconfiguracion datetime        NOT NULL
-- 	)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.amper_vistalabels' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.amper_vistalabels'. */

-- CREATE TABLE dbo.amper_vistalabels
-- 	( extension   nvarchar(60)    NOT NULL
-- 	, particion   nvarchar(100)   NOT NULL
-- 	, device      nvarchar(100)   NOT NULL
-- 	, display     nvarchar(60)        NULL
-- 	, linetext    nvarchar(60)        NULL
-- 	, epnm        nchar(48)           NULL
-- 	, dFchControl datetime        NOT NULL
-- 	)

-- ALTER TABLE dbo.amper_vistalabels ADD CONSTRAINT PK_amper_vistalabels PRIMARY KEY clustered (extension, particion, device)

-- 	/* El objeto 'dbo.amper_vistaregistrossincronizacion' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.amper_vistaregistrossincronizacion' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.amper_vistaregistrossincronizacion' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.amper_vistaregistrossincronizacion'. */

-- CREATE TABLE dbo.amper_vistaregistrossincronizacion
-- 	( id                      int             NOT NULL
-- 	, extension               varchar(45)         NULL
-- 	, particion               varchar(45)         NULL
-- 	, device                  varchar(45)         NULL
-- 	, endUser                 varchar(45)         NULL
-- 	, ccontrolleddeviceenduer int                 NULL
-- 	, ccappcandado            int                 NULL
-- 	, ccsuscandado            int                 NULL
-- 	, ccaltacandado           int                 NULL
-- 	, cctocall                int                 NULL
-- 	, fechahora               datetime            NULL
-- 	)

-- 	/* El objeto 'dbo.amper_vistavalidacionenduserdeviceline' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.amper_vistavalidacionenduserdeviceline' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.amper_vistavalidacionenduserdeviceline' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.amper_vistavalidacionenduserdeviceline'. */

-- CREATE TABLE dbo.amper_vistavalidacionenduserdeviceline
-- 	( id             int             NOT NULL
-- 	, extension      varchar(45)         NULL
-- 	, particion      varchar(45)         NULL
-- 	, device         varchar(45)         NULL
-- 	, endUser        varchar(45)         NULL
-- 	, causa          varchar(200)        NULL
-- 	, fechahora      datetime            NULL
-- 	, tipovalidacion varchar(45)         NULL
-- 	)

-- 	/* El objeto 'dbo.ATS_AddressBook' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.ATS_AddressBook' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.ATS_AddressBook'. */

-- CREATE TABLE dbo.ATS_AddressBook
-- 	( nID         int             NOT NULL
-- 	, RUI         nvarchar(32)    NOT NULL
-- 	, ISSI        int             NOT NULL
-- 	, DepartNo    nvarchar(20)    NOT NULL
-- 	, Note        nvarchar(80)        NULL
-- 	, Type        nvarchar(2)         NULL
-- 	, dFchControl datetime            NULL
-- 	)

-- 	/* El objeto 'dbo.ATS_SentRecvedMessages' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.ATS_SentRecvedMessages' o el usuario no tiene permisos para hacer referencia a tablas. */

-- CREATE TABLE dbo.ATS_SentRecvedMessages
-- 	( ID               int             NOT NULL
-- 	, MessageRef       int                 NULL
-- 	, UDHMessageRef    int                 NULL
-- 	, MsgChunk         nvarchar(max)        NULL
-- 	, ChunksCount      int                 NULL
-- 	, IsErrorMsg       bit             NOT NULL
-- 	, IsUnicode        bit             NOT NULL
-- 	, Text             nvarchar(max)        NULL
-- 	, Status           nvarchar(100)       NULL
-- 	, Department       nvarchar(100)       NULL
-- 	, ISSI             int                 NULL
-- 	, PI               int                 NULL
-- 	, TimeOut          int                 NULL
-- 	, Alias            nvarchar(100)       NULL
-- 	, Date             datetime            NULL
-- 	, Time             datetime            NULL
-- 	, IsBroadcast      bit             NOT NULL
-- 	, IsGSSI           bit             NOT NULL
-- 	, IsConReq         bit             NOT NULL
-- 	, IsRecReq         bit             NOT NULL
-- 	, IsStoReq         bit             NOT NULL
-- 	, IsTSReq          bit             NOT NULL
-- 	, IsReceivedMsg    bit             NOT NULL
-- 	, RegionID         int                 NULL
-- 	, Image            int                 NULL
-- 	, RegionName       nvarchar(100)       NULL
-- 	, ChannelSelection int                 NULL
-- 	, dFchMensaje      datetime            NULL
-- 	, dFchControl      datetime            NULL
-- 	)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.audit' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.audit'. */

-- CREATE TABLE dbo.audit
-- 	( idAudit int             NOT NULL
-- 	, cUser   varchar(100)        NULL
-- 	, cHost   varchar(100)        NULL
-- 	, cXML    varchar(-1)         NULL
-- 	, dFecha  datetime        NOT NULL
-- 	)

-- ALTER TABLE dbo.audit ADD CONSTRAINT PK_audit PRIMARY KEY clustered (idAudit)

-- 	/* El objeto 'dbo.AUX_16132' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.AUX_16132' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_16132' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_16132'. */

-- CREATE TABLE dbo.AUX_16132
-- 	( clinea          int                 NULL
-- 	, ccorto          int                 NULL
-- 	, csede           varchar(100)        NULL
-- 	, nllamadasAyer   int                 NULL
-- 	, nfallosAyer     int                 NULL
-- 	, nfallosSemana   int                 NULL
-- 	, nllamadasSemana int                 NULL
-- 	, paciertosSem    decimal(6,2)        NULL
-- 	, pfallosSem      decimal(6,2)        NULL
-- 	, mPonde          decimal(6,2)        NULL
-- 	, nllamadasHace2d int                 NULL
-- 	, nfallosHace2d   int                 NULL
-- 	, nllamadasHace3d int                 NULL
-- 	, nfallosHace3d   int                 NULL
-- 	, nllamadasHace4d int                 NULL
-- 	, nfallosHace4d   int                 NULL
-- 	, nllamadasHace5d int                 NULL
-- 	, nfallosHace5d   int                 NULL
-- 	, nllamadasHace6d int                 NULL
-- 	, nfallosHace6d   int                 NULL
-- 	, nllamadasHace7d int                 NULL
-- 	, nfallosHace7d   int                 NULL
-- 	)

-- 	/* El objeto 'dbo.AUX_16133' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.AUX_16133' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_16133' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_16133'. */

-- CREATE TABLE dbo.AUX_16133
-- 	( cnombre         varchar(40)         NULL
-- 	, clinea          int                 NULL
-- 	, ccorto          int                 NULL
-- 	, nfallosAyer     int                 NULL
-- 	, nllamadasAyer   int                 NULL
-- 	, nfallosSemana   int                 NULL
-- 	, nllamadasSemana int                 NULL
-- 	, paciertosSem    int                 NULL
-- 	, pfallosSem      int                 NULL
-- 	, mponde          int                 NULL
-- 	)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_AccesosIntranet' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_AccesosIntranet'. */

-- CREATE TABLE dbo.AUX_AccesosIntranet
-- 	( Date              datetime        NOT NULL
-- 	, Time              nvarchar(20)    NOT NULL
-- 	, MessageType       nvarchar(60)    NOT NULL
-- 	, UserName          nvarchar(60)    NOT NULL
-- 	, GroupName         nvarchar(80)    NOT NULL
-- 	, CallerID          nvarchar(60)    NOT NULL
-- 	, NASPort           nvarchar(60)    NOT NULL
-- 	, NASIPAddress      nvarchar(60)    NOT NULL
-- 	, SourceNAS         nvarchar(60)        NULL
-- 	, FilterInformation nvarchar(60)    NOT NULL
-- 	, dFchControl       datetime        NOT NULL
-- 	)

-- CREATE  nonclustered INDEX IX_AUX_AccesosIntranet_Callerid on dbo.AUX_AccesosIntranet(CallerID)

-- CREATE  nonclustered INDEX IX_AUX_AccesosIntranet_datetime on dbo.AUX_AccesosIntranet(Date, Time)

-- CREATE  nonclustered INDEX IX_AUX_AccesosIntranet_user on dbo.AUX_AccesosIntranet(UserName)

-- 	/* El objeto 'dbo.AUX_Afaria_Directorios' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_Afaria_Directorios' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_Afaria_Directorios'. */

-- CREATE TABLE dbo.AUX_Afaria_Directorios
-- 	( cRuta                    varchar(500)        NULL
-- 	, dUltimaFechaModificacion datetime            NULL
-- 	, cAplicacion              varchar(50)         NULL
-- 	, cVersionCode             varchar(50)         NULL
-- 	, cSoftwareVersion         varchar(50)         NULL
-- 	, cFchControl              datetime            NULL
-- 	)

-- 	/* El objeto 'dbo.AUX_ALBARAN_TOTAL_CISCO' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_ALBARAN_TOTAL_CISCO' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_ALBARAN_TOTAL_CISCO'. */

-- CREATE TABLE dbo.AUX_ALBARAN_TOTAL_CISCO
-- 	( Serial Number                        nvarchar(510)       NULL
-- 	, Product ID                           nvarchar(510)       NULL
-- 	, Product Type                         nvarchar(510)       NULL
-- 	, Product Family                       nvarchar(510)       NULL
-- 	, Valid SN Flag                        nvarchar(510)       NULL
-- 	, End of Product Sale Date             nvarchar(510)       NULL
-- 	, End of New Service Attach Date       nvarchar(510)       NULL
-- 	, LDoS                                 nvarchar(510)       NULL
-- 	, LDOS FY                              float               NULL
-- 	, Product Bill to GU Company Name      nvarchar(510)       NULL
-- 	, Product SO                           float               NULL
-- 	, Install Site GU Company Name         nvarchar(510)       NULL
-- 	, Install Site GU Company Target ID    float               NULL
-- 	, Install Site CSC Company Target Name nvarchar(510)       NULL
-- 	, Install Site Name                    nvarchar(510)       NULL
-- 	, Install Site Address 1               nvarchar(510)       NULL
-- 	, Service SO                           float               NULL
-- 	, Contract #                           float               NULL
-- 	, Contract Type                        nvarchar(510)       NULL
-- 	, Service Level Rollup                 nvarchar(510)       NULL
-- 	, Contract Start Date                  float               NULL
-- 	, Contract End Date                    float               NULL
-- 	, Coverage                             nvarchar(510)       NULL
-- 	, Covered Line Status                  nvarchar(510)       NULL
-- 	, LDOS FY Edit                         float               NULL
-- 	, dFchControl                          datetime            NULL
-- 	)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_BP_Categorias' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_BP_Categorias'. */

-- CREATE TABLE dbo.AUX_BP_Categorias
-- 	( nCodCentralita int             NOT NULL
-- 	, nPosicion      int             NOT NULL
-- 	, nCategoria     smallint        NOT NULL
-- 	, nVersion       smallint        NOT NULL
-- 	, dFchDescarga   datetime        NOT NULL
-- 	, dFchControl    datetime        NOT NULL
-- 	)

-- ALTER TABLE dbo.AUX_BP_Categorias ADD CONSTRAINT PK_AUX_BP_Categorias PRIMARY KEY clustered (nCodCentralita, nPosicion)

-- 	/* El objeto 'dbo.AUX_BP_Centralitas' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.AUX_BP_Centralitas' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_BP_Centralitas' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_BP_Centralitas'. */

-- CREATE TABLE dbo.AUX_BP_Centralitas
-- 	( ex_id          int             NOT NULL
-- 	, ex_name        char(40)        NOT NULL
-- 	, exs_modem_no   float               NULL
-- 	, nCodCentralita int                 NULL
-- 	, dFchDescarga   datetime            NULL
-- 	, dFchControl    datetime            NULL
-- 	)

-- 	/* El objeto 'dbo.AUX_BP_IDQ' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.AUX_BP_IDQ' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_BP_IDQ' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_BP_IDQ'. */

-- CREATE TABLE dbo.AUX_BP_IDQ
-- 	( nCodCentralita int             NOT NULL
-- 	, nPosicion      int             NOT NULL
-- 	, cTipoExtension varchar(2)      NOT NULL
-- 	, nST            smallint        NOT NULL
-- 	, nSN            smallint        NOT NULL
-- 	, nTYPE          smallint        NOT NULL
-- 	, nVersion       smallint        NOT NULL
-- 	, dFchDescarga   datetime        NOT NULL
-- 	, dFchControl    datetime        NOT NULL
-- 	)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_BP_Posiciones' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_BP_Posiciones'. */

-- CREATE TABLE dbo.AUX_BP_Posiciones
-- 	( nCodCentralita int             NOT NULL
-- 	, nPosicion      int             NOT NULL
-- 	, nLinea         int                 NULL
-- 	, nNumCorto      int                 NULL
-- 	, nVersion       smallint        NOT NULL
-- 	, dFchDescarga   datetime        NOT NULL
-- 	, dFchControl    datetime        NOT NULL
-- 	)

-- CREATE  nonclustered INDEX IX_AuxBpPosCorto on dbo.AUX_BP_Posiciones(nNumCorto)

-- CREATE  nonclustered INDEX IX_AuxBpPosLinea on dbo.AUX_BP_Posiciones(nLinea)

-- ALTER TABLE dbo.AUX_BP_Posiciones ADD CONSTRAINT PK_AUX_BP_Posiciones PRIMARY KEY clustered (nCodCentralita, nPosicion)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_BP_THardware' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_BP_THardware'. */

-- CREATE TABLE dbo.AUX_BP_THardware
-- 	( nCodCentralita int             NOT NULL
-- 	, nSlot          int             NOT NULL
-- 	, cNombre        varchar(30)     NOT NULL
-- 	, cROF           varchar(30)     NOT NULL
-- 	, dFchDescarga   datetime        NOT NULL
-- 	, dFchControl    datetime        NOT NULL
-- 	)

-- ALTER TABLE dbo.AUX_BP_THardware ADD CONSTRAINT PK_AUX_BP_THardware PRIMARY KEY clustered (nCodCentralita, nSlot)

-- 	/* El objeto 'dbo.AUX_CMR' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_CMR' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_CMR'. */

-- CREATE TABLE dbo.AUX_CMR
-- 	( cdrRecordType                   varchar(50)         NULL
-- 	, globalCallID_callManagerId      varchar(50)         NULL
-- 	, globalCallID_callId             varchar(50)         NULL
-- 	, orignodeId                      varchar(50)         NULL
-- 	, destnodeId                      varchar(50)         NULL
-- 	, origlegcallIdentifier           varchar(50)         NULL
-- 	, destlegidentifier               varchar(50)         NULL
-- 	, orignumberPacketsSent           varchar(50)         NULL
-- 	, orignumberOctetsSent            varchar(50)         NULL
-- 	, orignumberPacketsReceived       varchar(50)         NULL
-- 	, orignumberOctetsReceived        varchar(50)         NULL
-- 	, orignumberPacketsLost           varchar(50)         NULL
-- 	, destnumberPacketsSent           varchar(50)         NULL
-- 	, destnumberOctetsSent            varchar(50)         NULL
-- 	, destnumberPacketsReceived       varchar(50)         NULL
-- 	, destnumberOctetsReceived        varchar(50)         NULL
-- 	, destnumberPacketsLost           varchar(50)         NULL
-- 	, origjitter                      varchar(50)         NULL
-- 	, destjitter                      varchar(50)         NULL
-- 	, origlatency                     varchar(50)         NULL
-- 	, destlatency                     varchar(50)         NULL
-- 	, pkid                            varchar(50)     NOT NULL
-- 	, origdeviceName                  varchar(50)         NULL
-- 	, destdeviceName                  varchar(50)         NULL
-- 	, origvarVQMetrics                varchar(255)        NULL
-- 	, destvarVQMetrics                varchar(255)        NULL
-- 	, globalCallId_ClusterID          varchar(50)         NULL
-- 	, callingPartyNumber              varchar(50)         NULL
-- 	, finalCalledPartyNumber          varchar(50)         NULL
-- 	, callingPartyNumberPartition     varchar(50)         NULL
-- 	, finalCalledPartyNumberPartition varchar(50)         NULL
-- 	, dFchControl                     datetime            NULL
-- 	)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_CoberturasIbercom' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_CoberturasIbercom'. */

-- CREATE TABLE dbo.AUX_CoberturasIbercom
-- 	( nLinea     int                 NULL
-- 	, nNumCorto  int                 NULL
-- 	, nCobertura int                 NULL
-- 	, nRAI       int                 NULL
-- 	, cExtension char(1)             NULL
-- 	, nCodModelo int                 NULL
-- 	, dFchAlta   datetime            NULL
-- 	)

-- CREATE  nonclustered INDEX IX_nLinea_CoberturasIbercom on dbo.AUX_CoberturasIbercom(nLinea)

-- CREATE  nonclustered INDEX IX_nNumCorto_CoberturasIbercom on dbo.AUX_CoberturasIbercom(nNumCorto)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_ElectronicaTACACS' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_ElectronicaTACACS'. */

-- CREATE TABLE dbo.AUX_ElectronicaTACACS
-- 	( cEquipo     varchar(75)     NOT NULL
-- 	, cIPGestion  varchar(50)     NOT NULL
-- 	, cTipo       varchar(50)         NULL
-- 	, cGrupo      varchar(50)         NULL
-- 	, dFchControl datetime        NOT NULL
-- 	)

-- CREATE  nonclustered INDEX IX_AUX_ElectronicaTACACS on dbo.AUX_ElectronicaTACACS(cEquipo, cIPGestion)

-- 	/* El objeto 'dbo.AUX_EMailUGD' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.AUX_EMailUGD' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_EMailUGD' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_EMailUGD'. */

-- CREATE TABLE dbo.AUX_EMailUGD
-- 	( nIdLista       int             NOT NULL
-- 	, nCodUni        int             NOT NULL
-- 	, cemail         varchar(100)    NOT NULL
-- 	, nIdArea        int             NOT NULL
-- 	, cemailSGT      varchar(100)        NULL
-- 	, cPassword      nchar(20)           NULL
-- 	, nLineaReceptor nchar(50)           NULL
-- 	, neMailReceptor varchar(100)        NULL
-- 	, cReceptor      varchar(100)        NULL
-- 	)

-- 	/* El objeto 'dbo.AUX_EntradaTerminalesNuevos' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_EntradaTerminalesNuevos' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_EntradaTerminalesNuevos'. */

-- CREATE TABLE dbo.AUX_EntradaTerminalesNuevos
-- 	( cIMEI            varchar(50)         NULL
-- 	, cNumSerie        varchar(50)         NULL
-- 	, cMarca           varchar(50)         NULL
-- 	, cModelo          varchar(50)         NULL
-- 	, cAlmacen         varchar(50)         NULL
-- 	, cEstado          varchar(50)         NULL
-- 	, cContrato        varchar(50)         NULL
-- 	, cObservaciones   varchar(255)        NULL
-- 	, cSAT             varchar(50)         NULL
-- 	, cPedido          varchar(50)         NULL
-- 	, cAlbaranOperador varchar(50)         NULL
-- 	, cPedidoOperador  varchar(50)         NULL
-- 	, dFchControl      datetime        NOT NULL
-- 	)

-- 	/* El objeto 'dbo.AUX_EnvioUGD' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.AUX_EnvioUGD' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_EnvioUGD' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_EnvioUGD'. */

-- CREATE TABLE dbo.AUX_EnvioUGD
-- 	( IDAREA    int             NOT NULL
-- 	, nLinea    int             NOT NULL
-- 	, nNumCorto int                 NULL
-- 	, nCodSede  int             NOT NULL
-- 	, nCodUni   int                 NULL
-- 	, dFchEnvio datetime            NULL
-- 	)

-- 	/* El objeto 'dbo.AUX_FACILIDADES_MOVISTAR' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_FACILIDADES_MOVISTAR' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_FACILIDADES_MOVISTAR'. */

-- CREATE TABLE dbo.AUX_FACILIDADES_MOVISTAR
-- 	( GRAN_CUENTA              nvarchar(120)       NULL
-- 	, CIF                      nvarchar(40)        NULL
-- 	, SUBCLIENTE               nvarchar(120)       NULL
-- 	, PLAN_TARIFICACION        nvarchar(120)       NULL
-- 	, LINEA                    int                 NULL
-- 	, ESTADO                   nvarchar(80)        NULL
-- 	, ICC                      nvarchar(100)       NULL
-- 	, IMEI                     nvarchar(80)        NULL
-- 	, MARCA                    nvarchar(60)        NULL
-- 	, MODELO                   nvarchar(100)       NULL
-- 	, CLASE_TARJETA            nvarchar(60)        NULL
-- 	, PERFIL_TARJETA           nvarchar(120)       NULL
-- 	, PUK_1                    nvarchar(80)        NULL
-- 	, PUK_2                    nvarchar(80)        NULL
-- 	, FECHA_ACTIVACION_DUAL    datetime            NULL
-- 	, ICC_a1                   nvarchar(100)       NULL
-- 	, CLASE_TARJETA_a1         nvarchar(60)        NULL
-- 	, PERFIL_TARJETA_a1        nvarchar(120)       NULL
-- 	, PUK_1_a1                 nvarchar(80)        NULL
-- 	, PUK_2_a1                 nvarchar(80)        NULL
-- 	, ICC_a2                   nvarchar(100)       NULL
-- 	, CLASE_TARJETA_a2         nvarchar(60)        NULL
-- 	, PERFIL_TARJETA_a2        nvarchar(120)       NULL
-- 	, PUK_1_a2                 nvarchar(80)        NULL
-- 	, PUK_2_a2                 nvarchar(80)        NULL
-- 	, ICC_a3                   nvarchar(100)       NULL
-- 	, CLASE_TARJETA_a3         nvarchar(60)        NULL
-- 	, PERFIL_TARJETA_a3        nvarchar(120)       NULL
-- 	, PUK_1_a3                 nvarchar(80)        NULL
-- 	, PUK_2_a3                 nvarchar(80)        NULL
-- 	, EXTENSION_CORTA          int                 NULL
-- 	, PERFIL                   nvarchar(120)       NULL
-- 	, LIMITE_CONSUMO_GLOBAL    numeric(18,0)       NULL
-- 	, ALARMA_ADMINISTRADOR     nvarchar(200)       NULL
-- 	, ALARMA_USUARIO_80        nvarchar(200)       NULL
-- 	, ALARMA_USUARIO_100       nvarchar(200)       NULL
-- 	, SERVICIOS_BASICOS        nvarchar(6000)      NULL
-- 	, SERVICIOS_SUPLEMENTARIOS nvarchar(6000)      NULL
-- 	, SERVICIOS_VALOR_ADD      nvarchar(6000)      NULL
-- 	, SERVICIOS_AVANZADOS      nvarchar(6000)      NULL
-- 	, RESTRICCIONES            nvarchar(6000)      NULL
-- 	, dFchCarga                datetime        NOT NULL
-- 	)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_GASTEL_RESUMEN_1' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_GASTEL_RESUMEN_1'. */

-- CREATE TABLE dbo.AUX_GASTEL_RESUMEN_1
-- 	( nAnio           int             NOT NULL
-- 	, nMes            smallint        NOT NULL
-- 	, cNumCorto       varchar(30)     NOT NULL
-- 	, nNumLLamadasEnt int                 NULL
-- 	, nDuracionEnt    numeric(38,20)      NULL
-- 	, nCosteEnt       numeric(38,20)      NULL
-- 	, nNumLLamadasIn  int                 NULL
-- 	, nDuracionIn     numeric(38,20)      NULL
-- 	, nCosteIn        numeric(38,20)      NULL
-- 	, nNumLLamadasMc  int                 NULL
-- 	, nDuracionMc     numeric(38,20)      NULL
-- 	, nCosteMc        numeric(38,20)      NULL
-- 	, nNumLLamadasMv  int                 NULL
-- 	, nDuracionMv     numeric(38,20)      NULL
-- 	, nCosteMv        numeric(38,20)      NULL
-- 	, nNumLLamadasMet int                 NULL
-- 	, nDuracionMet    numeric(38,20)      NULL
-- 	, nCosteMet       numeric(38,20)      NULL
-- 	, nNumLLamadasPro int                 NULL
-- 	, nDuracionPro    numeric(38,20)      NULL
-- 	, nCostePro       numeric(38,20)      NULL
-- 	, nNumLLamadasNac int                 NULL
-- 	, nDuracionNac    numeric(38,20)      NULL
-- 	, nCosteNac       numeric(38,20)      NULL
-- 	, nNumLLamadasInt int                 NULL
-- 	, nDuracionInt    numeric(38,20)      NULL
-- 	, nCosteInt       numeric(38,20)      NULL
-- 	, nNumLLamadasOtr int                 NULL
-- 	, nDuracionOtr    numeric(38,20)      NULL
-- 	, nCosteOtr       numeric(38,20)      NULL
-- 	, dFchDescarga    datetime        NOT NULL
-- 	)

-- ALTER TABLE dbo.AUX_GASTEL_RESUMEN_1 ADD CONSTRAINT PK_AUX_GASTEL_RESUMEN_1 PRIMARY KEY clustered (nAnio, nMes, cNumCorto)

-- 	/* El objeto 'dbo.AUX_GRUPOS_CAPTURA' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.AUX_GRUPOS_CAPTURA' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_GRUPOS_CAPTURA' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_GRUPOS_CAPTURA'. */

-- CREATE TABLE dbo.AUX_GRUPOS_CAPTURA
-- 	( NNUMCORTO int                 NULL
-- 	, GRUPO     int                 NULL
-- 	)

-- 	/* El objeto 'dbo.AUX_GruposIbercom' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_GruposIbercom' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_GruposIbercom'. */

-- CREATE TABLE dbo.AUX_GruposIbercom
-- 	( nLinea    int             NOT NULL
-- 	, nNumCorto int             NOT NULL
-- 	, dFchAlta  datetime        NOT NULL
-- 	)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_HISTORICO_FACILIDADES_MOVISTAR' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_HISTORICO_FACILIDADES_MOVISTAR'. */

-- CREATE TABLE dbo.AUX_HISTORICO_FACILIDADES_MOVISTAR
-- 	( LINEA                    varchar(15)     NOT NULL
-- 	, EXTENSION_CORTA          varchar(15)     NOT NULL
-- 	, IMEI                     varchar(50)     NOT NULL
-- 	, MARCA                    varchar(50)         NULL
-- 	, MODELO                   varchar(50)         NULL
-- 	, ICC                      varchar(50)     NOT NULL
-- 	, ICC_a1                   varchar(50)         NULL
-- 	, ICC_a2                   varchar(50)         NULL
-- 	, ICC_a3                   varchar(50)         NULL
-- 	, SERVICIOS_BASICOS        varchar(-1)         NULL
-- 	, SERVICIOS_SUPLEMENTARIOS varchar(-1)         NULL
-- 	, SERVICIOS_VALOR_ADD      varchar(-1)         NULL
-- 	, SERVICIOS_AVANZADOS      varchar(-1)         NULL
-- 	, RESTRICCIONES            varchar(-1)         NULL
-- 	, dFchCarga                datetime        NOT NULL
-- 	)

-- ALTER TABLE dbo.AUX_HISTORICO_FACILIDADES_MOVISTAR ADD CONSTRAINT PK_AUX_HISTORICO_FACILIDADES_MOVISTAR PRIMARY KEY clustered (LINEA, EXTENSION_CORTA, IMEI, ICC, dFchCarga)

-- 	/* El objeto 'dbo.AUX_Ibercom' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.AUX_Ibercom' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_Ibercom' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_Ibercom'. */

-- CREATE TABLE dbo.AUX_Ibercom
-- 	( Centralita nvarchar(510)       NULL
-- 	, largo      nvarchar(510)       NULL
-- 	)

-- 	/* El objeto 'dbo.AUX_InformeHacienda' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.AUX_InformeHacienda' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_InformeHacienda' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_InformeHacienda'. */

-- CREATE TABLE dbo.AUX_InformeHacienda
-- 	( CODIGO           varchar(20)     NOT NULL
-- 	, ANEXO            varchar(5)      NOT NULL
-- 	, LITERAL          varchar(100)        NULL
-- 	, AGRUPADOR        varchar(100)        NULL
-- 	, LOTE             int             NOT NULL
-- 	, DESCRIPCIÓN     varchar(255)    NOT NULL
-- 	, DETALLES         varchar(-1)     NOT NULL
-- 	, UNIDAD_MEDIDA    varchar(255)    NOT NULL
-- 	, PRECIO           money           NOT NULL
-- 	, ANEXO_INVENTARIO varchar(5)          NULL
-- 	, UNIDADES         int                 NULL
-- 	, BASE_IMPONIBLE   money               NULL
-- 	, CODCAMPUS        int             NOT NULL
-- 	, CAMPUS           varchar(100)    NOT NULL
-- 	, nCodSede         int             NOT NULL
-- 	, cNombre          varchar(100)    NOT NULL
-- 	, FechaConsumo     datetime            NULL
-- 	)

-- 	/* El objeto 'dbo.AUX_InformeHaciendaLiteral' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.AUX_InformeHaciendaLiteral' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_InformeHaciendaLiteral' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_InformeHaciendaLiteral'. */

-- CREATE TABLE dbo.AUX_InformeHaciendaLiteral
-- 	( nCodSede int             NOT NULL
-- 	, LITERAL  varchar(52)     NOT NULL
-- 	)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_LinIbercom' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_LinIbercom'. */

-- CREATE TABLE dbo.AUX_LinIbercom
-- 	( nLinea         int                 NULL
-- 	, nNumCorto      int                 NULL
-- 	, cExtension     char(1)             NULL
-- 	, nCodCentralita int                 NULL
-- 	, nRAI           int                 NULL
-- 	, nLIM           int                 NULL
-- 	, nMagazin       int                 NULL
-- 	, nPosicion      int                 NULL
-- 	, nEquipo        int                 NULL
-- 	, nAdicionalDe   nchar(20)           NULL
-- 	, nCat           int                 NULL
-- 	, dFchAlta       datetime        NOT NULL
-- 	)

-- CREATE  nonclustered INDEX IX_AUX_LinIbercom on dbo.AUX_LinIbercom(nAdicionalDe)

-- CREATE  nonclustered INDEX IX_nLinea_LinIbercom on dbo.AUX_LinIbercom(nLinea)

-- CREATE  nonclustered INDEX IX_nNumCorto_LinIbercom on dbo.AUX_LinIbercom(nNumCorto)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_LogRadiusFailedAuthentications' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_LogRadiusFailedAuthentications'. */

-- CREATE TABLE dbo.AUX_LogRadiusFailedAuthentications
-- 	( dDateTime          datetime        NOT NULL
-- 	, cDate              varchar(50)     NOT NULL
-- 	, cTime              varchar(50)     NOT NULL
-- 	, cMessageType       varchar(50)         NULL
-- 	, cUserName          varchar(100)    NOT NULL
-- 	, cGroupName         varchar(50)     NOT NULL
-- 	, cCallerID          varchar(50)     NOT NULL
-- 	, cAuthenFailureCode varchar(50)         NULL
-- 	, cAuthorFailureCode varchar(50)         NULL
-- 	, cAuthorData        varchar(50)         NULL
-- 	, cNASPort           varchar(50)         NULL
-- 	, cNASIPAddress      varchar(50)         NULL
-- 	, dFchControl        datetime        NOT NULL
-- 	)

-- CREATE  nonclustered INDEX IX_CallerId_LogRadiusFailedAuthentications on dbo.AUX_LogRadiusFailedAuthentications(cCallerID)

-- CREATE  nonclustered INDEX IX_DateTime_LogRadiusFailedAuthentications on dbo.AUX_LogRadiusFailedAuthentications(dDateTime)

-- CREATE  nonclustered INDEX IX_UserName_LogRadiusFailedAuthentications on dbo.AUX_LogRadiusFailedAuthentications(cGroupName, cUserName)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_LogRadiusPassedAuthentications' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_LogRadiusPassedAuthentications'. */

-- CREATE TABLE dbo.AUX_LogRadiusPassedAuthentications
-- 	( dDateTime          datetime        NOT NULL
-- 	, cDate              varchar(50)     NOT NULL
-- 	, cTime              varchar(50)     NOT NULL
-- 	, cMessageType       varchar(50)         NULL
-- 	, cUserName          varchar(50)     NOT NULL
-- 	, cGroupName         varchar(50)     NOT NULL
-- 	, cCallerID          varchar(50)     NOT NULL
-- 	, cNASPort           varchar(50)         NULL
-- 	, cNASIPAddress      varchar(50)         NULL
-- 	, cSourceNAS         varchar(50)         NULL
-- 	, cFilterInformation varchar(50)         NULL
-- 	, dFchControl        datetime        NOT NULL
-- 	)

-- CREATE  nonclustered INDEX IX_CallerId_LogRadiusPassedAuthentications on dbo.AUX_LogRadiusPassedAuthentications(cCallerID)

-- CREATE  nonclustered INDEX IX_DateTime_LogRadiusPassedAuthentications on dbo.AUX_LogRadiusPassedAuthentications(dDateTime)

-- CREATE  nonclustered INDEX IX_UserName_LogRadiusPassedAuthentications on dbo.AUX_LogRadiusPassedAuthentications(cUserName, cGroupName)

-- 	/* El objeto 'dbo.AUX_MacAddressTableDynamic' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_MacAddressTableDynamic' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_MacAddressTableDynamic'. */

-- CREATE TABLE dbo.AUX_MacAddressTableDynamic
-- 	( cDevice     varchar(50)     NOT NULL
-- 	, cVlan       varchar(10)     NOT NULL
-- 	, cMAC        varchar(20)     NOT NULL
-- 	, cType       varchar(10)     NOT NULL
-- 	, cProtocols  varchar(20)         NULL
-- 	, cPort       varchar(20)     NOT NULL
-- 	, dFchControl datetime        NOT NULL
-- 	)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_MODELOSIP' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_MODELOSIP'. */

-- CREATE TABLE dbo.AUX_MODELOSIP
-- 	( NLINEA            int             NOT NULL
-- 	, CMODELOIP         varchar(50)         NULL
-- 	, NCODCENTRALITA    int                 NULL
-- 	, NCODSEDEORIGEN    int                 NULL
-- 	, NCODSEDEDESTINO   int                 NULL
-- 	, CMODELOIP_DETALLE varchar(50)         NULL
-- 	, ncodmodelo        int                 NULL
-- 	)

-- ALTER TABLE dbo.AUX_MODELOSIP ADD CONSTRAINT PK_AUX_MODELOSIP PRIMARY KEY clustered (NLINEA)

-- 	/* El objeto 'dbo.aux_mov_con' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.aux_mov_con' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.aux_mov_con' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.aux_mov_con'. */

-- CREATE TABLE dbo.aux_mov_con
-- 	( LINEA int             NOT NULL
-- 	, sede  int                 NULL
-- 	)

-- 	/* El objeto 'dbo.aux_mov_con_uni' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.aux_mov_con_uni' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.aux_mov_con_uni' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.aux_mov_con_uni'. */

-- CREATE TABLE dbo.aux_mov_con_uni
-- 	( nlinea   int             NOT NULL
-- 	, ncodsede nvarchar(20)        NULL
-- 	)

-- 	/* El objeto 'dbo.aux_mov_sin' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.aux_mov_sin' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.aux_mov_sin' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.aux_mov_sin'. */

-- CREATE TABLE dbo.aux_mov_sin
-- 	( nlinea   int                 NULL
-- 	, ncodsede nvarchar(20)        NULL
-- 	)

-- 	/* El objeto 'dbo.AUX_MOVILESSEDES' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.AUX_MOVILESSEDES' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_MOVILESSEDES' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_MOVILESSEDES'. */

-- CREATE TABLE dbo.AUX_MOVILESSEDES
-- 	( nLineaMovil int                 NULL
-- 	, nCodSede    int                 NULL
-- 	, UGD         nvarchar(20)        NULL
-- 	)

-- 	/* El objeto 'dbo.AUX_OperadorAnexoLote2' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.AUX_OperadorAnexoLote2' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_OperadorAnexoLote2' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_OperadorAnexoLote2'. */

-- CREATE TABLE dbo.AUX_OperadorAnexoLote2
-- 	( NLOTE          nvarchar(510)       NULL
-- 	, NNUIN          nvarchar(510)       NULL
-- 	, NTIPOLINEA     nvarchar(510)       NULL
-- 	, NCODSEDE       int                 NULL
-- 	, NLINEAASOCIADA nvarchar(510)       NULL
-- 	, CTECNOLOGIA    nvarchar(510)       NULL
-- 	, CNEMONICO      nvarchar(510)       NULL
-- 	, NBW1           nvarchar(510)       NULL
-- 	, NBW2           nvarchar(510)       NULL
-- 	, NBWVOZ         nvarchar(510)       NULL
-- 	, IP_LAN         nvarchar(510)       NULL
-- 	, IP_BP          nvarchar(510)       NULL
-- 	, IP_ToIP        nvarchar(510)       NULL
-- 	, DFECHAINSTAL   datetime            NULL
-- 	, DFECHAALTA     datetime            NULL
-- 	)

-- 	/* El objeto 'dbo.AUX_Prime_APsSSID' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_Prime_APsSSID' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_Prime_APsSSID'. */

-- CREATE TABLE dbo.AUX_Prime_APsSSID
-- 	( cAPName              varchar(50)     NOT NULL
-- 	, cEthernetMACAddress  varchar(50)     NOT NULL
-- 	, cBaseRadioMACAddress varchar(50)     NOT NULL
-- 	, cModel               varchar(50)     NOT NULL
-- 	, cControllerName      varchar(50)     NOT NULL
-- 	, cAPGroupName         varchar(50)     NOT NULL
-- 	, cFichero             varchar(50)         NULL
-- 	, dFchControl          datetime        NOT NULL
-- 	)

-- 	/* El objeto 'dbo.AUX_SOFIA_RESUMEN' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.AUX_SOFIA_RESUMEN' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_SOFIA_RESUMEN' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_SOFIA_RESUMEN'. */

-- CREATE TABLE dbo.AUX_SOFIA_RESUMEN
-- 	( NU_TELEFONO      nvarchar(18)    NOT NULL
-- 	, NU_EXTENSION     nvarchar(18)    NOT NULL
-- 	, IMPORTE          float           NOT NULL
-- 	, NUM_LLAMADAS     int             NOT NULL
-- 	, TIPO_TRAFICO     nvarchar(70)    NOT NULL
-- 	, COD_TIPO_TRAFICO nvarchar(6)     NOT NULL
-- 	, FECHA_FACTURA    datetime            NULL
-- 	)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_Supervision' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_Supervision'. */

-- CREATE TABLE dbo.AUX_Supervision
-- 	( nNumCorto    int             NOT NULL
-- 	, nSupervisado int             NOT NULL
-- 	)

-- ALTER TABLE dbo.AUX_Supervision ADD CONSTRAINT PK_AUX_Supervision PRIMARY KEY clustered (nNumCorto, nSupervisado)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_T_ELEMENTO_TARIFICAR' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_T_ELEMENTO_TARIFICAR'. */

-- CREATE TABLE dbo.AUX_T_ELEMENTO_TARIFICAR
-- 	( ID_ELEMENTO_TARIFICAR        numeric(38,0)   NOT NULL
-- 	, ID_CENTRAL                   numeric(38,0)       NULL
-- 	, IDENTIFICADOR_ELEMENTO       varchar(255)        NULL
-- 	, ELEMENTO                     varchar(30)         NULL
-- 	, FECHA_ALTA                   datetime            NULL
-- 	, ID_ENTIDAD                   numeric(38,0)       NULL
-- 	, LOCALIZACION                 varchar(255)        NULL
-- 	, INFORMACION                  varchar(255)        NULL
-- 	, ID_CENTRO_COSTE              numeric(38,0)       NULL
-- 	, CONFIDENCIAL_SN              bit             NOT NULL
-- 	, ENVIA_EMAIL_SN               bit             NOT NULL
-- 	, ID_PERFIL_EMAIL              numeric(38,0)       NULL
-- 	, COSTE_ACUMULADO              float               NULL
-- 	, PORCENTAJE_AUMENTO_D         float               NULL
-- 	, AUTH                         varchar(30)         NULL
-- 	, FECHA_BAJA                   datetime            NULL
-- 	, PUBLICAR_LISTIN_SN           bit                 NULL
-- 	, ID_CATEGORIA_TRAFICO         numeric(38,0)       NULL
-- 	, ID_PAT_CONTROL               numeric(38,0)       NULL
-- 	, ID_PAT_EXCEPCION             numeric(38,0)       NULL
-- 	, ACTIVO_SN                    bit                 NULL
-- 	, GENERADA_APLICACION_SN       bit                 NULL
-- 	, ID_OPERADOR_LOCAL            numeric(38,0)       NULL
-- 	, ID_OPERADOR_LD               numeric(38,0)       NULL
-- 	, ID_PAT_CARACTERISTICA_ELEMEN numeric(38,0)       NULL
-- 	, ID_TIPO_CALCULO_PRECIO       numeric(38,0)       NULL
-- 	, PRECIO_MINIMO                float               NULL
-- 	, ENCRIPTA_LLAMADA_SN          bit                 NULL
-- 	, ENCRIPTA_USUARIO_SN          bit                 NULL
-- 	, ID_OPERADOR                  numeric(38,0)       NULL
-- 	, ID_ELEMENTO_INTERFAZ         numeric(38,0)       NULL
-- 	, SEGUNDA_TAR_LINEA_SN         bit                 NULL
-- 	, VALIDO_SN                    bit                 NULL
-- 	, CONECTADO_SN                 bit                 NULL
-- 	, ID_CATEGORIA_TRAFICO_DES     numeric(18,0)       NULL
-- 	, ID_TIPO_SERVICIO             numeric(9,0)        NULL
-- 	, ID_TECNOLOGIA_SERVICIO       numeric(9,0)        NULL
-- 	, dFchDescarga                 datetime            NULL
-- 	)

-- CREATE  nonclustered INDEX IX_AUX_T_ELEMENTO_TARIFICAR on dbo.AUX_T_ELEMENTO_TARIFICAR(ELEMENTO)

-- ALTER TABLE dbo.AUX_T_ELEMENTO_TARIFICAR ADD CONSTRAINT PK_AUX_T_ELEMENTO_TARIFICAR PRIMARY KEY clustered (ID_ELEMENTO_TARIFICAR)

-- 	/* El objeto 'dbo.AUX_TCategoriaRestringida' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.AUX_TCategoriaRestringida' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_TCategoriaRestringida' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_TCategoriaRestringida'. */

-- CREATE TABLE dbo.AUX_TCategoriaRestringida
-- 	( nLinea         int                 NULL
-- 	, nNumCorto      int                 NULL
-- 	, nCodSede       int                 NULL
-- 	, cTipoExtension nchar(20)           NULL
-- 	, nCodCobertura  int                 NULL
-- 	, nRai           int                 NULL
-- 	, dFechaAviso    smalldatetime       NULL
-- 	)

-- 	/* El objeto 'dbo.AUX_TCCoste' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.AUX_TCCoste' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_TCCoste' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_TCCoste'. */

-- CREATE TABLE dbo.AUX_TCCoste
-- 	( dependencia  varchar(12)         NULL
-- 	, denominacion varchar(60)         NULL
-- 	, CC           varchar(15)         NULL
-- 	, descripcion  varchar(40)         NULL
-- 	, ncoduni      int                 NULL
-- 	)

-- 	/* El objeto 'dbo.AUX_TDeviceNeighbour' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.AUX_TDeviceNeighbour' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_TDeviceNeighbour' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_TDeviceNeighbour'. */

-- CREATE TABLE dbo.AUX_TDeviceNeighbour
-- 	( cDevice          varchar(100)        NULL
-- 	, cIpDevice        varchar(100)        NULL
-- 	, cDeviceNeighbour varchar(8000)       NULL
-- 	, cIpNeighbour     varchar(8000)       NULL
-- 	, cPlatform        varchar(8000)       NULL
-- 	, cCapabilities    varchar(8000)       NULL
-- 	, cInterface       varchar(8000)       NULL
-- 	, cPortID          varchar(8000)       NULL
-- 	, dFchControl      datetime            NULL
-- 	)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_TDiscoveryVLan' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_TDiscoveryVLan'. */

-- CREATE TABLE dbo.AUX_TDiscoveryVLan
-- 	( cDevice     varchar(100)    NOT NULL
-- 	, cIp         varchar(20)     NOT NULL
-- 	, cIdVlan     varchar(10)     NOT NULL
-- 	, cNameVlan   varchar(100)        NULL
-- 	, cStatusVlan varchar(10)         NULL
-- 	, cPorts      varchar(20)         NULL
-- 	, dFchControl datetime        NOT NULL
-- 	)

-- CREATE  nonclustered INDEX IX_AUX_TDiscoveryVLan on dbo.AUX_TDiscoveryVLan(cDevice)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_Teclas' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_Teclas'. */

-- CREATE TABLE dbo.AUX_Teclas
-- 	( nNumCorto      int             NOT NULL
-- 	, nNumProgramado nvarchar(60)    NOT NULL
-- 	, nTecla         int             NOT NULL
-- 	)

-- ALTER TABLE dbo.AUX_Teclas ADD CONSTRAINT PK_AUX_TECLAS PRIMARY KEY clustered (nNumCorto, nNumProgramado, nTecla)

-- 	/* El objeto 'dbo.AUX_TEdificios' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.AUX_TEdificios' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_TEdificios' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_TEdificios'. */

-- CREATE TABLE dbo.AUX_TEdificios
-- 	( nCodEdificio int             NOT NULL
-- 	, cTipoVia     varchar(30)     NOT NULL
-- 	, cNombreCalle varchar(72)     NOT NULL
-- 	, cTipo_Num    varchar(3)      NOT NULL
-- 	, cNumero      varchar(6)      NOT NULL
-- 	, CAL_APP      varchar(2)      NOT NULL
-- 	, cCodPostal   varchar(5)      NOT NULL
-- 	, cPais        varchar(26)     NOT NULL
-- 	, cProvincia   varchar(20)     NOT NULL
-- 	, cMunicipio   varchar(40)     NOT NULL
-- 	, cUsuarioAlta varchar(25)         NULL
-- 	, dFchAlta     datetime            NULL
-- 	)

-- 	/* El objeto 'dbo.AUX_TetraTelemetriaMPR' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_TetraTelemetriaMPR' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_TetraTelemetriaMPR'. */

-- CREATE TABLE dbo.AUX_TetraTelemetriaMPR
-- 	( Time          varchar(50)     NOT NULL
-- 	, LocTxPower    varchar(50)         NULL
-- 	, RemTxPower    varchar(50)         NULL
-- 	, LocRxPower    varchar(50)         NULL
-- 	, RemRxPower    varchar(50)         NULL
-- 	, LocDivRxPower varchar(50)         NULL
-- 	, RemDivRxPower varchar(50)         NULL
-- 	, LocXPD        varchar(50)         NULL
-- 	, RemXPD        varchar(50)         NULL
-- 	, LocMSE        varchar(50)         NULL
-- 	, RemMSE        varchar(50)         NULL
-- 	, TxMod         varchar(50)         NULL
-- 	, RxMod         varchar(50)         NULL
-- 	, LocEPS        varchar(50)         NULL
-- 	, RemEPS        varchar(50)         NULL
-- 	, LocRPS        varchar(50)         NULL
-- 	, RemRPS        varchar(50)         NULL
-- 	, LocTPS        varchar(50)         NULL
-- 	, RemTPS        varchar(50)         NULL
-- 	, LocHBERAlm    varchar(50)         NULL
-- 	, RemHBERAlm    varchar(50)         NULL
-- 	, LocEWAlm      varchar(50)         NULL
-- 	, RemEWAlm      varchar(50)         NULL
-- 	, LocDemFailAlm varchar(50)         NULL
-- 	, RemDemFailAlm varchar(50)         NULL
-- 	, MPRid         varchar(50)     NOT NULL
-- 	, dFchControl   datetime        NOT NULL
-- 	)

-- 	/* El objeto 'dbo.AUX_TFacturasMovil' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.AUX_TFacturasMovil' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_TFacturasMovil' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_TFacturasMovil'. */

-- CREATE TABLE dbo.AUX_TFacturasMovil
-- 	( nLinea       int             NOT NULL
-- 	, nCodConcepto int             NOT NULL
-- 	, nMes         int             NOT NULL
-- 	, nAnno        int             NOT NULL
-- 	, cMes         varchar(12)     NOT NULL
-- 	, cAnno        varchar(4)      NOT NULL
-- 	, nCoste       float               NULL
-- 	, dFecha       smalldatetime       NULL
-- 	)

-- 	/* El objeto 'dbo.AUX_TJefesUnidad' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.AUX_TJefesUnidad' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_TJefesUnidad' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_TJefesUnidad'. */

-- CREATE TABLE dbo.AUX_TJefesUnidad
-- 	( nCodUni              int             NOT NULL
-- 	, cDenominacion        varchar(100)    NOT NULL
-- 	, ceMail               varchar(40)         NULL
-- 	, nJefe                int                 NULL
-- 	, cUsuarioModificacion varchar(10)         NULL
-- 	, dFchModificacion     datetime            NULL
-- 	)

-- 	/* El objeto 'dbo.AUX_TJefesUnidad_copia' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.AUX_TJefesUnidad_copia' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_TJefesUnidad_copia' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_TJefesUnidad_copia'. */

-- CREATE TABLE dbo.AUX_TJefesUnidad_copia
-- 	( nCodUni              int             NOT NULL
-- 	, cDenominacion        varchar(100)    NOT NULL
-- 	, ceMail               varchar(40)         NULL
-- 	, nJefe                int                 NULL
-- 	, cUsuarioModificacion varchar(10)         NULL
-- 	, dFchModificacion     datetime            NULL
-- 	)

-- 	/* El objeto 'dbo.AUX_TLineas' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.AUX_TLineas' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_TLineas' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_TLineas'. */

-- CREATE TABLE dbo.AUX_TLineas
-- 	( nLinea               int             NOT NULL
-- 	, nNumCorto            int                 NULL
-- 	, cNumero              varchar(20)         NULL
-- 	, cNumCorto            varchar(20)         NULL
-- 	, cCodTipLinea         varchar(1)      NOT NULL
-- 	, nCodEstLin           int             NOT NULL
-- 	, nCodTipoLote         smallint            NULL
-- 	, dFechaAlta           datetime            NULL
-- 	, dFechaBaja           datetime            NULL
-- 	, nCodUni              int                 NULL
-- 	, cUbicacion           varchar(80)         NULL
-- 	, cAsignacion          varchar(1)          NULL
-- 	, bVIP                 bit             NOT NULL
-- 	, bListadoVIP          bit             NOT NULL
-- 	, bOcultoDir           bit                 NULL
-- 	, nullbusterCorto      int                 NULL
-- 	, nullbusterNumero     int                 NULL
-- 	, cUsuarioAlta         varchar(25)     NOT NULL
-- 	, dFchAlta             datetime        NOT NULL
-- 	, cUsuarioModificacion varchar(25)         NULL
-- 	, dFchModificacion     datetime            NULL
-- 	)

-- 	/* El objeto 'dbo.AUX_TLinFijos' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.AUX_TLinFijos' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_TLinFijos' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_TLinFijos'. */

-- CREATE TABLE dbo.AUX_TLinFijos
-- 	( nLinea                  int             NOT NULL
-- 	, nCodSubTipoFijo         smallint            NULL
-- 	, nCodUso                 smallint            NULL
-- 	, nCodCentralita          int                 NULL
-- 	, nCodSede                int                 NULL
-- 	, cTipoExtension          char(2)             NULL
-- 	, cObservaciones          varchar(250)        NULL
-- 	, nCodCobertura           smallint            NULL
-- 	, dFchCoberturaBMS        datetime            NULL
-- 	, nCodCoberturaAutorizada int                 NULL
-- 	, dFchCoberturaAutorizada smalldatetime       NULL
-- 	, nCodModelo              int                 NULL
-- 	, nCodModeloCisco         int                 NULL
-- 	, cUserId                 varchar(50)         NULL
-- 	, nLineaCab               int                 NULL
-- 	, nLineaPrincipal         int                 NULL
-- 	, nAccesos                smallint            NULL
-- 	, cNumAdministrativo      varchar(20)         NULL
-- 	, bLocucion               bit             NOT NULL
-- 	, bDesvioExterno          bit             NOT NULL
-- 	, nCodCoberturaHistorica  int                 NULL
-- 	, cParticion              varchar(30)         NULL
-- 	, cAlerting               varchar(50)         NULL
-- 	, nDsvTodas               int                 NULL
-- 	, dHoraInicio             datetime            NULL
-- 	, dHoraFin                datetime            NULL
-- 	, dHoraInicioS            datetime            NULL
-- 	, dHoraFinS               datetime            NULL
-- 	, dHoraInicioD            datetime            NULL
-- 	, dHoraFinD               datetime            NULL
-- 	, dFchMigracion           datetime            NULL
-- 	, dFchReserva             datetime            NULL
-- 	, cEPNMExc                varchar(50)         NULL
-- 	, cUsuarioAlta            varchar(25)     NOT NULL
-- 	, dFchAlta                datetime        NOT NULL
-- 	, cUsuarioModificacion    varchar(25)         NULL
-- 	, dFchModificacion        datetime            NULL
-- 	)

-- 	/* El objeto 'dbo.AUX_TLINFIJOSDISPOSITIVOSIP' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_TLINFIJOSDISPOSITIVOSIP' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_TLINFIJOSDISPOSITIVOSIP'. */

-- CREATE TABLE dbo.AUX_TLINFIJOSDISPOSITIVOSIP
-- 	( nLinea             int                 NULL
-- 	, nCodDispositivosIP int                 NULL
-- 	, dFchBaja           datetime            NULL
-- 	)

-- 	/* El objeto 'dbo.AUX_TLinFijosPuestos' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.AUX_TLinFijosPuestos' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_TLinFijosPuestos' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_TLinFijosPuestos'. */

-- CREATE TABLE dbo.AUX_TLinFijosPuestos
-- 	( nLineaFija int             NOT NULL
-- 	, nCodPto    int             NOT NULL
-- 	, bPrincipal bit             NOT NULL
-- 	)

-- 	/* El objeto 'dbo.AUX_TLinFijosUnidades' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.AUX_TLinFijosUnidades' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_TLinFijosUnidades' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_TLinFijosUnidades'. */

-- CREATE TABLE dbo.AUX_TLinFijosUnidades
-- 	( nLinea     int             NOT NULL
-- 	, nCodUni    int             NOT NULL
-- 	, bOculto    bit             NOT NULL
-- 	, bPrincipal bit             NOT NULL
-- 	)

-- 	/* El objeto 'dbo.AUX_TLinMoviles' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.AUX_TLinMoviles' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_TLinMoviles' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_TLinMoviles'. */

-- CREATE TABLE dbo.AUX_TLinMoviles
-- 	( nLinea               int             NOT NULL
-- 	, cDNI                 varchar(9)          NULL
-- 	, nCodTipMovil         int             NOT NULL
-- 	, cObserva             nvarchar(400)       NULL
-- 	, cPerfil              varchar(50)         NULL
-- 	, cPerfilAutorizado    varchar(50)         NULL
-- 	, cCoberturaNormativa  varchar(50)         NULL
-- 	, cGprs                char(2)             NULL
-- 	, cGprsG               char(2)             NULL
-- 	, cIntranet            char(2)             NULL
-- 	, cIntranetG           char(2)             NULL
-- 	, cMoviMail            char(2)             NULL
-- 	, cMoviMailG           char(2)             NULL
-- 	, cSMS                 char(2)             NULL
-- 	, Blackberry           char(2)             NULL
-- 	, cBlackberryG         char(2)             NULL
-- 	, MMS                  char(2)             NULL
-- 	, cMMSG                char(2)             NULL
-- 	, cEmocion             char(2)             NULL
-- 	, cEmocionG            char(2)             NULL
-- 	, cMultisim            char(2)             NULL
-- 	, cMultisimG           char(2)             NULL
-- 	, cVideoLlamada        char(2)             NULL
-- 	, cVideoLlamadaG       char(2)             NULL
-- 	, nNumFaxAsoc          int                 NULL
-- 	, nCodTarifaPlana      int                 NULL
-- 	, nCodTarifa           smallint            NULL
-- 	, cUsuarioIntranet     varchar(20)         NULL
-- 	, cIPm2m               nvarchar(32)        NULL
-- 	, cSoloEmergencia      char(2)             NULL
-- 	, bHorarioExtendido    bit             NOT NULL
-- 	, bPrincipal           bit             NOT NULL
-- 	, nCodSede             int                 NULL
-- 	, cUsuarioAlta         varchar(25)     NOT NULL
-- 	, dFchAlta             datetime        NOT NULL
-- 	, cUsuarioModificacion varchar(25)         NULL
-- 	, dFchModificacion     datetime            NULL
-- 	)

-- 	/* El objeto 'dbo.AUX_TLINMOVILESTARIFAS' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.AUX_TLINMOVILESTARIFAS' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_TLINMOVILESTARIFAS' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_TLINMOVILESTARIFAS'. */

-- CREATE TABLE dbo.AUX_TLINMOVILESTARIFAS
-- 	( nLinea         int             NOT NULL
-- 	, nCodTarifa     int             NOT NULL
-- 	, dFchAltaTarifa datetime        NOT NULL
-- 	)

-- 	/* El objeto 'dbo.AUX_TPersonas' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.AUX_TPersonas' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_TPersonas' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_TPersonas'. */

-- CREATE TABLE dbo.AUX_TPersonas
-- 	( cDNI          varchar(9)      NOT NULL
-- 	, cLetraDNI     varchar(1)          NULL
-- 	, ncodtipoper   int             NOT NULL
-- 	, ccodtipodoc   varchar(1)          NULL
-- 	, cape1         varchar(40)     NOT NULL
-- 	, cape2         varchar(40)     NOT NULL
-- 	, cnombre       varchar(40)     NOT NULL
-- 	, ncoduni       int                 NULL
-- 	, nempnumper    int                 NULL
-- 	, cempcodsit    varchar(2)          NULL
-- 	, cempcodmod    varchar(2)          NULL
-- 	, cempcategoria varchar(4)          NULL
-- 	, cempgrupotit  varchar(2)          NULL
-- 	, cempgrupoper  varchar(1)          NULL
-- 	, cempareaper   varchar(2)          NULL
-- 	, cempdivision  varchar(4)          NULL
-- 	, nemppuesto    int                 NULL
-- 	, cempnompuesto varchar(40)         NULL
-- 	, nempnivel     int                 NULL
-- 	, cextempresa   varchar(40)         NULL
-- 	, cextcargo     varchar(40)         NULL
-- 	, cextrelacion  varchar(40)         NULL
-- 	, cemail        varchar(40)         NULL
-- 	, cUsuarioAYRE  varchar(9)          NULL
-- 	)

-- 	/* El objeto 'dbo.AUX_TPuestos' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.AUX_TPuestos' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_TPuestos' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_TPuestos'. */

-- CREATE TABLE dbo.AUX_TPuestos
-- 	( nEmpPuesto    int             NOT NULL
-- 	, cDenominacion varchar(40)         NULL
-- 	, CoTipoPto     varchar(1)          NULL
-- 	, nCodUni       int                 NULL
-- 	, cCodAdc       varchar(12)         NULL
-- 	, cGrupoTpo     varchar(12)         NULL
-- 	, nNivelPto     varchar(2)          NULL
-- 	, nCodUniFunc   int                 NULL
-- 	)

-- 	/* El objeto 'dbo.AUX_TPuestos_411' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.AUX_TPuestos_411' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_TPuestos_411' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_TPuestos_411'. */

-- CREATE TABLE dbo.AUX_TPuestos_411
-- 	( nEmpPuesto    int             NOT NULL
-- 	, cDenominacion varchar(40)         NULL
-- 	, CoTipoPto     varchar(1)          NULL
-- 	, nCodUni       int                 NULL
-- 	, cCodAdc       varchar(12)         NULL
-- 	, cGrupoTpo     varchar(12)         NULL
-- 	, nNivelPto     varchar(2)          NULL
-- 	, nCodUniFunc   int                 NULL
-- 	)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_TraficoFactura' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_TraficoFactura'. */

-- CREATE TABLE dbo.AUX_TraficoFactura
-- 	( FECHA       datetime        NOT NULL
-- 	, CODIGO      nvarchar(510)   NOT NULL
-- 	, UNIDADES    numeric(18,2)   NOT NULL
-- 	, dFchControl datetime        NOT NULL
-- 	)

-- ALTER TABLE dbo.AUX_TraficoFactura ADD CONSTRAINT PK_AUX_TraficoFactura PRIMARY KEY clustered (FECHA, CODIGO, UNIDADES)

-- 	/* El objeto 'dbo.AUX_TRangoIPdisp' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.AUX_TRangoIPdisp' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_TRangoIPdisp' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_TRangoIPdisp'. */

-- CREATE TABLE dbo.AUX_TRangoIPdisp
-- 	( ID                  smallint            NULL
-- 	, RED                 nvarchar(100)       NULL
-- 	, RED_ANUNCIADA       nvarchar(100)       NULL
-- 	, GATEWAY             float               NULL
-- 	, INTERFAZ            nvarchar(100)       NULL
-- 	, TIPO                nvarchar(4)         NULL
-- 	, TIPO_VLAN           nvarchar(4)         NULL
-- 	, GRUPO               nvarchar(100)       NULL
-- 	, NOMBRE_GATEWAY      nvarchar(100)       NULL
-- 	, SEDE                int                 NULL
-- 	, SEDE_DIRECCION      nvarchar(510)       NULL
-- 	, FUNCION_RED         nvarchar(max)        NULL
-- 	, SEDE_ALTERNATIVA    int                 NULL
-- 	, USUARIOALTA         varchar(10)         NULL
-- 	, FCHALTA             smalldatetime       NULL
-- 	, USUARIOMODIFICACION varchar(10)         NULL
-- 	, FCHMODIFICACION     smalldatetime       NULL
-- 	)

-- 	/* El objeto 'dbo.AUX_TSedes' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.AUX_TSedes' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_TSedes' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_TSedes'. */

-- CREATE TABLE dbo.AUX_TSedes
-- 	( nCodSede               int             NOT NULL
-- 	, nCodUni                int                 NULL
-- 	, cNombre                varchar(100)    NOT NULL
-- 	, cDireccion             varchar(100)        NULL
-- 	, cCodPostal             varchar(5)          NULL
-- 	, cPersonaContacto       varchar(50)         NULL
-- 	, cTelefonoContacto      varchar(10)         NULL
-- 	, cCortoFijo             nchar(10)           NULL
-- 	, cMovilContacto         nchar(20)           NULL
-- 	, cCortoMovil            nchar(10)           NULL
-- 	, cFax                   varchar(10)         NULL
-- 	, ceMailContacto         varchar(50)         NULL
-- 	, nPCs                   int                 NULL
-- 	, nCriticidad            int             NOT NULL
-- 	, bCoincidenciaSAP       bit                 NULL
-- 	, nCodEstado             int                 NULL
-- 	, cPersonaContactoObserv varchar(-1)         NULL
-- 	, nDistrito              int                 NULL
-- 	, nZona                  smallint            NULL
-- 	, nCodEdificio           int                 NULL
-- 	, bSedeToIP              bit                 NULL
-- 	, bsedeprincipalvoz      bit                 NULL
-- 	, bsedeprincipaldatos    bit                 NULL
-- 	, nAscensor              int                 NULL
-- 	, nCodCampus             int                 NULL
-- 	, nCodLinDatosCampus     int                 NULL
-- 	, cDevicePool            varchar(40)         NULL
-- 	, cLocation              varchar(30)         NULL
-- 	, nIdGrTACACS            int                 NULL
-- 	, nIdAcronimo            int                 NULL
-- 	, nNodo                  int                 NULL
-- 	, nCodGestion            int                 NULL
-- 	, cLatitud               varchar(50)         NULL
-- 	, cLongitud              varchar(50)         NULL
-- 	, cUsuarioAlta           varchar(25)     NOT NULL
-- 	, dFchAlta               datetime        NOT NULL
-- 	, cUsuarioModificacion   varchar(25)         NULL
-- 	, dFchModificacion       datetime            NULL
-- 	)

-- 	/* El objeto 'dbo.AUX_TTarjetasMovil' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.AUX_TTarjetasMovil' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_TTarjetasMovil' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_TTarjetasMovil'. */

-- CREATE TABLE dbo.AUX_TTarjetasMovil
-- 	( cICC                 varchar(19)     NOT NULL
-- 	, nLineaMovil          int             NOT NULL
-- 	, nCodTipTarj          int             NOT NULL
-- 	, dFechaEntrega        datetime            NULL
-- 	, dFechaDevolu         datetime            NULL
-- 	, cObservaciones       varchar(100)        NULL
-- 	, bDuplo               bit             NOT NULL
-- 	, cUsuarioAlta         varchar(10)         NULL
-- 	, dFchAlta             smalldatetime       NULL
-- 	, cUsuarioModificacion varchar(10)         NULL
-- 	, dFchModificacion     smalldatetime       NULL
-- 	)

-- 	/* El objeto 'dbo.AUX_TTerminalesMovil' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.AUX_TTerminalesMovil' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_TTerminalesMovil' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_TTerminalesMovil'. */

-- CREATE TABLE dbo.AUX_TTerminalesMovil
-- 	( nId                     int             NOT NULL
-- 	, cImei                   varchar(15)         NULL
-- 	, cSerie                  varchar(50)         NULL
-- 	, nCodModelo              int             NOT NULL
-- 	, cContrato               varchar(50)         NULL
-- 	, cIdAfaria               varchar(20)         NULL
-- 	, nIdGrupo                int                 NULL
-- 	, dFchBloqueo             datetime            NULL
-- 	, nCodEstado              int             NOT NULL
-- 	, nCodAlmacen             int             NOT NULL
-- 	, nLinea                  int                 NULL
-- 	, nLinea2                 int                 NULL
-- 	, cDNI                    varchar(9)          NULL
-- 	, nCodUni                 int                 NULL
-- 	, cObservaciones          varchar(-1)         NULL
-- 	, dFchUltimaPreasignacion datetime            NULL
-- 	, dFchUltimaAsignacion    datetime            NULL
-- 	, dFchBoxes               datetime            NULL
-- 	, dFchPendiente           datetime            NULL
-- 	, dFchPerdido             datetime            NULL
-- 	, bSAT                    bit                 NULL
-- 	, nIdPedido               int                 NULL
-- 	, cUsuarioAlta            varchar(25)     NOT NULL
-- 	, dFchAlta                datetime        NOT NULL
-- 	, cUsuarioModificacion    varchar(25)         NULL
-- 	, dFchModificacion        datetime            NULL
-- 	)

-- 	/* El objeto 'dbo.AUX_TUnidades' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.AUX_TUnidades' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_TUnidades' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_TUnidades'. */

-- CREATE TABLE dbo.AUX_TUnidades
-- 	( nCodUni        int             NOT NULL
-- 	, nCodUniPadre   int                 NULL
-- 	, cDescBreve     varchar(50)         NULL
-- 	, cDenominacion  varchar(100)    NOT NULL
-- 	, cCodCenCoste   varchar(10)         NULL
-- 	, cDescAdicional varchar(80)         NULL
-- 	, cDir           varchar(120)        NULL
-- 	, cMunicipio     varchar(60)         NULL
-- 	, cCodPostal     varchar(5)          NULL
-- 	, ceMail         varchar(40)         NULL
-- 	, nIdArea        int                 NULL
-- 	, nOrder         int                 NULL
-- 	, nOrderArea     nvarchar(100)       NULL
-- 	, numorder       int                 NULL
-- 	, ceMailUGD      varchar(60)         NULL
-- 	)

-- 	/* El objeto 'dbo.AUX_TUsuariosUITEL' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.AUX_TUsuariosUITEL' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_TUsuariosUITEL' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_TUsuariosUITEL'. */

-- CREATE TABLE dbo.AUX_TUsuariosUITEL
-- 	( cDNI        varchar(9)      NOT NULL
-- 	, nCodUni     int             NOT NULL
-- 	, bActivo     bit             NOT NULL
-- 	, dFchControl datetime        NOT NULL
-- 	)

-- 	/* El objeto 'dbo.AUX_UAF_Telefonos' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.AUX_UAF_Telefonos' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_UAF_Telefonos' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_UAF_Telefonos'. */

-- CREATE TABLE dbo.AUX_UAF_Telefonos
-- 	( Nº Bien                      nvarchar(510)       NULL
-- 	, B#Ppal#                       nvarchar(510)       NULL
-- 	, Nº Serie                     nvarchar(510)       NULL
-- 	, T#Bien                        nvarchar(510)       NULL
-- 	, T#Bien - Descripción         nvarchar(510)       NULL
-- 	, Modelo                        nvarchar(510)       NULL
-- 	, Modelo - Descripción         nvarchar(510)       NULL
-- 	, Fabric#                       nvarchar(510)       NULL
-- 	, Fabric# - Descripción        nvarchar(510)       NULL
-- 	, Ubicación                    nvarchar(510)       NULL
-- 	, Ubicación - Descripción     nvarchar(510)       NULL
-- 	, ¿Contab#?                    nvarchar(510)       NULL
-- 	, Registro                      float               NULL
-- 	, Fch#Albarán                  nvarchar(510)       NULL
-- 	, Fecha Inv#                    nvarchar(510)       NULL
-- 	, Neto                          float               NULL
-- 	, Fin Amort#                    nvarchar(510)       NULL
-- 	, Alb#Entrega                   nvarchar(510)       NULL
-- 	, Expte#Compra                  nvarchar(510)       NULL
-- 	, Direc# de Sede                nvarchar(510)       NULL
-- 	, Direc# de Sede - Descripción nvarchar(510)       NULL
-- 	, Nº Inventario                nvarchar(510)       NULL
-- 	, Bloqueado                     float               NULL
-- 	, Despacho                      nvarchar(510)       NULL
-- 	, Instalado                     nvarchar(510)       NULL
-- 	, Bien asociado                 nvarchar(510)       NULL
-- 	, Sede                          nvarchar(510)       NULL
-- 	, Sede - Descripción           nvarchar(510)       NULL
-- 	, Ult# contacto                 nvarchar(510)       NULL
-- 	)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_vAlgoritmoDeviceEndUser' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_vAlgoritmoDeviceEndUser'. */

-- CREATE TABLE dbo.AUX_vAlgoritmoDeviceEndUser
-- 	( nnumcorto          int                 NULL
-- 	, nlinea             int             NOT NULL
-- 	, njefe              int                 NULL
-- 	, nempnivel          int                 NULL
-- 	, numper             int                 NULL
-- 	, ncoduni            int                 NULL
-- 	, ceMail             varchar(8000)       NULL
-- 	, cUsuarioAYRE       varchar(9)          NULL
-- 	, ncoddispositivosip int             NOT NULL
-- 	, ncodsubtipofijo    smallint            NULL
-- 	, cmac               varchar(15)     NOT NULL
-- 	)

-- ALTER TABLE dbo.AUX_vAlgoritmoDeviceEndUser ADD CONSTRAINT PK_AUX_vAlgoritmoDeviceEndUser PRIMARY KEY clustered (nlinea, cmac)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_vAlgoritmoLabels' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_vAlgoritmoLabels'. */

-- CREATE TABLE dbo.AUX_vAlgoritmoLabels
-- 	( nnumcorto    int             NOT NULL
-- 	, nlinea       int             NOT NULL
-- 	, casignacion  varchar(1)      NOT NULL
-- 	, bocultodir   bit                 NULL
-- 	, tipo_display int             NOT NULL
-- 	, nempnivel    int                 NULL
-- 	, ncoduni      int                 NULL
-- 	, display      varchar(124)        NULL
-- 	, dFchControl  datetime            NULL
-- 	)

-- ALTER TABLE dbo.AUX_vAlgoritmoLabels ADD CONSTRAINT PK_AUX_vAlgoritmoLabels PRIMARY KEY clustered (nlinea)

-- 	/* El objeto 'dbo.AUX_vAlgoritmoLabels2' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.AUX_vAlgoritmoLabels2' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_vAlgoritmoLabels2' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_vAlgoritmoLabels2'. */

-- CREATE TABLE dbo.AUX_vAlgoritmoLabels2
-- 	( nnumcorto    int             NOT NULL
-- 	, nlinea       int             NOT NULL
-- 	, casignacion  varchar(1)      NOT NULL
-- 	, bocultodir   bit                 NULL
-- 	, tipo_display int             NOT NULL
-- 	, nempnivel    int                 NULL
-- 	, ncoduni      int                 NULL
-- 	, display      varchar(124)        NULL
-- 	)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_vEndUserExtension' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_vEndUserExtension'. */

-- CREATE TABLE dbo.AUX_vEndUserExtension
-- 	( UsuarioAYRE nvarchar(60)        NULL
-- 	, EndUser     nvarchar(60)        NULL
-- 	, extension   int             NOT NULL
-- 	, particion   nvarchar(60)        NULL
-- 	)

-- ALTER TABLE dbo.AUX_vEndUserExtension ADD CONSTRAINT PK_AUX_vEndUserExtension PRIMARY KEY clustered (extension)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_vistaalerting' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_vistaalerting'. */

-- CREATE TABLE dbo.AUX_vistaalerting
-- 	( extension    nvarchar(60)    NOT NULL
-- 	, particion    nvarchar(100)   NOT NULL
-- 	, alertingname nvarchar(100)   NOT NULL
-- 	, fecha        smalldatetime   NOT NULL
-- 	)

-- ALTER TABLE dbo.AUX_vistaalerting ADD CONSTRAINT PK_AUX_vistaalerting PRIMARY KEY clustered (extension, particion, fecha)

-- 	/* El objeto 'dbo.AUX_vistaconsumo' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.AUX_vistaconsumo' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_vistaconsumo' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_vistaconsumo'. */

-- CREATE TABLE dbo.AUX_vistaconsumo
-- 	( extension nvarchar(60)        NULL
-- 	, particion nvarchar(100)       NULL
-- 	, consumo   nvarchar(200)   NOT NULL
-- 	)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_vistalabels' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_vistalabels'. */

-- CREATE TABLE dbo.AUX_vistalabels
-- 	( extension nvarchar(20)    NOT NULL
-- 	, particion nvarchar(100)   NOT NULL
-- 	, device    nvarchar(100)   NOT NULL
-- 	, display   nvarchar(100)   NOT NULL
-- 	, linetext  nvarchar(100)   NOT NULL
-- 	, fecha     datetime        NOT NULL
-- 	)

-- ALTER TABLE dbo.AUX_vistalabels ADD CONSTRAINT PK_AUX_vistalabels PRIMARY KEY clustered (extension, particion, device, fecha)

-- 	/* El objeto 'dbo.AUX_vmultisededatos' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.AUX_vmultisededatos' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_vmultisededatos' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_vmultisededatos'. */

-- CREATE TABLE dbo.AUX_vmultisededatos
-- 	( cabecera              int             NOT NULL
-- 	, ncodtipdatos_cabecera smallint        NOT NULL
-- 	, ncodsede              int             NOT NULL
-- 	, bprincipal            int             NOT NULL
-- 	, nivel                 int             NOT NULL
-- 	, nombre_sede           varchar(100)        NULL
-- 	, direccion_sede        varchar(100)        NULL
-- 	, vvlan_def             int                 NULL
-- 	, hijos                 int                 NULL
-- 	)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_vprioridadsede' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_vprioridadsede'. */

-- CREATE TABLE dbo.AUX_vprioridadsede
-- 	( ncodsede  int             NOT NULL
-- 	, prioridad int             NOT NULL
-- 	)

-- ALTER TABLE dbo.AUX_vprioridadsede ADD CONSTRAINT PK_AUX_vprioridadsede PRIMARY KEY clustered (ncodsede)

-- 	/* El objeto 'dbo.AUX_WifiClientesUnicos' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_WifiClientesUnicos' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_WifiClientesUnicos'. */

-- CREATE TABLE dbo.AUX_WifiClientesUnicos
-- 	( cAPName     varchar(50)         NULL
-- 	, cSSID       varchar(50)         NULL
-- 	, dLastSeen   varchar(50)         NULL
-- 	, cUser       varchar(20)         NULL
-- 	, cMacAdress  varchar(30)         NULL
-- 	, cVendor     varchar(30)         NULL
-- 	, cIPAdress   varchar(20)         NULL
-- 	, cState      varchar(20)         NULL
-- 	, cProtocol   varchar(20)         NULL
-- 	, dFchControl datetime        NOT NULL
-- 	)

-- 	/* El objeto 'dbo.AUX_WifiTraficoTotal' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.AUX_WifiTraficoTotal' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AUX_WifiTraficoTotal'. */

-- CREATE TABLE dbo.AUX_WifiTraficoTotal
-- 	( cSSID       nvarchar(100)       NULL
-- 	, dEventTime  nvarchar(100)       NULL
-- 	, fUpstream   nvarchar(100)       NULL
-- 	, fDownstream nvarchar(100)       NULL
-- 	, dFchControl datetime        NOT NULL
-- 	)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.AuxDiscoveredEDR' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AuxDiscoveredEDR'. */

-- CREATE TABLE dbo.AuxDiscoveredEDR
-- 	( cNombre     varchar(100)    NOT NULL
-- 	, cDeviceID   varchar(100)    NOT NULL
-- 	, cIpAddress  varchar(1000)       NULL
-- 	, cPlatform   varchar(1000)       NULL
-- 	, cInterface  varchar(1000)       NULL
-- 	, cFichero    varchar(1000)       NULL
-- 	, dFchControl datetime        NOT NULL
-- 	)

-- CREATE  nonclustered INDEX IX_AuxDiscoveredEDR_DeviceId on dbo.AuxDiscoveredEDR(cDeviceID)

-- CREATE  nonclustered INDEX IX_AuxDiscoveredEDR_Nombre on dbo.AuxDiscoveredEDR(cNombre)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.AXL_CallingSearchSpace' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AXL_CallingSearchSpace'. */

-- CREATE TABLE dbo.AXL_CallingSearchSpace
-- 	( cNombre     varchar(50)     NOT NULL
-- 	, dFchControl datetime        NOT NULL
-- 	)

-- ALTER TABLE dbo.AXL_CallingSearchSpace ADD CONSTRAINT PK_AXL_CallingSearchSpace PRIMARY KEY clustered (cNombre)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.AXL_DeviceOptions' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AXL_DeviceOptions'. */

-- CREATE TABLE dbo.AXL_DeviceOptions
-- 	( cDeviceName           nvarchar(100)   NOT NULL
-- 	, cPhoneButtonTemplate  nvarchar(510)       NULL
-- 	, cFeatureControlPolicy nvarchar(510)       NULL
-- 	, dFchControl           datetime        NOT NULL
-- 	)

-- ALTER TABLE dbo.AXL_DeviceOptions ADD CONSTRAINT PK_AXL_DeviceOptions PRIMARY KEY clustered (cDeviceName)

	/* Ninguna clave externa hace referencia a la tabla 'dbo.AXL_DevicePool' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AXL_DevicePool'. */

CREATE TABLE dbo.AXL_DevicePool
	( cDevicePool varchar(255)    NOT NULL
	, cCMG        varchar(50)         NULL
	, dFchControl datetime        NOT NULL
	)

ALTER TABLE dbo.AXL_DevicePool ADD CONSTRAINT PK_AXL_DevicePool PRIMARY KEY clustered (cDevicePool)

-- 	/* El objeto 'dbo.AXL_DevicePool_bck160211' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.AXL_DevicePool_bck160211' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.AXL_DevicePool_bck160211' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AXL_DevicePool_bck160211'. */

-- CREATE TABLE dbo.AXL_DevicePool_bck160211
-- 	( cDevicePool varchar(255)    NOT NULL
-- 	, dFchControl datetime        NOT NULL
-- 	)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.AXL_Devices' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AXL_Devices'. */

-- CREATE TABLE dbo.AXL_Devices
-- 	( cDeviceName             nvarchar(100)   NOT NULL
-- 	, cDescription            nvarchar(200)       NULL
-- 	, cModelo                 nvarchar(100)       NULL
-- 	, cSpecialLoadInformation nvarchar(100)       NULL
-- 	, cDevicePool             nvarchar(100)       NULL
-- 	, cProtocol               nvarchar(100)       NULL
-- 	, cCSS                    nvarchar(100)       NULL
-- 	, cClass                  nvarchar(100)       NULL
-- 	, dFchControl             datetime        NOT NULL
-- 	)

-- ALTER TABLE dbo.AXL_Devices ADD CONSTRAINT PK_AXL_Devices PRIMARY KEY clustered (cDeviceName)

-- 	/* El objeto 'dbo.AXL_DevicesDialRules' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.AXL_DevicesDialRules' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AXL_DevicesDialRules'. */

-- CREATE TABLE dbo.AXL_DevicesDialRules
-- 	( cDeviceName varchar(50)     NOT NULL
-- 	, cDialRule   varchar(50)     NOT NULL
-- 	, dFchControl datetime        NOT NULL
-- 	)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.AXL_EndPoints' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AXL_EndPoints'. */

-- CREATE TABLE dbo.AXL_EndPoints
-- 	( cExt        nvarchar(100)       NULL
-- 	, cEndPoint   nvarchar(100)   NOT NULL
-- 	, cCSS        nvarchar(100)       NULL
-- 	, dFchControl datetime            NULL
-- 	)

-- CREATE  nonclustered INDEX IX_AXL_Ext on dbo.AXL_EndPoints(cExt)

-- ALTER TABLE dbo.AXL_EndPoints ADD CONSTRAINT PK_AXL_EndPoints PRIMARY KEY clustered (cEndPoint)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.AXL_EndUser' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AXL_EndUser'. */

-- CREATE TABLE dbo.AXL_EndUser
-- 	( cEndUser    nvarchar(100)   NOT NULL
-- 	, cFirstName  nvarchar(200)       NULL
-- 	, cLastName   nvarchar(200)       NULL
-- 	, cMailId     nvarchar(200)       NULL
-- 	, dFchControl datetime        NOT NULL
-- 	)

-- ALTER TABLE dbo.AXL_EndUser ADD CONSTRAINT PK_AXL_EndUser PRIMARY KEY clustered (cEndUser)

-- 	/* El objeto 'dbo.AXL_EndUserDevice' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.AXL_EndUserDevice' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AXL_EndUserDevice'. */

-- CREATE TABLE dbo.AXL_EndUserDevice
-- 	( cDeviceName nvarchar(100)   NOT NULL
-- 	, cEndUser    nvarchar(100)   NOT NULL
-- 	, dFchControl datetime        NOT NULL
-- 	)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.AXL_EndUserNumplan' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AXL_EndUserNumplan'. */

-- CREATE TABLE dbo.AXL_EndUserNumplan
-- 	( cExt        nvarchar(100)   NOT NULL
-- 	, cEndUser    nvarchar(100)   NOT NULL
-- 	, dFchControl datetime        NOT NULL
-- 	)

-- ALTER TABLE dbo.AXL_EndUserNumplan ADD CONSTRAINT PK_AXL_EndUserNumplan PRIMARY KEY clustered (cExt, cEndUser)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.AXL_EndUserNumplanDevice' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AXL_EndUserNumplanDevice'. */

-- CREATE TABLE dbo.AXL_EndUserNumplanDevice
-- 	( cExt        nvarchar(100)   NOT NULL
-- 	, cEndUser    nvarchar(100)   NOT NULL
-- 	, cDeviceName nvarchar(100)   NOT NULL
-- 	, dFchControl datetime        NOT NULL
-- 	)

-- ALTER TABLE dbo.AXL_EndUserNumplanDevice ADD CONSTRAINT PK_AXL_EndUserNumplanDevice PRIMARY KEY clustered (cExt, cDeviceName, cEndUser)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.AXL_ForwardAll' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AXL_ForwardAll'. */

-- CREATE TABLE dbo.AXL_ForwardAll
-- 	( cNumCorto   nvarchar(100)   NOT NULL
-- 	, cNumDesvio  nvarchar(100)   NOT NULL
-- 	, cCSSForward nvarchar(100)       NULL
-- 	, dFchControl datetime        NOT NULL
-- 	)

-- CREATE  nonclustered INDEX IX_AXL_ForwardAll on dbo.AXL_ForwardAll(cNumCorto, cNumDesvio)

-- 	/* No hay ninguna restricción definida en el objeto 'dbo.AXL_ForwardBusy' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.AXL_ForwardBusy' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AXL_ForwardBusy'. */

-- CREATE TABLE dbo.AXL_ForwardBusy
-- 	( cNumCorto             nvarchar(100)   NOT NULL
-- 	, cBusyInternal         nvarchar(100)       NULL
-- 	, cBusyExternal         nvarchar(100)       NULL
-- 	, cNoAnswerInternal     nvarchar(100)       NULL
-- 	, cNoAnswerExternal     nvarchar(100)       NULL
-- 	, cNoCoverageInternal   nvarchar(100)       NULL
-- 	, cNoCoverageExternal   nvarchar(100)       NULL
-- 	, cUnregisteredInternal nvarchar(100)       NULL
-- 	, cUnregisteredExternal nvarchar(100)       NULL
-- 	, dFchControl           datetime        NOT NULL
-- 	)

-- CREATE  nonclustered INDEX IX_AXL_ForwardBusy on dbo.AXL_ForwardBusy(cNumCorto, cBusyInternal)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.AXL_JTapiCandadoControlledDevices' o el usuario no tiene permisos para hacer referencia a tablas. */

-- CREATE TABLE dbo.AXL_JTapiCandadoControlledDevices
-- 	( cDeviceName nvarchar(100)   NOT NULL
-- 	, cMAC        nvarchar(4000)      NULL
-- 	, dFchControl datetime        NOT NULL
-- 	)

-- ALTER TABLE dbo.AXL_JTapiCandadoControlledDevices ADD CONSTRAINT PK_AXL_JTapiCandadoControlledDevices PRIMARY KEY clustered (cDeviceName)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.AXL_LineGroup' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AXL_LineGroup'. */

-- CREATE TABLE dbo.AXL_LineGroup
-- 	( nNumCortoCab bigint          NOT NULL
-- 	, cNombreGrupo varchar(255)        NULL
-- 	, nNumCorto    bigint          NOT NULL
-- 	, dFchControl  datetime        NOT NULL
-- 	)

-- ALTER TABLE dbo.AXL_LineGroup ADD CONSTRAINT PK_AXL_LineGroup PRIMARY KEY clustered (nNumCortoCab, nNumCorto)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.AXL_Modules' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AXL_Modules'. */

-- CREATE TABLE dbo.AXL_Modules
-- 	( cDeviceName  nvarchar(100)   NOT NULL
-- 	, nModuleIndex int                 NULL
-- 	, dFchControl  datetime        NOT NULL
-- 	)

-- ALTER TABLE dbo.AXL_Modules ADD CONSTRAINT PK_AXL_Modules PRIMARY KEY clustered (cDeviceName)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.AXL_NumPlan' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AXL_NumPlan'. */

-- CREATE TABLE dbo.AXL_NumPlan
-- 	( cExt          nvarchar(100)       NULL
-- 	, cDeviceName   nchar(100)          NULL
-- 	, cPartition    nvarchar(100)       NULL
-- 	, cCSS          nvarchar(100)       NULL
-- 	, cAlertingName nvarchar(100)       NULL
-- 	, cClass        nvarchar(100)       NULL
-- 	, cPatternUsage nvarchar(100)       NULL
-- 	, dFchControl   datetime        NOT NULL
-- 	)

-- CREATE  nonclustered INDEX IX_AXL_NumPlan_Device on dbo.AXL_NumPlan(cDeviceName)

-- CREATE  nonclustered INDEX IX_AXL_NumPlan_Ext on dbo.AXL_NumPlan(cExt)

-- 	/* El objeto 'dbo.AXL_NumPlan2' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.AXL_NumPlan2' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AXL_NumPlan2'. */

-- CREATE TABLE dbo.AXL_NumPlan2
-- 	( cExt                    nvarchar(100)       NULL
-- 	, cparticion              nvarchar(100)       NULL
-- 	, cprimaryCSSForwardAll   nvarchar(100)       NULL
-- 	, csecondaryCSSForwardAll nvarchar(100)       NULL
-- 	, dFchControl             datetime        NOT NULL
-- 	)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.AXL_NumplanDevice' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AXL_NumplanDevice'. */

-- CREATE TABLE dbo.AXL_NumplanDevice
-- 	( cExt        nvarchar(100)   NOT NULL
-- 	, cDeviceName nvarchar(100)   NOT NULL
-- 	, nIndex      int                 NULL
-- 	, cLabel      nvarchar(100)       NULL
-- 	, cDisplay    nvarchar(100)       NULL
-- 	, cEPNM       nvarchar(100)       NULL
-- 	, dFchControl datetime        NOT NULL
-- 	)

-- CREATE  nonclustered INDEX IX_AXL_NumplanDevice_DeviceName on dbo.AXL_NumplanDevice(cDeviceName)

-- CREATE  nonclustered INDEX IX_AXL_NumplanDevice_Ext on dbo.AXL_NumplanDevice(cExt)

-- ALTER TABLE dbo.AXL_NumplanDevice ADD CONSTRAINT PK_AXL_NumplanDevice PRIMARY KEY clustered (cExt, cDeviceName)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.AXL_PickupGroups' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AXL_PickupGroups'. */

-- CREATE TABLE dbo.AXL_PickupGroups
-- 	( cNombre     nvarchar(510)   NOT NULL
-- 	, nNumGrupo   bigint          NOT NULL
-- 	, nNumCorto   bigint              NULL
-- 	, dFchControl datetime        NOT NULL
-- 	)

-- CREATE  nonclustered INDEX IX_AXL_PickupGroups_nNumCorto on dbo.AXL_PickupGroups(nNumCorto)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.AXL_RoutePlan' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AXL_RoutePlan'. */

-- CREATE TABLE dbo.AXL_RoutePlan
-- 	( cExt          nvarchar(100)       NULL
-- 	, cParticion    nvarchar(510)       NULL
-- 	, cPatternUsage nvarchar(510)       NULL
-- 	, cDescripcion  nvarchar(510)       NULL
-- 	, dFchControl   datetime        NOT NULL
-- 	)

-- CREATE  nonclustered INDEX IX_AXL_RoutePlan on dbo.AXL_RoutePlan(cExt)

-- 	/* El objeto 'dbo.AXL_UnassignedDNs' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.AXL_UnassignedDNs' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.AXL_UnassignedDNs'. */

-- CREATE TABLE dbo.AXL_UnassignedDNs
-- 	( cExt        varchar(50)     NOT NULL
-- 	, cIsCallable varchar(1)      NOT NULL
-- 	, dFchControl datetime        NOT NULL
-- 	)

-- 	/* El objeto 'dbo.BCK_AltaLineasFacturacion' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.BCK_AltaLineasFacturacion' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.BCK_AltaLineasFacturacion' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.BCK_AltaLineasFacturacion'. */

-- CREATE TABLE dbo.BCK_AltaLineasFacturacion
-- 	( nLinea         int             NOT NULL
-- 	, nIdFacturacion int                 NULL
-- 	, dFchAlta       datetime        NOT NULL
-- 	, dFchBaja       datetime            NULL
-- 	, bSinCoste      int             NOT NULL
-- 	, dFchControl    datetime        NOT NULL
-- 	, cUsuario       varchar(6)      NOT NULL
-- 	)

-- 	/* El objeto 'dbo.bck_TChecklico' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.bck_TChecklico' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.bck_TChecklico' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.bck_TChecklico'. */

-- CREATE TABLE dbo.bck_TChecklico
-- 	( nCodTarea         int             NOT NULL
-- 	, bEnError          bit             NOT NULL
-- 	, nTipoTarea        int             NOT NULL
-- 	, cDescripcionTarea varchar(200)        NULL
-- 	, cSolucionError    varchar(120)        NULL
-- 	, nPrioridad        smallint            NULL
-- 	, cSQL              varchar(-1)         NULL
-- 	, bErrorSQL         bit             NOT NULL
-- 	, bActiva           bit             NOT NULL
-- 	, nElemenerror      int                 NULL
-- 	, cUsuario          nvarchar(100)       NULL
-- 	, nIdUsuario        int                 NULL
-- 	, nIdSupervisor     int                 NULL
-- 	, bExcel            bit             NOT NULL
-- 	, cTabla            varchar(-1)         NULL
-- 	, dFchActualizacion datetime        NOT NULL
-- 	)

-- 	/* El objeto 'dbo.bck_TUsuarios' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.bck_TUsuarios' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.bck_TUsuarios' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.bck_TUsuarios'. */

-- CREATE TABLE dbo.bck_TUsuarios
-- 	( nIdUsuario      int             NOT NULL
-- 	, cCodUsuario     varchar(25)     NOT NULL
-- 	, cClave          varbinary(8000)     NULL
-- 	, cNombre         varchar(50)     NOT NULL
-- 	, cCorreo         varchar(100)        NULL
-- 	, bActivo         bit             NOT NULL
-- 	, password_digest varchar(100)        NULL
-- 	)

	/* El objeto 'dbo.bck_TUsuariosProgramas' no tiene ningún índice o el usuario no tiene permisos. */
	/* No hay ninguna restricción definida en el objeto 'dbo.bck_TUsuariosProgramas' o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.bck_TUsuariosProgramas' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.bck_TUsuariosProgramas'. */

CREATE TABLE dbo.bck_TUsuariosProgramas
	( nIdUsuario   int             NOT NULL
	, nCodPrograma int             NOT NULL
	, sPermiso     char(1)         NOT NULL
	, cCodUsuario  varchar(20)         NULL
	)

-- 	/* El objeto 'dbo.CactiUrls' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.CactiUrls' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.CactiUrls'. */

-- CREATE TABLE dbo.CactiUrls
-- 	( CodSede                       nvarchar(12)    NOT NULL
-- 	, id                            int             NOT NULL
-- 	, local_graph_template_graph_id int             NOT NULL
-- 	, local_graph_id                int             NOT NULL
-- 	, graph_template_id             int             NOT NULL
-- 	, title                         nvarchar(510)   NOT NULL
-- 	, title_cache                   nvarchar(510)   NOT NULL
-- 	, URL                           nvarchar(max)    NOT NULL
-- 	, dFchControl                   datetime            NULL
-- 	)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.CATEGORIAS_AHORRO' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.CATEGORIAS_AHORRO'. */

-- CREATE TABLE dbo.CATEGORIAS_AHORRO
-- 	( nLinea                         int             NOT NULL
-- 	, cCategoriaInicial              varchar(30)         NULL
-- 	, cCategoriaAutorizadaInicial    varchar(30)         NULL
-- 	, dFchCategoriaAutorizadaInicial datetime            NULL
-- 	, cCategoria1res                 varchar(30)         NULL
-- 	, cCategoria2res                 varchar(30)         NULL
-- 	, cCategoria3res                 varchar(30)         NULL
-- 	, cCategoriaIAM_AE               varchar(30)         NULL
-- 	, cCategoriaAE2                  varchar(30)         NULL
-- 	, cCheck                         bit                 NULL
-- 	, cCategoriaTribu                varchar(30)         NULL
-- 	, cCategoriaSeguridad            varchar(30)         NULL
-- 	, cCategoriaMAmbiente            varchar(30)         NULL
-- 	, cCategoriaSostenibilidad       varchar(30)         NULL
-- 	, cCategoriaSgtMA44B             varchar(30)         NULL
-- 	)

-- ALTER TABLE dbo.CATEGORIAS_AHORRO ADD CONSTRAINT PK_CATEGORIAS_AHORRO PRIMARY KEY clustered (nLinea)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.Checklico_10025' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.Checklico_10025'. */

-- CREATE TABLE dbo.Checklico_10025
-- 	( nId                  int             NOT NULL
-- 	, cDNI                 nchar(18)       NOT NULL
-- 	, nCodPtoAnterior      int             NOT NULL
-- 	, nCodPtoNuevo         int             NOT NULL
-- 	, nLinea               int             NOT NULL
-- 	, nNumCorto            int                 NULL
-- 	, cPuestoAnterior      varchar(40)     NOT NULL
-- 	, cPuestoNuevo         varchar(40)     NOT NULL
-- 	, dFchControl          datetime        NOT NULL
-- 	, dFchConfirmacion     datetime            NULL
-- 	, cUsuarioConfirmacion varchar(30)         NULL
-- 	)

-- ALTER TABLE dbo.Checklico_10025 ADD CONSTRAINT PK_Checklico_10025 PRIMARY KEY clustered (nId)

-- 	/* El objeto 'dbo.COM_AUTORIZACION' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.COM_AUTORIZACION' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.COM_AUTORIZACION'. */

-- CREATE TABLE dbo.COM_AUTORIZACION
-- 	( USUARIO      char(8)         NOT NULL
-- 	, ID_UNIDAD    int             NOT NULL
-- 	, ACTIVO       char(1)             NULL
-- 	, USU_ACTUALIZ char(8)             NULL
-- 	, FCH_ACTUALIZ datetime            NULL
-- 	)

-- 	/* El objeto 'dbo.COM_AUTORIZADOS_cuarentena' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.COM_AUTORIZADOS_cuarentena' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.COM_AUTORIZADOS_cuarentena' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.COM_AUTORIZADOS_cuarentena'. */

-- CREATE TABLE dbo.COM_AUTORIZADOS_cuarentena
-- 	( USUARIO      char(8)         NOT NULL
-- 	, ID_UNIDAD    int             NOT NULL
-- 	, ACTIVO       char(1)             NULL
-- 	, USU_ACTUALIZ char(8)             NULL
-- 	, FCH_ACTUALIZ datetime            NULL
-- 	)

-- 	/* No hay ninguna restricción definida en el objeto 'dbo.COM_CENTRO_TRABAJO' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.COM_CENTRO_TRABAJO' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.COM_CENTRO_TRABAJO'. */

-- CREATE TABLE dbo.COM_CENTRO_TRABAJO
-- 	( CENTRO_TRABAJO int             NOT NULL
-- 	, CLS_VIAL       nvarchar(60)    NOT NULL
-- 	, NOM_VIAL       nvarchar(144)   NOT NULL
-- 	, NOM_APP        nvarchar(6)     NOT NULL
-- 	, NUM_APP        nvarchar(12)    NOT NULL
-- 	, CAL_APP        nvarchar(4)     NOT NULL
-- 	, COD_POSTAL     nvarchar(10)    NOT NULL
-- 	, PAIS           nvarchar(52)    NOT NULL
-- 	, PROVINCIA      nvarchar(40)    NOT NULL
-- 	, MUNICIPIO      nvarchar(80)    NOT NULL
-- 	)

-- CREATE  nonclustered INDEX IX_COM_CENTRO_TRABAJO_CENTRO_TRABAJO on dbo.COM_CENTRO_TRABAJO(CENTRO_TRABAJO)

-- 	/* El objeto 'dbo.COM_CENTROSCOSTE' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.COM_CENTROSCOSTE' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.COM_CENTROSCOSTE'. */

-- CREATE TABLE dbo.COM_CENTROSCOSTE
-- 	( dependencia  varchar(12)         NULL
-- 	, denominacion varchar(60)         NULL
-- 	, CC           varchar(15)         NULL
-- 	, descripcion  varchar(40)         NULL
-- 	, dFchControl  datetime            NULL
-- 	)

-- 	/* El objeto 'dbo.COM_DEPENDENCIAS' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.COM_DEPENDENCIAS' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.COM_DEPENDENCIAS' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.COM_DEPENDENCIAS'. */

-- CREATE TABLE dbo.COM_DEPENDENCIAS
-- 	( ID_UNIDAD       nvarchar(16)        NULL
-- 	, DEPENDENCIA     nvarchar(24)        NULL
-- 	, DENOMINACION    nvarchar(160)       NULL
-- 	, ID_UNIDAD_PADRE nvarchar(16)        NULL
-- 	, TELEFONO1       nvarchar(18)        NULL
-- 	, TELEFONO2       nvarchar(18)        NULL
-- 	, TELEFONO3       nvarchar(18)        NULL
-- 	, TELEFONO4       nvarchar(18)        NULL
-- 	, EMAIL           nvarchar(160)       NULL
-- 	, FAX             nvarchar(18)        NULL
-- 	, MOVIL           nvarchar(18)        NULL
-- 	, CLS_VIAL        nvarchar(48)        NULL
-- 	, NOM_VIAL        nvarchar(144)       NULL
-- 	, NOM_APP         nvarchar(6)         NULL
-- 	, NUM_APP         nvarchar(12)        NULL
-- 	, CAL_APP         nvarchar(4)         NULL
-- 	, COD_POST        nvarchar(10)        NULL
-- 	, POBLACIÓN      nvarchar(140)       NULL
-- 	, ID_AREA_JM_OOAA nvarchar(16)        NULL
-- 	, CENTRO_TRABAJO  int                 NULL
-- 	, NUM_ORDEN       int                 NULL
-- 	)

-- 	/* El objeto 'dbo.COM_DNI_INEX' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.COM_DNI_INEX' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.COM_DNI_INEX' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.COM_DNI_INEX'. */

-- CREATE TABLE dbo.COM_DNI_INEX
-- 	( DNI varchar(255)        NULL
-- 	)

-- 	/* El objeto 'dbo.COM_ICC_IMEI' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.COM_ICC_IMEI' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.COM_ICC_IMEI' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.COM_ICC_IMEI'. */

-- CREATE TABLE dbo.COM_ICC_IMEI
-- 	( NUMERO        varchar(255)        NULL
-- 	, ICC           varchar(255)        NULL
-- 	, TERMINAL      varchar(255)        NULL
-- 	, IMEI          varchar(255)        NULL
-- 	, DUPLO         varchar(255)        NULL
-- 	, OBSERVACIONES varchar(255)        NULL
-- 	)

-- 	/* El objeto 'dbo.COM_IDENTIDY' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.COM_IDENTIDY' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.COM_IDENTIDY' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.COM_IDENTIDY'. */

-- CREATE TABLE dbo.COM_IDENTIDY
-- 	( Linea         int                 NULL
-- 	, CORTO         int                 NULL
-- 	, DNI           varchar(255)        NULL
-- 	, GRUPO         varchar(255)        NULL
-- 	, DNI duplicado varchar(255)        NULL
-- 	, Campo6        int                 NULL
-- 	, TERMINAL      varchar(255)        NULL
-- 	, CODADC        varchar(255)        NULL
-- 	, OBSERVA       varchar(255)        NULL
-- 	)

-- 	/* El objeto 'dbo.COM_IDENTIDY_JMGB5' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.COM_IDENTIDY_JMGB5' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.COM_IDENTIDY_JMGB5' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.COM_IDENTIDY_JMGB5'. */

-- CREATE TABLE dbo.COM_IDENTIDY_JMGB5
-- 	( Linea         varchar(255)        NULL
-- 	, CORTO         varchar(255)        NULL
-- 	, DNI           varchar(255)        NULL
-- 	, CODADC        varchar(255)        NULL
-- 	, TERMINAL      varchar(255)        NULL
-- 	, OBSERVACIONES varchar(255)        NULL
-- 	)

-- 	/* El objeto 'dbo.COM_IMEI_ICC' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.COM_IMEI_ICC' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.COM_IMEI_ICC' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.COM_IMEI_ICC'. */

-- CREATE TABLE dbo.COM_IMEI_ICC
-- 	( NUMERO        varchar(255)        NULL
-- 	, ICC           varchar(255)        NULL
-- 	, TERMINAL      varchar(255)        NULL
-- 	, IMEI          varchar(255)        NULL
-- 	, DUPLO         varchar(255)        NULL
-- 	, OBSERVACIONES varchar(255)        NULL
-- 	)

-- 	/* El objeto 'dbo.COM_PLANTILLA' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.COM_PLANTILLA' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.COM_PLANTILLA' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.COM_PLANTILLA'. */

-- CREATE TABLE dbo.COM_PLANTILLA
-- 	( PUESTO_PTO            int                 NULL
-- 	, DEN_PUESTO            nvarchar(200)       NULL
-- 	, TIPO_PTO              nvarchar(2)         NULL
-- 	, ID_UNIDAD_ADSCRIPCION nvarchar(16)        NULL
-- 	, ADSCRIPCION_PTO       nvarchar(24)        NULL
-- 	, NUMPER                int                 NULL
-- 	, TIP_DOCUMEN_PER       nvarchar(2)         NULL
-- 	, NUM_DOCUMEN_PER       nvarchar(18)        NULL
-- 	, CLS_DOCUMEN_PER       nvarchar(4)         NULL
-- 	, APELLIDO1_PER         nvarchar(80)        NULL
-- 	, APELLIDO2_PER         nvarchar(80)        NULL
-- 	, NOMBRE_PER            nvarchar(80)        NULL
-- 	, EMAIL_PER             nvarchar(160)       NULL
-- 	, DIVISION              nvarchar(8)         NULL
-- 	, SITUACION             nvarchar(4)         NULL
-- 	, MODALIDAD             nvarchar(4)         NULL
-- 	, TELEFONO1_PTO         nvarchar(18)        NULL
-- 	, TELEFONO2_PTO         nvarchar(18)        NULL
-- 	, TELEFONO3_PTO         nvarchar(18)        NULL
-- 	, FAX_PTO               nvarchar(18)        NULL
-- 	, MOVIL_PER             nvarchar(18)        NULL
-- 	, AREA_PESONAL          nvarchar(6)         NULL
-- 	, GRUPO_PTO             nvarchar(24)        NULL
-- 	, NIVEL_PTO             nvarchar(4)         NULL
-- 	)

-- 	/* El objeto 'dbo.COM_RPV' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.COM_RPV' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.COM_RPV'. */

-- CREATE TABLE dbo.COM_RPV
-- 	( NUMCORTO    varchar(50)         NULL
-- 	, NUMLARGO    varchar(50)         NULL
-- 	, dFchControl datetime        NOT NULL
-- 	)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.COM_SUBTIPOS' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.COM_SUBTIPOS'. */

-- CREATE TABLE dbo.COM_SUBTIPOS
-- 	( id           nchar(8)        NOT NULL
-- 	, cDescripcion varchar(50)     NOT NULL
-- 	)

-- ALTER TABLE dbo.COM_SUBTIPOS ADD CONSTRAINT PK_COM_SUBTIPOS PRIMARY KEY clustered (id)

-- 	/* El objeto 'dbo.COM_TELEFONOS_PERSONAS' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.COM_TELEFONOS_PERSONAS' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.COM_TELEFONOS_PERSONAS'. */

-- CREATE TABLE dbo.COM_TELEFONOS_PERSONAS
-- 	( NUMPER              int             NOT NULL
-- 	, DISPOSITIVO         nvarchar(18)    NOT NULL
-- 	, TIP_DISPOSITIVO     nvarchar(2)     NOT NULL
-- 	, TIP_DISPOSITIVO_SAP nchar(8)            NULL
-- 	, VISIBILIDAD         nvarchar(2)     NOT NULL
-- 	, dFchControl         datetime            NULL
-- 	)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.COM_TELEFONOS_PLANTILLA' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.COM_TELEFONOS_PLANTILLA'. */

-- CREATE TABLE dbo.COM_TELEFONOS_PLANTILLA
-- 	( ID_UNIDAD           int             NOT NULL
-- 	, NUMPER              int             NOT NULL
-- 	, ID_PUESTO           int             NOT NULL
-- 	, DISPOSITIVO         nvarchar(18)    NOT NULL
-- 	, TIP_DISPOSITIVO     nvarchar(2)     NOT NULL
-- 	, TIP_DISPOSITIVO_SAP nchar(8)            NULL
-- 	, VISIBILIDAD         nvarchar(2)     NOT NULL
-- 	, dFchControl         datetime            NULL
-- 	)

-- CREATE  nonclustered INDEX _dta_index_COM_TELEFONOS_PLANTILLA_17_2032114380__K4 on dbo.COM_TELEFONOS_PLANTILLA(DISPOSITIVO)

-- CREATE  nonclustered INDEX _dta_index_COM_TELEFONOS_PLANTILLA_17_2032114380__K4_K1_K5_3 on dbo.COM_TELEFONOS_PLANTILLA(DISPOSITIVO, ID_UNIDAD, TIP_DISPOSITIVO)

-- CREATE  nonclustered INDEX IX_COM_TELEFONOS_PLANTILLA on dbo.COM_TELEFONOS_PLANTILLA(NUMPER, ID_PUESTO, DISPOSITIVO)

-- CREATE  nonclustered INDEX IX_COM_TELEFONOS_PLANTILLA_id_puesto on dbo.COM_TELEFONOS_PLANTILLA(ID_PUESTO)

-- 	/* No hay ninguna restricción definida en el objeto 'dbo.COM_TELEFONOS_UNIDADES' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.COM_TELEFONOS_UNIDADES' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.COM_TELEFONOS_UNIDADES'. */

-- CREATE TABLE dbo.COM_TELEFONOS_UNIDADES
-- 	( ID_UNIDAD           int             NOT NULL
-- 	, DISPOSITIVO         nvarchar(18)    NOT NULL
-- 	, TIP_DISPOSITIVO     nvarchar(2)     NOT NULL
-- 	, TIP_DISPOSITIVO_SAP nchar(8)            NULL
-- 	, VISIBILIDAD         nvarchar(2)     NOT NULL
-- 	, dFchControl         datetime            NULL
-- 	)

-- CREATE  nonclustered INDEX _dta_index_COM_TELEFONOS_UNIDADES_17_2048114437__K1_K3_2 on dbo.COM_TELEFONOS_UNIDADES(ID_UNIDAD, TIP_DISPOSITIVO)

-- CREATE  nonclustered INDEX _dta_index_COM_TELEFONOS_UNIDADES_17_2048114437__K2 on dbo.COM_TELEFONOS_UNIDADES(DISPOSITIVO)

-- 	/* El objeto 'dbo.COM_TERMINALES' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.COM_TERMINALES' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.COM_TERMINALES' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.COM_TERMINALES'. */

-- CREATE TABLE dbo.COM_TERMINALES
-- 	( Linea    float               NULL
-- 	, TERMINAL varchar(255)        NULL
-- 	)

-- 	/* El objeto 'dbo.COM_User_sistemas' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.COM_User_sistemas' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.COM_User_sistemas' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.COM_User_sistemas'. */

-- CREATE TABLE dbo.COM_User_sistemas
-- 	( NOMBRE            nvarchar(510)       NULL
-- 	, APELLIDOS         nvarchar(510)       NULL
-- 	, DISPLAY NAME      nvarchar(510)       NULL
-- 	, DISTINGUISHEDNAME nvarchar(510)       NULL
-- 	, SAMACCOUNTNAME    nvarchar(510)       NULL
-- 	, MAIL              nvarchar(510)       NULL
-- 	, TELEFONO          float               NULL
-- 	)

-- 	/* No hay ninguna restricción definida en el objeto 'dbo.COM_USUARIOS_AYRE' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.COM_USUARIOS_AYRE' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.COM_USUARIOS_AYRE'. */

-- CREATE TABLE dbo.COM_USUARIOS_AYRE
-- 	( NUMPER      int             NOT NULL
-- 	, DISPOSITIVO nvarchar(18)    NOT NULL
-- 	, VISIBILIDAD nvarchar(2)     NOT NULL
-- 	)

-- CREATE  nonclustered INDEX ABD_IX1 on dbo.COM_USUARIOS_AYRE(NUMPER)

-- 	/* El objeto 'dbo.CSQ_DetailedCallAgent' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.CSQ_DetailedCallAgent' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.CSQ_DetailedCallAgent'. */

-- CREATE TABLE dbo.CSQ_DetailedCallAgent
-- 	( cId                 nvarchar(30)    NOT NULL
-- 	, dCallStartTime      datetime        NOT NULL
-- 	, dCallEndTime        datetime        NOT NULL
-- 	, nContactDisposition smallint            NULL
-- 	, cOriginatorDN       nvarchar(510)       NULL
-- 	, cDestinationDN      nvarchar(100)       NULL
-- 	, cCalledNumber       nvarchar(100)       NULL
-- 	, cCSQName            nvarchar(40)        NULL
-- 	, dQueueTime          datetime            NULL
-- 	, cAgentName          nvarchar(510)       NULL
-- 	, dRingTime           datetime            NULL
-- 	, dTalkTime           datetime            NULL
-- 	, dWorkTime           datetime            NULL
-- 	, cAppName            nvarchar(50)        NULL
-- 	, dFchControl         datetime        NOT NULL
-- 	)

-- 	/* El objeto 'dbo.CSQ_DetailedCallAgent_tmp' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.CSQ_DetailedCallAgent_tmp' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.CSQ_DetailedCallAgent_tmp' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.CSQ_DetailedCallAgent_tmp'. */

-- CREATE TABLE dbo.CSQ_DetailedCallAgent_tmp
-- 	( cId                 nvarchar(30)    NOT NULL
-- 	, dCallStartTime      datetime        NOT NULL
-- 	, dCallEndTime        datetime        NOT NULL
-- 	, nContactDisposition smallint            NULL
-- 	, cOriginatorDN       nvarchar(510)       NULL
-- 	, cDestinationDN      nvarchar(100)       NULL
-- 	, cCalledNumber       nvarchar(100)       NULL
-- 	, cCSQName            nvarchar(40)        NULL
-- 	, dQueueTime          datetime            NULL
-- 	, cAgentName          nvarchar(510)       NULL
-- 	, dRingTime           datetime            NULL
-- 	, dTalkTime           datetime            NULL
-- 	, dWorkTime           datetime            NULL
-- 	, cAppName            nvarchar(50)        NULL
-- 	)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.CSQ_Festivos' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.CSQ_Festivos'. */

-- CREATE TABLE dbo.CSQ_Festivos
-- 	( dFestivos datetime        NOT NULL
-- 	)

-- ALTER TABLE dbo.CSQ_Festivos ADD CONSTRAINT PK_CSQ_Festivos PRIMARY KEY clustered (dFestivos)

-- 	/* El objeto 'dbo.CSQ_SicamVip' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.CSQ_SicamVip' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.CSQ_SicamVip' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.CSQ_SicamVip'. */

-- CREATE TABLE dbo.CSQ_SicamVip
-- 	( dSabado datetime        NOT NULL
-- 	)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.CUOM_AllPhonesReport' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.CUOM_AllPhonesReport'. */

-- CREATE TABLE dbo.CUOM_AllPhonesReport
-- 	( Extn                 nvarchar(100)       NULL
-- 	, PhoneDescription     nvarchar(100)       NULL
-- 	, IPAddress            nvarchar(100)       NULL
-- 	, MACAddress           nvarchar(100)   NOT NULL
-- 	, Model                nvarchar(100)       NULL
-- 	, Regd                 nvarchar(100)       NULL
-- 	, CMCMEAddress         nvarchar(100)       NULL
-- 	, SwitchAddress        nvarchar(100)       NULL
-- 	, Port                 nvarchar(100)       NULL
-- 	, DevicePool           nvarchar(100)       NULL
-- 	, PartitionName        nvarchar(100)       NULL
-- 	, StatusReasonCode     nvarchar(100)       NULL
-- 	, Protocol             nvarchar(100)       NULL
-- 	, CMCMEName            nvarchar(100)       NULL
-- 	, CM                   nvarchar(100)       NULL
-- 	, PrimaryCUCM          nvarchar(100)       NULL
-- 	, SwitchName           nvarchar(100)       NULL
-- 	, SwitchPrivateAddress nvarchar(100)       NULL
-- 	, PortStatus           nvarchar(100)       NULL
-- 	, VLANName             nvarchar(100)       NULL
-- 	, VLANID               nvarchar(100)       NULL
-- 	, SRSTmode             nvarchar(100)       NULL
-- 	, SRSTRouter           nvarchar(100)       NULL
-- 	, SerialNo             nvarchar(100)       NULL
-- 	, ApplicationId        nvarchar(100)       NULL
-- 	, LoadId               nvarchar(100)       NULL
-- 	, dFchControl          datetime        NOT NULL
-- 	)

-- CREATE  nonclustered INDEX IX_CUOM_AllPhonesReport_ext on dbo.CUOM_AllPhonesReport(Extn)

-- CREATE  nonclustered INDEX IX_CUOM_AllPhonesReport_mac on dbo.CUOM_AllPhonesReport(MACAddress)

-- 	/* El objeto 'dbo.CUOMUnknownRejected' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.CUOMUnknownRejected' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.CUOMUnknownRejected'. */

-- CREATE TABLE dbo.CUOMUnknownRejected
-- 	( Name         varchar(50)         NULL
-- 	, IpAddress    varchar(50)         NULL
-- 	, DN           varchar(50)         NULL
-- 	, DevicePool   varchar(50)         NULL
-- 	, Description  varchar(250)        NULL
-- 	, Model        varchar(50)         NULL
-- 	, Status       varchar(50)         NULL
-- 	, StatusReason varchar(50)         NULL
-- 	, dFchControl  datetime            NULL
-- 	)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.DefragmentIndexes' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.DefragmentIndexes'. */

-- CREATE TABLE dbo.DefragmentIndexes
-- 	( DatabaseName      nvarchar(200)   NOT NULL
-- 	, SchemaName        nvarchar(200)   NOT NULL
-- 	, TableName         nvarchar(200)   NOT NULL
-- 	, IndexName         nvarchar(200)   NOT NULL
-- 	, DefragmentDate    nvarchar(60)    NOT NULL
-- 	, PercentFragmented float           NOT NULL
-- 	)

-- ALTER TABLE dbo.DefragmentIndexes ADD CONSTRAINT PK_DefragmentIndexes PRIMARY KEY clustered (DatabaseName, SchemaName, TableName, IndexName, DefragmentDate)

-- 	/* No hay ninguna restricción definida en el objeto 'dbo.DML_LOG' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.DML_LOG' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.DML_LOG'. */

-- CREATE TABLE dbo.DML_LOG
-- 	( PostTime datetime            NULL
-- 	, DB_User  varchar(100)        NULL
-- 	, App      varchar(100)        NULL
-- 	, Host     varchar(100)        NULL
-- 	, TSQL     varchar(-1)         NULL
-- 	)

-- CREATE  nonclustered INDEX IX_BY_APP on dbo.DML_LOG(App)

-- CREATE  nonclustered INDEX IX_BY_TIME on dbo.DML_LOG(PostTime)

-- CREATE  nonclustered INDEX IX_BY_USER on dbo.DML_LOG(DB_User)

-- 	/* El objeto 'dbo.edgeEDR' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.edgeEDR' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.edgeEDR'. */

-- CREATE TABLE dbo.edgeEDR
-- 	( FromNode bigint          NOT NULL
-- 	, ToNode   bigint          NOT NULL
-- 	, Weight   int             NOT NULL
-- 	)

-- 	/* El objeto 'dbo.edgeSite' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.edgeSite' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.edgeSite' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.edgeSite'. */

-- CREATE TABLE dbo.edgeSite
-- 	( FromNode int             NOT NULL
-- 	, ToNode   int             NOT NULL
-- 	, Weight   int             NOT NULL
-- 	)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.GraficasCentralitas' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.GraficasCentralitas'. */

-- CREATE TABLE dbo.GraficasCentralitas
-- 	( FECHA       datetime        NOT NULL
-- 	, BP          int                 NULL
-- 	, BP_250      int                 NULL
-- 	, BP_50       int                 NULL
-- 	, BP_COMPACT  int                 NULL
-- 	, BP_COMSAT   int                 NULL
-- 	, BP_TRUNK    int                 NULL
-- 	, BP_TARIFICA int                 NULL
-- 	, IBERCOM     int                 NULL
-- 	, LIMS        int                 NULL
-- 	)

-- ALTER TABLE dbo.GraficasCentralitas ADD CONSTRAINT PK_GraficasCentralitas PRIMARY KEY clustered (FECHA)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.GraficasChecklico' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.GraficasChecklico'. */

-- CREATE TABLE dbo.GraficasChecklico
-- 	( DFECHA        datetime        NOT NULL
-- 	, NCODTAREA     int             NOT NULL
-- 	, NTIPOTAREA    int             NOT NULL
-- 	, NPRIORIDAD    smallint            NULL
-- 	, NELEMENERROR  int                 NULL
-- 	, NIDUSUARIO    int                 NULL
-- 	, NIDSUPERVISOR int                 NULL
-- 	)

-- ALTER TABLE dbo.GraficasChecklico ADD CONSTRAINT PK_GraficasChecklico PRIMARY KEY clustered (DFECHA, NCODTAREA)

-- 	/* El objeto 'dbo.GraficasDispositivosAtributos' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.GraficasDispositivosAtributos' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.GraficasDispositivosAtributos' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.GraficasDispositivosAtributos'. */

-- CREATE TABLE dbo.GraficasDispositivosAtributos
-- 	( dFchControl  varchar(30)         NULL
-- 	, cDescripcion varchar(50)     NOT NULL
-- 	, cStatus      varchar(20)     NOT NULL
-- 	, cDevicePool  varchar(50)         NULL
-- 	, nCodAlmacen  int                 NULL
-- 	, cNombre      varchar(100)    NOT NULL
-- 	, cEstado      varchar(20)     NOT NULL
-- 	)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.GraficasLinDatosTipo' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.GraficasLinDatosTipo'. */

-- CREATE TABLE dbo.GraficasLinDatosTipo
-- 	( dFecha             datetime        NOT NULL
-- 	, nADSL              int                 NULL
-- 	, nADSLX1            int                 NULL
-- 	, nADSLX2            int                 NULL
-- 	, nADSLX3            int                 NULL
-- 	, nADSLX4            int                 NULL
-- 	, nADSLX6            int                 NULL
-- 	, nADSLX8            int                 NULL
-- 	, nADSLX10           int                 NULL
-- 	, nPaP               int                 NULL
-- 	, nDiba              int                 NULL
-- 	, nMacrolan          int                 NULL
-- 	, nCobrelan          int                 NULL
-- 	, nVPNIP             int                 NULL
-- 	, nFrameRelay        int                 NULL
-- 	, nX25               int                 NULL
-- 	, nRdsiPrimarioDatos int                 NULL
-- 	, nRdsiMAmbiente     int                 NULL
-- 	, nRdsi              int                 NULL
-- 	, nTIC               int                 NULL
-- 	, n3G                int                 NULL
-- 	)

-- ALTER TABLE dbo.GraficasLinDatosTipo ADD CONSTRAINT PK_GraficasLinDatosTipo PRIMARY KEY clustered (dFecha)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.GraficasLineas' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.GraficasLineas'. */

-- CREATE TABLE dbo.GraficasLineas
-- 	( FECHA           datetime        NOT NULL
-- 	, BP_A            int                 NULL
-- 	, BP_D            int                 NULL
-- 	, IBERCOM_A       int                 NULL
-- 	, IBERCOM_D       int                 NULL
-- 	, TOIP            int                 NULL
-- 	, VG              int                 NULL
-- 	, RTC_VOZ         int                 NULL
-- 	, RTC_AL_AS       int                 NULL
-- 	, RTC_FAX         int                 NULL
-- 	, RTC_OTR         int                 NULL
-- 	, T0              int                 NULL
-- 	, BP_NUMERACION   int                 NULL
-- 	, RDSI_NUMERACION int                 NULL
-- 	, PRIMARIOS_VOZ   int                 NULL
-- 	, PRIMARIOS_DATOS int                 NULL
-- 	)

-- ALTER TABLE dbo.GraficasLineas ADD CONSTRAINT PK_GraficasLineas PRIMARY KEY clustered (FECHA)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.GraficasLineasSalidaExt' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.GraficasLineasSalidaExt'. */

-- CREATE TABLE dbo.GraficasLineasSalidaExt
-- 	( dFchDatos datetime        NOT NULL
-- 	, nADSL     int                 NULL
-- 	, nADSLx1   int                 NULL
-- 	, nADSLx2   int                 NULL
-- 	, nADSLx3   int                 NULL
-- 	, nADSLx4   int                 NULL
-- 	, nADSLx6   int                 NULL
-- 	, nADSLx8   int                 NULL
-- 	, nADSLx10  int                 NULL
-- 	, nX25      int                 NULL
-- 	, nFRAME    int                 NULL
-- 	, nDIBA     int                 NULL
-- 	)

-- ALTER TABLE dbo.GraficasLineasSalidaExt ADD CONSTRAINT PK_GraficasLineasSalidaExt PRIMARY KEY clustered (dFchDatos)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.GraficasModelos' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.GraficasModelos'. */

-- CREATE TABLE dbo.GraficasModelos
-- 	( dFchControl        datetime        NOT NULL
-- 	, Modelo             varchar(50)     NOT NULL
-- 	, DesplegadosActivos int                 NULL
-- 	, TotalDesplegados   int                 NULL
-- 	, Retirados          int                 NULL
-- 	)

-- ALTER TABLE dbo.GraficasModelos ADD CONSTRAINT PK_GraficasModelos PRIMARY KEY clustered (dFchControl, Modelo)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.GraficasVLAN' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.GraficasVLAN'. */

-- CREATE TABLE dbo.GraficasVLAN
-- 	( dFecha          datetime        NOT NULL
-- 	, nAE             int                 NULL
-- 	, nBibliotecas    int                 NULL
-- 	, nCCulturales    int                 NULL
-- 	, nGenericosIAM   int                 NULL
-- 	, nSalud          int                 NULL
-- 	, nSSociales      int                 NULL
-- 	, nPolideportivos int                 NULL
-- 	, nPolicia        int                 NULL
-- 	, nSamur          int                 NULL
-- 	, nBomberos       int                 NULL
-- 	, nBackUpRCM      int                 NULL
-- 	, nCPD            int                 NULL
-- 	)

-- ALTER TABLE dbo.GraficasVLAN ADD CONSTRAINT PK_GraficasVLAN PRIMARY KEY clustered (dFecha)

-- 	/* El objeto 'dbo.HDeviceCUCM' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.HDeviceCUCM' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.HDeviceCUCM'. */

-- CREATE TABLE dbo.HDeviceCUCM
-- 	( cMAC          varchar(12)     NOT NULL
-- 	, cTipo         char(1)         NOT NULL
-- 	, dFchOperacion datetime        NOT NULL
-- 	)

-- 	/* El objeto 'dbo.HLinFijosPuestos' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.HLinFijosPuestos' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.HLinFijosPuestos' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.HLinFijosPuestos'. */

-- CREATE TABLE dbo.HLinFijosPuestos
-- 	( nLinea        int             NOT NULL
-- 	, nCodPto       int             NOT NULL
-- 	, cOperacion    char(2)             NULL
-- 	, cDNI          nchar(20)           NULL
-- 	, dFchOperacion datetime            NULL
-- 	)

-- 	/* El objeto 'dbo.HLinFijosUnidades' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.HLinFijosUnidades' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.HLinFijosUnidades' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.HLinFijosUnidades'. */

-- CREATE TABLE dbo.HLinFijosUnidades
-- 	( nLinea        int             NOT NULL
-- 	, nCodUni       int             NOT NULL
-- 	, cOperacion    char(2)             NULL
-- 	, dFchOperacion datetime            NULL
-- 	)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.IdentificadoresLibres4Lineas' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.IdentificadoresLibres4Lineas'. */

-- CREATE TABLE dbo.IdentificadoresLibres4Lineas
-- 	( nId int             NOT NULL
-- 	)

-- ALTER TABLE dbo.IdentificadoresLibres4Lineas ADD CONSTRAINT PK_IdentificadoresLibres4Lineas PRIMARY KEY clustered (nId)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.Informes001' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.Informes001'. */

-- CREATE TABLE dbo.Informes001
-- 	( nUniPadre int             NOT NULL
-- 	, nCodSede  int             NOT NULL
-- 	, nCodUni   int             NOT NULL
-- 	)

-- ALTER TABLE dbo.Informes001 ADD CONSTRAINT PK_Informes001 PRIMARY KEY clustered (nUniPadre, nCodSede, nCodUni)

-- 	/* No hay ninguna restricción definida en el objeto 'dbo.Informes002' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.Informes002' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.Informes002'. */

-- CREATE TABLE dbo.Informes002
-- 	( LINEA       int                 NULL
-- 	, NUMCORTO    int                 NULL
-- 	, DNI         varchar(9)          NULL
-- 	, APELLIDO1   varchar(40)         NULL
-- 	, APELLIDO2   varchar(40)         NULL
-- 	, NOMBRE      varchar(40)         NULL
-- 	, NIVEL       int                 NULL
-- 	, PUESTO      varchar(40)         NULL
-- 	, COD_UNIDAD  int                 NULL
-- 	, DEN_UNIDAD  varchar(60)         NULL
-- 	, CENTROCOSTE varchar(10)         NULL
-- 	, COD_AREA    int                 NULL
-- 	, DEN_AREA    varchar(60)         NULL
-- 	, PERFIL      varchar(50)         NULL
-- 	, GPRS        varchar(50)         NULL
-- 	, INTRANET    varchar(50)         NULL
-- 	, MOVILMAIL   varchar(50)         NULL
-- 	, SMS         varchar(50)         NULL
-- 	, BLACKBERRY  varchar(50)         NULL
-- 	, MMS         varchar(50)         NULL
-- 	, nOrder      int                 NULL
-- 	, Terminal1   varchar(50)         NULL
-- 	, Terminal2   varchar(50)         NULL
-- 	, Terminal3   varchar(50)         NULL
-- 	, Voz_1       numeric(12,2)       NULL
-- 	, Voz_2       numeric(12,2)       NULL
-- 	, Voz_3       numeric(12,2)       NULL
-- 	, Datos_1     numeric(12,2)       NULL
-- 	, Datos_2     numeric(12,2)       NULL
-- 	, Datos_3     numeric(12,2)       NULL
-- 	, cUsuario    varchar(10)         NULL
-- 	, Cuotas_1    numeric(12,2)       NULL
-- 	, Cuotas_2    numeric(12,2)       NULL
-- 	, Cuotas_3    numeric(12,2)       NULL
-- 	, Mes_1       nchar(20)           NULL
-- 	, Mes_2       nchar(20)           NULL
-- 	, Mes_3       nchar(20)           NULL
-- 	)

-- CREATE  nonclustered INDEX IX_Informes002_Area on dbo.Informes002(COD_AREA)

-- CREATE  nonclustered INDEX IX_Informes002_Linea on dbo.Informes002(LINEA)

-- CREATE  nonclustered INDEX IX_Informes002_Orden on dbo.Informes002(nOrder)

-- CREATE  nonclustered INDEX IX_Informes002_Unidad on dbo.Informes002(COD_UNIDAD)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.IP_VoiceQoS' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.IP_VoiceQoS'. */

-- CREATE TABLE dbo.IP_VoiceQoS
-- 	( id           int             NOT NULL
-- 	, nNumCorto    int             NOT NULL
-- 	, cMAC         varchar(50)     NOT NULL
-- 	, cModelo      varchar(50)     NOT NULL
-- 	, nNumDestino  int                 NULL
-- 	, sIP          nvarchar(32)    NOT NULL
-- 	, nCodSede     int             NOT NULL
-- 	, sTipo        char(1)         NOT NULL
-- 	, dFechaInicio datetime        NOT NULL
-- 	, nDuracion    int                 NULL
-- 	, sIPend       nvarchar(100)       NULL
-- 	, sCodec       varchar(25)         NULL
-- 	, nLost        int                 NULL
-- 	, nDelayAvg    int                 NULL
-- 	, nDelayMax    int                 NULL
-- 	, nDelayMin    int                 NULL
-- 	, nJitterAvg   int                 NULL
-- 	, nJitterMax   int                 NULL
-- 	, nJitterMin   int                 NULL
-- 	, nLostRateAvg int                 NULL
-- 	, nLostRateMax int                 NULL
-- 	, nLostRateMin int                 NULL
-- 	, cComentario  varchar(250)        NULL
-- 	, dFchControl  datetime        NOT NULL
-- 	)

-- CREATE unique nonclustered INDEX IX_LlamadaUnica on dbo.IP_VoiceQoS(dFechaInicio, sIP, sTipo, cMAC, nNumCorto)

-- ALTER TABLE dbo.IP_VoiceQoS ADD CONSTRAINT PK_IP_VoiceQoS PRIMARY KEY clustered (id)

-- 	/* El objeto 'dbo.MAX_CONSUMO_MENSUAL' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.MAX_CONSUMO_MENSUAL' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.MAX_CONSUMO_MENSUAL' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.MAX_CONSUMO_MENSUAL'. */

-- CREATE TABLE dbo.MAX_CONSUMO_MENSUAL
-- 	( MES        int             NOT NULL
-- 	, ANYO       int             NOT NULL
-- 	, MAXCONSUMO int                 NULL
-- 	)

-- 	/* El objeto 'dbo.MonitorCandado' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.MonitorCandado' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.MonitorCandado'. */

-- CREATE TABLE dbo.MonitorCandado
-- 	( extension   varchar(30)     NOT NULL
-- 	, particion   varchar(30)     NOT NULL
-- 	, dFchControl datetime        NOT NULL
-- 	)

-- 	/* El objeto 'dbo.NET_CatalogoRed' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.NET_CatalogoRed' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.NET_CatalogoRed' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.NET_CatalogoRed'. */

-- CREATE TABLE dbo.NET_CatalogoRed
-- 	( nCodElemento int             NOT NULL
-- 	, cFabricante  varchar(50)         NULL
-- 	, cModelo      varchar(100)        NULL
-- 	, cDescripcion varchar(250)        NULL
-- 	, nCodTipoEdR  smallint            NULL
-- 	, nBocasRed    smallint            NULL
-- 	)

-- 	/* El objeto 'dbo.NET_Componentes' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.NET_Componentes' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.NET_Componentes'. */

-- CREATE TABLE dbo.NET_Componentes
-- 	( nCodElectronicaRed int             NOT NULL
-- 	, nCodComponente     int                 NULL
-- 	, cSerie             varchar(50)         NULL
-- 	, cProducto          varchar(50)         NULL
-- 	, cPart              varchar(50)         NULL
-- 	, cTipo              varchar(50)         NULL
-- 	, cMAC               varchar(50)         NULL
-- 	, dFchDescarga       datetime            NULL
-- 	)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.NET_DescargaEDR' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.NET_DescargaEDR'. */

-- CREATE TABLE dbo.NET_DescargaEDR
-- 	( nCodElectronicaRed int             NOT NULL
-- 	, cDireccionIP       nvarchar(32)    NOT NULL
-- 	, cNombre            varchar(50)         NULL
-- 	, cComando           varchar(50)     NOT NULL
-- 	, cResultado         varchar(-1)         NULL
-- 	, cTiempoRespuesta   nvarchar(30)        NULL
-- 	, dFchDescarga       datetime        NOT NULL
-- 	)

-- ALTER TABLE dbo.NET_DescargaEDR ADD CONSTRAINT PK_NET_DescargaEDR_IP PRIMARY KEY clustered (nCodElectronicaRed, cComando, dFchDescarga)

-- 	/* El objeto 'dbo.NET_ElectronicaRed' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.NET_ElectronicaRed' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.NET_ElectronicaRed' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.NET_ElectronicaRed'. */

-- CREATE TABLE dbo.NET_ElectronicaRed
-- 	( nCodElectronicaRed int             NOT NULL
-- 	, nCodComponente     int                 NULL
-- 	, nSerie             varchar(50)         NULL
-- 	, sProducto          varchar(50)         NULL
-- 	, sPart              varchar(50)         NULL
-- 	)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.NET_InterfaceStatus' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.NET_InterfaceStatus'. */

-- CREATE TABLE dbo.NET_InterfaceStatus
-- 	( nCodElectronicaRed int             NOT NULL
-- 	, cDireccionIP       varchar(16)     NOT NULL
-- 	, cPort              varchar(50)     NOT NULL
-- 	, cName              varchar(50)         NULL
-- 	, cStatus            varchar(50)         NULL
-- 	, cVlan              varchar(50)         NULL
-- 	, cOtros             varchar(250)        NULL
-- 	, dFchDescarga       datetime        NOT NULL
-- 	, dFchControl        datetime        NOT NULL
-- 	)

-- CREATE  nonclustered INDEX IX_NET_Istatus_DirIP on dbo.NET_InterfaceStatus(cDireccionIP)

-- CREATE  nonclustered INDEX IX_NET_Istatus_FchControl on dbo.NET_InterfaceStatus(dFchControl)

-- ALTER TABLE dbo.NET_InterfaceStatus ADD CONSTRAINT PK_NET_InterfaceStatus_1 PRIMARY KEY clustered (nCodElectronicaRed, cPort, dFchDescarga)

-- 	/* El objeto 'dbo.NET_Inventario' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.NET_Inventario' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.NET_Inventario'. */

-- CREATE TABLE dbo.NET_Inventario
-- 	( nCodElectronicaRed int             NOT NULL
-- 	, cName              varchar(50)         NULL
-- 	, cDescr             varchar(50)         NULL
-- 	, cPID               varchar(50)         NULL
-- 	, cSN                varchar(50)         NULL
-- 	, dFchDescarga       datetime            NULL
-- 	)

-- 	/* El objeto 'dbo.NET_PuertosVlanes' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.NET_PuertosVlanes' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.NET_PuertosVlanes' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.NET_PuertosVlanes'. */

-- CREATE TABLE dbo.NET_PuertosVlanes
-- 	( nCodElectronicaRed int             NOT NULL
-- 	, cVlan              varchar(50)     NOT NULL
-- 	, cPort              varchar(20)     NOT NULL
-- 	, dFchDescarga       datetime        NOT NULL
-- 	, dFchControl        datetime        NOT NULL
-- 	)

-- 	/* El objeto 'dbo.NET_VersionesEDR' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.NET_VersionesEDR' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.NET_VersionesEDR'. */

-- CREATE TABLE dbo.NET_VersionesEDR
-- 	( nCodElectronicaRed int             NOT NULL
-- 	, cSoft              varchar(300)        NULL
-- 	, cVersion           varchar(300)        NULL
-- 	, cRelease           varchar(300)        NULL
-- 	, dFchDescarga       datetime        NOT NULL
-- 	)

-- 	/* El objeto 'dbo.NET_VlanBrief' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.NET_VlanBrief' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.NET_VlanBrief' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.NET_VlanBrief'. */

-- CREATE TABLE dbo.NET_VlanBrief
-- 	( nCodElectronicaRed int             NOT NULL
-- 	, cVlan              varchar(50)     NOT NULL
-- 	, cPorts             varchar(-1)     NOT NULL
-- 	, cName              varchar(50)         NULL
-- 	, cStatus            varchar(50)         NULL
-- 	, dFchDescarga       datetime        NOT NULL
-- 	, dFchControl        datetime        NOT NULL
-- 	)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.nodeDetailEDR' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.nodeDetailEDR'. */

-- CREATE TABLE dbo.nodeDetailEDR
-- 	( Id            bigint          NOT NULL
-- 	, Name          varchar(50)     NOT NULL
-- 	, cIP           varchar(50)         NULL
-- 	, cPlatform     varchar(50)         NULL
-- 	, cCapabilities varchar(100)        NULL
-- 	, nCodSede      int                 NULL
-- 	, nCodCampus    int                 NULL
-- 	, cSede         varchar(100)        NULL
-- 	, cDireccion    varchar(100)        NULL
-- 	, nPlanta       real                NULL
-- 	, cGrupo        varchar(15)         NULL
-- 	, nLinea        int                 NULL
-- 	, nNumCorto     int                 NULL
-- 	, cDisplay      varchar(50)         NULL
-- 	, cTipoLinDatos varchar(50)         NULL
-- 	, dFchControl   datetime        NOT NULL
-- 	)

-- CREATE  nonclustered INDEX IX_nodeDetailEDR_NAME on dbo.nodeDetailEDR(Name)

-- ALTER TABLE dbo.nodeDetailEDR ADD CONSTRAINT PK_nodeDetailEDR PRIMARY KEY clustered (Id)

-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.nodeEDR'. */

-- CREATE TABLE dbo.nodeEDR
-- 	( id            bigint          NOT NULL
-- 	, Name          varchar(50)     NOT NULL
-- 	, cPlatform     varchar(100)        NULL
-- 	, cCapabilities varchar(100)        NULL
-- 	)

-- CREATE  nonclustered INDEX IX_nodeEDR_Name on dbo.nodeEDR(Name)

-- ALTER TABLE dbo.nodeEDR ADD CONSTRAINT PK_nodeEDR PRIMARY KEY clustered (id)

-- 	/* El objeto 'dbo.nodeSite' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.nodeSite' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.nodeSite' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.nodeSite'. */

-- CREATE TABLE dbo.nodeSite
-- 	( id   int             NOT NULL
-- 	, Name varchar(131)        NULL
-- 	)

-- 	/* El objeto 'dbo.ObjetosBDBackup' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.ObjetosBDBackup' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.ObjetosBDBackup' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.ObjetosBDBackup'. */

-- CREATE TABLE dbo.ObjetosBDBackup
-- 	( cObjeto     varchar(50)     NOT NULL
-- 	, cDesc       varchar(-1)     NOT NULL
-- 	, dFchControl datetime        NOT NULL
-- 	)

-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.OLD_TModelosTerminales'. */

-- CREATE TABLE dbo.OLD_TModelosTerminales
-- 	( id      int             NOT NULL
-- 	, Modelo  varchar(150)    NOT NULL
-- 	, Gama    varchar(50)         NULL
-- 	, bImagen image(16)           NULL
-- 	)

-- CREATE unique nonclustered INDEX IX_TModelosTerminales on dbo.OLD_TModelosTerminales(Modelo)

-- ALTER TABLE dbo.OLD_TModelosTerminales ADD CONSTRAINT PK_TModelosTerminales PRIMARY KEY clustered (id)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.OLD_TTerminalesMovil' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.OLD_TTerminalesMovil'. */

-- CREATE TABLE dbo.OLD_TTerminalesMovil
-- 	( cImei                varchar(15)     NOT NULL
-- 	, nLineaMovil          int             NOT NULL
-- 	, nCodTipTerm          int             NOT NULL
-- 	, dFechaEntrega        smalldatetime       NULL
-- 	, dFechaDevol          smalldatetime       NULL
-- 	, Gama                 varchar(50)         NULL
-- 	, cObserva             varchar(200)        NULL
-- 	, nCodModelo           int             NOT NULL
-- 	, bActivo              bit             NOT NULL
-- 	, cCContrato           varchar(50)         NULL
-- 	, cIdAfaria            varchar(10)         NULL
-- 	, dFchBloqueo          datetime            NULL
-- 	, cUsuarioAlta         varchar(10)         NULL
-- 	, dFchAlta             smalldatetime       NULL
-- 	, cUsuarioModificacion varchar(10)         NULL
-- 	, dFchModificacion     smalldatetime       NULL
-- 	)

-- ALTER TABLE dbo.OLD_TTerminalesMovil ADD CONSTRAINT PK_TTerminalesMovil PRIMARY KEY clustered (cImei, nLineaMovil)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.PLAN_DEPENDENCIAS' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.PLAN_DEPENDENCIAS'. */

-- CREATE TABLE dbo.PLAN_DEPENDENCIAS
-- 	( DEPENDENCIA     nvarchar(24)    NOT NULL
-- 	, DENOMINACION    nvarchar(160)   NOT NULL
-- 	, DOMICILIO       nvarchar(80)    NOT NULL
-- 	, TELEFONO1       nvarchar(18)    NOT NULL
-- 	, TELEFONO2       nvarchar(18)    NOT NULL
-- 	, TELEFONO3       nvarchar(18)    NOT NULL
-- 	, TELEFONO4       nvarchar(18)    NOT NULL
-- 	, EMAIL           nvarchar(160)   NOT NULL
-- 	, FAX             nvarchar(18)    NOT NULL
-- 	, MOVIL           nvarchar(18)    NOT NULL
-- 	, DEN_ABREVIADA   nvarchar(52)    NOT NULL
-- 	, TELEFONO1_VER   nvarchar(2)     NOT NULL
-- 	, TELEFONO2_VER   nvarchar(2)     NOT NULL
-- 	, TELEFONO3_VER   nvarchar(2)     NOT NULL
-- 	, TELEFONO4_VER   nvarchar(2)     NOT NULL
-- 	, EMAIL_VER       nvarchar(2)     NOT NULL
-- 	, FAX_VER         nvarchar(2)     NOT NULL
-- 	, MOVIL_VER       nvarchar(2)     NOT NULL
-- 	, TIPO_NUDO       nvarchar(2)     NOT NULL
-- 	, FCH_ALTA        datetime        NOT NULL
-- 	, FCH_EFECTO      datetime        NOT NULL
-- 	, FCH_ACTUALIZ    datetime        NOT NULL
-- 	, NUM_ORDEN       smallint        NOT NULL
-- 	, ID_UNIDAD       int             NOT NULL
-- 	, ID_UNIDAD_PADRE int                 NULL
-- 	, TIPO_UNIDAD     nvarchar(4)         NULL
-- 	, SUBTIPO_UNIDAD  nvarchar(2)         NULL
-- 	, CLS_VIAL        nvarchar(48)        NULL
-- 	, NOM_VIAL        nvarchar(144)       NULL
-- 	, NOM_APP         nvarchar(6)         NULL
-- 	, NUM_APP         nvarchar(12)        NULL
-- 	, CAL_APP         nvarchar(4)         NULL
-- 	, COD_POST        nvarchar(10)        NULL
-- 	, PAIS            nvarchar(52)        NULL
-- 	, POBLACIÓN      nvarchar(140)       NULL
-- 	, PROVINCIA       nvarchar(50)        NULL
-- 	, MUNICIPIO       nvarchar(80)        NULL
-- 	, PTO_AUTORIZANTE int                 NULL
-- 	, CENTRO_TRABAJO  nvarchar(16)        NULL
-- 	, ID_AREA_JM_OOAA nvarchar(16)        NULL
-- 	, dFchControl     datetime        NOT NULL
-- 	)

-- CREATE  nonclustered INDEX IX_PLAN_DEPENDENCIAS_ID_UNIDAD on dbo.PLAN_DEPENDENCIAS(ID_UNIDAD)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.PLAN_PLANTILLA' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.PLAN_PLANTILLA'. */

-- CREATE TABLE dbo.PLAN_PLANTILLA
-- 	( PUESTO_PTO            int             NOT NULL
-- 	, DEN_PUESTO            nvarchar(80)        NULL
-- 	, TIPO_PTO              nvarchar(2)     NOT NULL
-- 	, ID_UNIDAD_ADSCRIPCION int             NOT NULL
-- 	, ADSCRIPCION_PTO       nvarchar(24)    NOT NULL
-- 	, NUMPER                int             NOT NULL
-- 	, TIP_DOCUMEN_PER       nvarchar(2)     NOT NULL
-- 	, NUM_DOCUMEN_PER       nvarchar(16)    NOT NULL
-- 	, CLS_DOCUMEN_PER       nvarchar(4)     NOT NULL
-- 	, APELLIDO1_PER         nvarchar(50)    NOT NULL
-- 	, APELLIDO2_PER         nvarchar(50)    NOT NULL
-- 	, NOMBRE_PER            nvarchar(40)    NOT NULL
-- 	, EMAIL_PER             nvarchar(160)   NOT NULL
-- 	, DIVISION              nvarchar(8)         NULL
-- 	, SITUACION             nvarchar(4)         NULL
-- 	, MODALIDAD             nvarchar(4)         NULL
-- 	, TELEFONO1_PTO         nvarchar(18)    NOT NULL
-- 	, TELEFONO2_PTO         nvarchar(18)    NOT NULL
-- 	, TELEFONO3_PTO         nvarchar(18)    NOT NULL
-- 	, FAX_PTO               nvarchar(18)    NOT NULL
-- 	, MOVIL_PER             nvarchar(18)    NOT NULL
-- 	, AREA_PER              nvarchar(6)     NOT NULL
-- 	, GRUPO_PTO             nvarchar(24)    NOT NULL
-- 	, NIVEL_PTO             nvarchar(4)     NOT NULL
-- 	, dFchControl           datetime            NULL
-- 	)

-- CREATE  nonclustered INDEX IX_PLAN_PLANTILLA_NUM_DOCUMEN_PER on dbo.PLAN_PLANTILLA(NUM_DOCUMEN_PER)

-- CREATE  nonclustered INDEX IX_PLAN_PLANTILLA_NUMPER on dbo.PLAN_PLANTILLA(NUMPER)

-- 	/* El objeto 'dbo.PlanTMP' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.PlanTMP' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.PlanTMP' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.PlanTMP'. */

-- CREATE TABLE dbo.PlanTMP
-- 	( nPagina int                 NULL
-- 	, cPlan   varchar(-1)         NULL
-- 	)

-- 	/* El objeto 'dbo.Query' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.Query' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.Query' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.Query'. */

-- CREATE TABLE dbo.Query
-- 	( cIMEI                        varchar(15)         NULL
-- 	, cClientFriendlyName          nvarchar(40)        NULL
-- 	, nIdEntorno                   int             NOT NULL
-- 	, nIdGrupo                     int             NOT NULL
-- 	, cAllowUserProfiles           varchar(8)          NULL
-- 	, cAllowUserPolicyChanges      varchar(8)          NULL
-- 	, cPasswordHidden              varchar(8)          NULL
-- 	, cPromptCredentialsEnabled    varchar(8)          NULL
-- 	, cTlsCertificateSecurityLevel varchar(8)          NULL
-- 	, cMinimumRequiredSecurity     varchar(30)         NULL
-- 	)

-- 	/* El objeto 'dbo.RangosGrandes' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.RangosGrandes' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.RangosGrandes' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.RangosGrandes'. */

-- CREATE TABLE dbo.RangosGrandes
-- 	( EDIFICIO       nvarchar(510)       NULL
-- 	, UBICACIÓN     nvarchar(510)       NULL
-- 	, DESCRIP        nvarchar(510)       NULL
-- 	, Zona 1-7       nvarchar(510)       NULL
-- 	, IX-EDIF        float               NULL
-- 	, HOSTS          nvarchar(510)       NULL
-- 	, GW Zona 1-7    nvarchar(510)       NULL
-- 	, DESCRIP1       nvarchar(510)       NULL
-- 	, Mng-Net        nvarchar(510)       NULL
-- 	, IX-EDIF1       float               NULL
-- 	, HOSTS1         nvarchar(510)       NULL
-- 	, GW Mng-Net     nvarchar(510)       NULL
-- 	, sedeplanta     nvarchar(510)       NULL
-- 	, TieneRack      float               NULL
-- 	, PlantaRack     float               NULL
-- 	, SEDE           int                 NULL
-- 	, Planta_para_IP float               NULL
-- 	, CARGAR         nvarchar(510)       NULL
-- 	, Literal        nvarchar(510)       NULL
-- 	, Observaciones  nvarchar(510)       NULL
-- 	)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.Rel_Usuarios' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.Rel_Usuarios'. */

-- CREATE TABLE dbo.Rel_Usuarios
-- 	( Usuario varchar(15)     NOT NULL
-- 	)

-- ALTER TABLE dbo.Rel_Usuarios ADD CONSTRAINT PK_Rel_Usuarios PRIMARY KEY clustered (Usuario)

-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.SD_TiposAcometidas'. */

-- CREATE TABLE dbo.SD_TiposAcometidas
-- 	( IdAcometida  smallint        NOT NULL
-- 	, cDescripcion varchar(20)     NOT NULL
-- 	)

-- ALTER TABLE dbo.SD_TiposAcometidas ADD CONSTRAINT PK_SD_TIPOSACOMETIDAS PRIMARY KEY clustered (IdAcometida)

-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.SD_TiposCableadoV'. */

-- CREATE TABLE dbo.SD_TiposCableadoV
-- 	( IdVertical   smallint        NOT NULL
-- 	, cDescripcion varchar(20)     NOT NULL
-- 	)

-- ALTER TABLE dbo.SD_TiposCableadoV ADD CONSTRAINT PK_SD_TIPOSCABLEADOSV PRIMARY KEY clustered (IdVertical)

-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.SD_Ubicaciones'. */

-- CREATE TABLE dbo.SD_Ubicaciones
-- 	( IdUbicacion  smallint        NOT NULL
-- 	, cDescripcion varchar(20)     NOT NULL
-- 	)

-- ALTER TABLE dbo.SD_Ubicaciones ADD CONSTRAINT PK_SD_UBICACIONES PRIMARY KEY clustered (IdUbicacion)

-- 	/* El objeto 'dbo.SD_Visitas' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.SD_Visitas' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.SD_Visitas'. */

-- CREATE TABLE dbo.SD_Visitas
-- 	( nCodVisita       int             NOT NULL
-- 	, ID_VISITA        int             NOT NULL
-- 	, nCodSede         int                 NULL
-- 	, Mutisede         bit             NOT NULL
-- 	, FotoExterior     bit             NOT NULL
-- 	, Arqueta          bit             NOT NULL
-- 	, FotoArqueta      bit             NOT NULL
-- 	, Acometida        smallint            NULL
-- 	, FotoAcometida    bit             NOT NULL
-- 	, CableadoH        bit             NOT NULL
-- 	, CategiraH        nvarchar(60)        NULL
-- 	, CableadoVertical smallint            NULL
-- 	, Canalizacion     bit             NOT NULL
-- 	, PTRO             bit             NOT NULL
-- 	, PTROFacil        bit             NOT NULL
-- 	, PTROOtros        nvarchar(100)       NULL
-- 	, FotoPTRO         bit             NOT NULL
-- 	, AccesoFO         nvarchar(100)       NULL
-- 	, RITI             bit             NOT NULL
-- 	, EnchufesOcupados int                 NULL
-- 	, EnchufesLibres   int                 NULL
-- 	, Centralita       bit             NOT NULL
-- 	, Modelo           int                 NULL
-- 	, FotoCentralita   bit             NOT NULL
-- 	, Ubicacion        smallint            NULL
-- 	, Regleta          bit             NOT NULL
-- 	, FotoRegleta      bit             NOT NULL
-- 	, ExtensionesVoz   nvarchar(100)       NULL
-- 	, NumRTC           int                 NULL
-- 	, NumFax           int                 NULL
-- 	, Tarificador      bit             NOT NULL
-- 	, Trunking         bit             NOT NULL
-- 	, COMSAT           bit             NOT NULL
-- 	, RackDatos        bit             NOT NULL
-- 	, FotoRack         bit             NOT NULL
-- 	, CercaniaRack     bit             NOT NULL
-- 	, MetroRack        int                 NULL
-- 	, RosetasVoz       int                 NULL
-- 	, RosetasDatos     int                 NULL
-- 	, RosetasVozDatos  int                 NULL
-- 	, FotoRosetas      bit             NOT NULL
-- 	, Router           nvarchar(100)       NULL
-- 	, FotoRouter       bit             NOT NULL
-- 	, BocasOcupadas    int                 NULL
-- 	, BocasLibres      int                 NULL
-- 	, BocasLuz         int                 NULL
-- 	, FotoBocas        bit             NOT NULL
-- 	, NumRDSI          int                 NULL
-- 	, WIFIint          bit             NOT NULL
-- 	, WIFIext          bit             NOT NULL
-- 	, NumPCs           int                 NULL
-- 	, Observaciones    nvarchar(500)       NULL
-- 	, Operador         nvarchar(100)       NULL
-- 	, Fecha            datetime            NULL
-- 	)

-- 	/* El objeto 'dbo.shInternetProtocol' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.shInternetProtocol' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.shInternetProtocol'. */

-- CREATE TABLE dbo.shInternetProtocol
-- 	( cDevice      varchar(25)     NOT NULL
-- 	, cIp          varchar(25)     NOT NULL
-- 	, cInterfaz    varchar(25)     NOT NULL
-- 	, nLineSt      int             NOT NULL
-- 	, nProtocolSt  int             NOT NULL
-- 	, cRed         varchar(25)         NULL
-- 	, dFchDescarga datetime        NOT NULL
-- 	, dFchControl  datetime        NOT NULL
-- 	)

-- 	/* El objeto 'dbo.shIpInterfaces' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.shIpInterfaces' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.shIpInterfaces'. */

-- CREATE TABLE dbo.shIpInterfaces
-- 	( cDevice      varchar(25)     NOT NULL
-- 	, cIp          varchar(25)     NOT NULL
-- 	, cInterfaz    varchar(25)     NOT NULL
-- 	, nLineSt      int             NOT NULL
-- 	, nProtocolSt  int             NOT NULL
-- 	, cRed         varchar(25)         NULL
-- 	, dFchDescarga datetime        NOT NULL
-- 	, dFchControl  datetime        NOT NULL
-- 	)

-- 	/* El objeto 'dbo.SICAM_DIRECCIONES' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.SICAM_DIRECCIONES' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.SICAM_DIRECCIONES'. */

-- CREATE TABLE dbo.SICAM_DIRECCIONES
-- 	( SICAM_txt_Codigo_direccion    varchar(25)         NULL
-- 	, SICAM_txt_direccion_compuesta varchar(300)        NULL
-- 	, SICAM_txt_Tipo_via            varchar(25)         NULL
-- 	, SICAM_txt_Nombre_de_calle     varchar(255)        NULL
-- 	, SICAM_txt_Numero_calle        varchar(25)         NULL
-- 	, SICAM_txt_Codigo_postal       varchar(5)          NULL
-- 	, SICAM_txt_zona_actuacion      varchar(255)        NULL
-- 	, SICAM_txt_zona_grupo          varchar(255)        NULL
-- 	, SICAM_txt_zona_grupo_id       varchar(255)        NULL
-- 	, SICAM_txt_CodigoNDP           varchar(255)        NULL
-- 	, dFchControl                   datetime        NOT NULL
-- 	)

-- 	/* El objeto 'dbo.SICAM_GESLICO_LISTA_SERVICIO_EXTENDIDO' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.SICAM_GESLICO_LISTA_SERVICIO_EXTENDIDO' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.SICAM_GESLICO_LISTA_SERVICIO_EXTENDIDO'. */

-- CREATE TABLE dbo.SICAM_GESLICO_LISTA_SERVICIO_EXTENDIDO
-- 	( Remitente                        varchar(254)        NULL
-- 	, Fecha_de_creación               int             NOT NULL
-- 	, Última_modificación_realizada_ varchar(254)    NOT NULL
-- 	, Fecha_de_modificación           int             NOT NULL
-- 	, Remedy_Login_ID                  varchar(254)        NULL
-- 	, SICAM_txt_Segundo_apellido       varchar(25)         NULL
-- 	, SICAM_txt_Primer_apellido        varchar(25)         NULL
-- 	, SICAM_txt_area_personal          varchar(25)         NULL
-- 	, First_Name                       varchar(30)         NULL
-- 	, SICAM_lst_Tipo_VIP               varchar(30)         NULL
-- 	, dFchControl                      datetime        NOT NULL
-- 	)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.SICAM_GESLICO_TICKET_ACTUACIONES' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.SICAM_GESLICO_TICKET_ACTUACIONES'. */

-- CREATE TABLE dbo.SICAM_GESLICO_TICKET_ACTUACIONES
-- 	( ID_Ticket                varchar(15)     NOT NULL
-- 	, Categorizacion_Producto1 varchar(60)         NULL
-- 	, Telefono_Largo           int                 NULL
-- 	, Notas                    varchar(-1)         NULL
-- 	, Fecha_registro           datetime            NULL
-- 	, Tipo_servicio            varchar(50)         NULL
-- 	, dFchControl              datetime        NOT NULL
-- 	)

-- ALTER TABLE dbo.SICAM_GESLICO_TICKET_ACTUACIONES ADD CONSTRAINT PK_SICAM_GESLICO_TICKET_ACTUACIONES PRIMARY KEY clustered (ID_Ticket)

	/* El objeto 'dbo.SICAM_PERSONAS_GRUPOS' no tiene ningún índice o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.SICAM_PERSONAS_GRUPOS' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.SICAM_PERSONAS_GRUPOS'. */

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

-- 	/* El objeto 'dbo.SMS' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.SMS' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.SMS' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.SMS'. */

-- CREATE TABLE dbo.SMS
-- 	( LINEA            int                 NULL
-- 	, Nº EXT          float               NULL
-- 	, TIPO DE TRÁFICO nvarchar(510)       NULL
-- 	, Nº LLAMADAS     float               NULL
-- 	)

-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.SMSAgenda'. */

-- CREATE TABLE dbo.SMSAgenda
-- 	( id          int             NOT NULL
-- 	, cNumero     varchar(20)     NOT NULL
-- 	, cNombre     varchar(100)    NOT NULL
-- 	, cNotas      text            NULL
-- 	, idUsuario   int             NOT NULL
-- 	, dFchControl datetime        NOT NULL
-- 	)

-- ALTER TABLE dbo.SMSAgenda ADD CONSTRAINT PK_SMSAgenda PRIMARY KEY clustered (id)

-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.SMSApps'. */

-- CREATE TABLE dbo.SMSApps
-- 	( id         int             NOT NULL
-- 	, cAppMentes varchar(50)     NOT NULL
-- 	, cPassword  varchar(50)     NOT NULL
-- 	, nLimiteSMS int                 NULL
-- 	)

-- CREATE unique nonclustered INDEX IX_SMSApps on dbo.SMSApps(cAppMentes)

-- ALTER TABLE dbo.SMSApps ADD CONSTRAINT PK_SMSApps PRIMARY KEY clustered (id)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.SMSEnviadosRecibidos' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.SMSEnviadosRecibidos'. */

-- CREATE TABLE dbo.SMSEnviadosRecibidos
-- 	( id                      int             NOT NULL
-- 	, cNumero                 varchar(20)     NOT NULL
-- 	, cNombre                 varchar(100)    NOT NULL
-- 	, cMensaje                text        NOT NULL
-- 	, cIdentificadorMensaje   varchar(20)     NOT NULL
-- 	, cCodPasarela            varchar(20)         NULL
-- 	, cCodRespuesta           varchar(20)         NULL
-- 	, dFechaRespuestaPasarela datetime            NULL
-- 	, cEstadoEnvio            varchar(50)         NULL
-- 	, dFechaNotificacion      datetime            NULL
-- 	, cEstadoNotificacion     varchar(50)         NULL
-- 	, idUsuario               int             NOT NULL
-- 	, dFchControl             datetime        NOT NULL
-- 	)

-- ALTER TABLE dbo.SMSEnviadosRecibidos ADD CONSTRAINT PK_SMSEnviadosRecibidos PRIMARY KEY clustered (id)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.SMSListaAgenda' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.SMSListaAgenda'. */

-- CREATE TABLE dbo.SMSListaAgenda
-- 	( idLista     int             NOT NULL
-- 	, idAgenda    int             NOT NULL
-- 	, dFchControl datetime        NOT NULL
-- 	)

-- ALTER TABLE dbo.SMSListaAgenda ADD CONSTRAINT PK_SMSListaAgenda PRIMARY KEY clustered (idLista, idAgenda)

-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.SMSListaContactos'. */

-- CREATE TABLE dbo.SMSListaContactos
-- 	( id           int             NOT NULL
-- 	, cNombreLista varchar(100)    NOT NULL
-- 	, idUsuario    int             NOT NULL
-- 	, dFchControl  datetime        NOT NULL
-- 	)

-- ALTER TABLE dbo.SMSListaContactos ADD CONSTRAINT PK_SMSListaContactos PRIMARY KEY clustered (id)

-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.SMSUsuarios'. */

-- CREATE TABLE dbo.SMSUsuarios
-- 	( id        int             NOT NULL
-- 	, cNombre   varchar(20)     NOT NULL
-- 	, idMentes  int             NOT NULL
-- 	, cPassword varbinary(8000) NOT NULL
-- 	, bActivo   bit             NOT NULL
-- 	)

-- ALTER TABLE dbo.SMSUsuarios ADD CONSTRAINT PK_SMSUsuarios PRIMARY KEY clustered (id)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.svrAmper_vistaenduserdevicelines' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.svrAmper_vistaenduserdevicelines'. */

-- CREATE TABLE dbo.svrAmper_vistaenduserdevicelines
-- 	( extension varchar(45)     NOT NULL
-- 	, particion varchar(45)     NOT NULL
-- 	, device    varchar(45)     NOT NULL
-- 	, enduser   varchar(45)         NULL
-- 	)

-- ALTER TABLE dbo.svrAmper_vistaenduserdevicelines ADD CONSTRAINT PK_aux_vistaenduserdevicelines PRIMARY KEY clustered (extension, particion, device)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.sysdiagrams' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.sysdiagrams'. */

-- CREATE TABLE dbo.sysdiagrams
-- 	( name         sysname         NOT NULL
-- 	, principal_id int             NOT NULL
-- 	, diagram_id   int             NOT NULL
-- 	, version      int                 NULL
-- 	, definition   varbinary(-1)       NULL
-- 	)

-- ALTER TABLE dbo.sysdiagrams ADD CONSTRAINT PK__sysdiagrams__0F624AF8 PRIMARY KEY clustered (diagram_id)

CREATE unique nonclustered INDEX UK_principal_name on dbo.sysdiagrams(principal_id, name)

	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TAcronimosSedeEDR'. */

CREATE TABLE dbo.TAcronimosSedeEDR
	( nId          int             NOT NULL
	, cCodigo      varchar(9)      NOT NULL
	, cDescripcion varchar(150)        NULL
	)

CREATE unique nonclustered INDEX IX_TAcronimosSedeEDR on dbo.TAcronimosSedeEDR(cCodigo)

ALTER TABLE dbo.TAcronimosSedeEDR ADD CONSTRAINT PK_TAcronimosSedeEDR PRIMARY KEY clustered (nId)

-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TAfariaAplicaciones_old'. */

-- CREATE TABLE dbo.TAfariaAplicaciones_old
-- 	( nId                  int             NOT NULL
-- 	, cSwName              varchar(255)    NOT NULL
-- 	, cSwVersion           varchar(50)     NOT NULL
-- 	, bActiva              int             NOT NULL
-- 	, dFchInicio           datetime        NOT NULL
-- 	, dFchFin              datetime            NULL
-- 	, cUsuarioAlta         varchar(20)     NOT NULL
-- 	, dFchAlta             datetime        NOT NULL
-- 	, cUsuarioModificacion varchar(20)         NULL
-- 	, dFchModificacion     datetime            NULL
-- 	)

-- CREATE unique nonclustered INDEX IX_TAfariaAplicaciones on dbo.TAfariaAplicaciones_old(cSwName, cSwVersion)

-- ALTER TABLE dbo.TAfariaAplicaciones_old ADD CONSTRAINT PK_TAfariaAplicaciones PRIMARY KEY clustered (nId)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TAfariaAplicacionesInstaladas' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TAfariaAplicacionesInstaladas'. */

-- CREATE TABLE dbo.TAfariaAplicacionesInstaladas
-- 	( nIdEntorno           int             NOT NULL
-- 	, nIdGrupo             int             NOT NULL
-- 	, cSoftwareName        varchar(255)        NULL
-- 	, cSoftwareVersion     varchar(80)         NULL
-- 	, bActiva              int             NOT NULL
-- 	, dFchInicio           datetime        NOT NULL
-- 	, dFchFin              datetime            NULL
-- 	, cCanal               varchar(50)         NULL
-- 	, cVersionCode         varchar(50)         NULL
-- 	, cUsuarioAlta         varchar(20)     NOT NULL
-- 	, dFchAlta             datetime        NOT NULL
-- 	, cUsuarioModificacion varchar(20)         NULL
-- 	, dFchModificacion     datetime            NULL
-- 	)

-- ALTER TABLE dbo.TAfariaAplicacionesInstaladas ADD CONSTRAINT PK_TAfariaAplicacionesInstaladas PRIMARY KEY clustered (nIdEntorno, nIdGrupo, dFchInicio)

-- 	/* El objeto 'dbo.TAfariaAplicacionesInstaladasBackup' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.TAfariaAplicacionesInstaladasBackup' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TAfariaAplicacionesInstaladasBackup' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TAfariaAplicacionesInstaladasBackup'. */

-- CREATE TABLE dbo.TAfariaAplicacionesInstaladasBackup
-- 	( nIdEntorno           int             NOT NULL
-- 	, nIdGrupo             int             NOT NULL
-- 	, cSoftwareName        varchar(255)    NOT NULL
-- 	, cSoftwareVersion     varchar(80)         NULL
-- 	, bActiva              int             NOT NULL
-- 	, dFchInicio           datetime            NULL
-- 	, dFchFin              datetime            NULL
-- 	, cCanal               varchar(50)         NULL
-- 	, cVersionCode         varchar(50)         NULL
-- 	, cUsuarioAlta         varchar(20)     NOT NULL
-- 	, dFchAlta             datetime        NOT NULL
-- 	, cUsuarioModificacion varchar(20)         NULL
-- 	, dFchModificacion     datetime            NULL
-- 	)

-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TAfariaAppBlackList'. */

-- CREATE TABLE dbo.TAfariaAppBlackList
-- 	( nIdEntorno   int             NOT NULL
-- 	, nIdGrupo     int             NOT NULL
-- 	, cPackageName varchar(255)    NOT NULL
-- 	)

-- ALTER TABLE dbo.TAfariaAppBlackList ADD CONSTRAINT PK_TAfariaAppBlackList PRIMARY KEY clustered (nIdEntorno, nIdGrupo, cPackageName)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TAfariaAppWhiteList' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TAfariaAppWhiteList'. */

-- CREATE TABLE dbo.TAfariaAppWhiteList
-- 	( nIdEntorno   int             NOT NULL
-- 	, nIdGrupo     int             NOT NULL
-- 	, cPackageName varchar(255)    NOT NULL
-- 	)

-- ALTER TABLE dbo.TAfariaAppWhiteList ADD CONSTRAINT PK_TAfariaAppWhiteList PRIMARY KEY clustered (nIdEntorno, nIdGrupo, cPackageName)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TAfariaBluetooth' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TAfariaBluetooth'. */

-- CREATE TABLE dbo.TAfariaBluetooth
-- 	( nIdEntorno                  int             NOT NULL
-- 	, nIdGrupo                    int             NOT NULL
-- 	, cSupported                  varchar(16)         NULL
-- 	, cStatus                     varchar(16)         NULL
-- 	, cDiscoverable               varchar(8)          NULL
-- 	, cConnectable                varchar(8)          NULL
-- 	, cOutgoingCallsAllowed       varchar(8)          NULL
-- 	, cDesktopConnectivityEnabled varchar(8)          NULL
-- 	, cDiscoverableEnabled        varchar(8)          NULL
-- 	, cPairingEnabled             varchar(8)          NULL
-- 	, cLimitedDiscoverableEnabled varchar(8)          NULL
-- 	)

-- CREATE unique nonclustered INDEX IX_TAfariaBluetooth on dbo.TAfariaBluetooth(nIdEntorno, nIdGrupo)

-- ALTER TABLE dbo.TAfariaBluetooth ADD CONSTRAINT PK_TAfariaBluetooth PRIMARY KEY clustered (nIdEntorno, nIdGrupo)

-- 	/* El objeto 'dbo.TAfariaCanales' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TAfariaCanales' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TAfariaCanales'. */

-- CREATE TABLE dbo.TAfariaCanales
-- 	( cAplicacion varchar(150)        NULL
-- 	, cCanal      varchar(50)         NULL
-- 	, dFchControl datetime        NOT NULL
-- 	)

-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TAfariaEntornos'. */

-- CREATE TABLE dbo.TAfariaEntornos
-- 	( nId          int             NOT NULL
-- 	, cEntorno     varchar(20)     NOT NULL
-- 	, cDescripcion varchar(40)         NULL
-- 	)

-- CREATE unique nonclustered INDEX IX_TAfariaEntornos on dbo.TAfariaEntornos(cEntorno)

-- ALTER TABLE dbo.TAfariaEntornos ADD CONSTRAINT PK_TAfariaEntornos PRIMARY KEY clustered (nId)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TAfariaGrupoAplicacion' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TAfariaGrupoAplicacion'. */

-- CREATE TABLE dbo.TAfariaGrupoAplicacion
-- 	( nIdGrupo      int             NOT NULL
-- 	, nIdAplicacion int             NOT NULL
-- 	, cUsuarioAlta  varchar(20)     NOT NULL
-- 	, dFchAlta      datetime        NOT NULL
-- 	)

-- ALTER TABLE dbo.TAfariaGrupoAplicacion ADD CONSTRAINT PK_TAfariaGrupoAplicacion PRIMARY KEY clustered (nIdGrupo, nIdAplicacion)

-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TAfariaGrupos'. */

-- CREATE TABLE dbo.TAfariaGrupos
-- 	( nId          int             NOT NULL
-- 	, nIdEntorno   int             NOT NULL
-- 	, cGrupo       varchar(30)     NOT NULL
-- 	, cDescripcion varchar(75)         NULL
-- 	, cPatron      varchar(10)         NULL
-- 	, cCanal       varchar(50)         NULL
-- 	)

-- CREATE unique nonclustered INDEX IX_TAfariaGrupos on dbo.TAfariaGrupos(cGrupo)

-- ALTER TABLE dbo.TAfariaGrupos ADD CONSTRAINT PK_TAfariaGrupos_1 PRIMARY KEY clustered (nId)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TAfariaLocalizacion' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TAfariaLocalizacion'. */

-- CREATE TABLE dbo.TAfariaLocalizacion
-- 	( nIdEntorno               int             NOT NULL
-- 	, nIdGrupo                 int             NOT NULL
-- 	, cLocationProviderStates  varchar(64)         NULL
-- 	, cTiene_Localización_gps varchar(2)          NULL
-- 	)

-- ALTER TABLE dbo.TAfariaLocalizacion ADD CONSTRAINT PK_TAfariaLocalizacion PRIMARY KEY clustered (nIdEntorno, nIdGrupo)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TAfariaRestricciones' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TAfariaRestricciones'. */

-- CREATE TABLE dbo.TAfariaRestricciones
-- 	( nIdEntorno                     int             NOT NULL
-- 	, nIdGrupo                       int             NOT NULL
-- 	, cIsUsbDebuggingEnabled         varchar(8)          NULL
-- 	, cIsUsbTetheringEnabled         varchar(8)          NULL
-- 	, cIsWifiTetheringEnabled        varchar(8)          NULL
-- 	, cIsMultipleUsersAllowed        varchar(8)          NULL
-- 	, cIsUnknownSourceInstallEnabled varchar(8)          NULL
-- 	, cIsRemoveDeviceAdminEnabled    varchar(8)          NULL
-- 	)

-- ALTER TABLE dbo.TAfariaRestricciones ADD CONSTRAINT PK_TAfariaRestricciones PRIMARY KEY clustered (nIdEntorno, nIdGrupo)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TAfariaRoaming' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TAfariaRoaming'. */

-- CREATE TABLE dbo.TAfariaRoaming
-- 	( nIdEntorno          int             NOT NULL
-- 	, nIdGrupo            int             NOT NULL
-- 	, cRoamingSyncEnabled varchar(8)          NULL
-- 	, cRoamingPushEnabled varchar(8)          NULL
-- 	, cAllowDataRoaming   varchar(8)          NULL
-- 	)

-- ALTER TABLE dbo.TAfariaRoaming ADD CONSTRAINT PK_TAfariaRoaming PRIMARY KEY clustered (nIdEntorno, nIdGrupo)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TAfariaSecurityPwd' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TAfariaSecurityPwd'. */

-- CREATE TABLE dbo.TAfariaSecurityPwd
-- 	( nIdEntorno             int             NOT NULL
-- 	, nIdGrupo               int             NOT NULL
-- 	, cPwdQuality            varchar(15)         NULL
-- 	, nPwdMaxLength          int                 NULL
-- 	, nPwdMinLength          int                 NULL
-- 	, nPwdMaxFailedForWipe   int                 NULL
-- 	, nPwdExpirationTimeout  int                 NULL
-- 	, cPwdActiveIsSufficient varchar(8)          NULL
-- 	, nPwdHistoryLength      int                 NULL
-- 	)

-- ALTER TABLE dbo.TAfariaSecurityPwd ADD CONSTRAINT PK_TAfariaSecurityPwd PRIMARY KEY clustered (nIdEntorno, nIdGrupo)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TAfariaWifi' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TAfariaWifi'. */

-- CREATE TABLE dbo.TAfariaWifi
-- 	( nIdEntorno                   int             NOT NULL
-- 	, nIdGrupo                     int             NOT NULL
-- 	, cAllowUserProfiles           varchar(8)          NULL
-- 	, cAllowUserPolicyChanges      varchar(8)          NULL
-- 	, cPasswordHidden              varchar(8)          NULL
-- 	, cPromptCredentialsEnabled    varchar(8)          NULL
-- 	, cTlsCertificateSecurityLevel varchar(8)          NULL
-- 	, cMinimumRequiredSecurity     varchar(30)         NULL
-- 	)

-- ALTER TABLE dbo.TAfariaWifi ADD CONSTRAINT PK_TAfariaWifi PRIMARY KEY clustered (nIdEntorno, nIdGrupo)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TAfariaWifiInfo' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TAfariaWifiInfo'. */

-- CREATE TABLE dbo.TAfariaWifiInfo
-- 	( nIdEntorno           int             NOT NULL
-- 	, nIdGrupo             int             NOT NULL
-- 	, cSSID                varchar(255)        NULL
-- 	, cNetworkLinkSecurity varchar(255)        NULL
-- 	, cDHCPEnabled         varchar(8)          NULL
-- 	, cIsNetworkBlocked    varchar(8)          NULL
-- 	)

-- ALTER TABLE dbo.TAfariaWifiInfo ADD CONSTRAINT PK_TAfariaWifiInfo PRIMARY KEY clustered (nIdEntorno, nIdGrupo)

-- 	/* El objeto 'dbo.TAlbaranesDigitalizacion' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.TAlbaranesDigitalizacion' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TAlbaranesDigitalizacion' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TAlbaranesDigitalizacion'. */

-- CREATE TABLE dbo.TAlbaranesDigitalizacion
-- 	( nNumAlbaran   int                 NULL
-- 	, nIdTerminal   int                 NULL
-- 	, dFchOperacion datetime        NOT NULL
-- 	, nLinea        int                 NULL
-- 	, cDNI          varchar(9)          NULL
-- 	, nCodUni       int                 NULL
-- 	, nCodActuacion int                 NULL
-- 	, cImei         varchar(255)        NULL
-- 	, cSerie        varchar(255)        NULL
-- 	, cAccesorios   varchar(255)        NULL
-- 	)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TAlbaranesDigitalizados' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TAlbaranesDigitalizados'. */

-- CREATE TABLE dbo.TAlbaranesDigitalizados
-- 	( nNumAlbaran int             NOT NULL
-- 	, cRuta       varchar(-1)     NOT NULL
-- 	, dFchControl datetime        NOT NULL
-- 	)

-- ALTER TABLE dbo.TAlbaranesDigitalizados ADD CONSTRAINT PK_TAlbaranesDigitalizados PRIMARY KEY clustered (nNumAlbaran)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TAlbaranMoviles' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TAlbaranMoviles'. */

-- CREATE TABLE dbo.TAlbaranMoviles
-- 	( cNumAlbaran        int             NOT NULL
-- 	, nCodActuacion      int                 NULL
-- 	, dFechaAlbaran      datetime        NOT NULL
-- 	, cElemenEntregados  varchar(-1)         NULL
-- 	, cTerminal          varchar(255)        NULL
-- 	, cSerie             varchar(255)        NULL
-- 	, cTarjeta           varchar(255)        NULL
-- 	, cAccesorios        varchar(255)        NULL
-- 	, cRutaDocumentacion varchar(-1)         NULL
-- 	, nIdMovimiento      bigint              NULL
-- 	, dFchAlta           datetime        NOT NULL
-- 	, cUsuarioAlta       varchar(25)     NOT NULL
-- 	)

-- CREATE  nonclustered INDEX IX_CodActuacion on dbo.TAlbaranMoviles(nCodActuacion)

-- ALTER TABLE dbo.TAlbaranMoviles ADD CONSTRAINT PK_TAlbaranMoviles PRIMARY KEY clustered (cNumAlbaran)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TAlmacenMoviles' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TAlmacenMoviles'. */

-- CREATE TABLE dbo.TAlmacenMoviles
-- 	( nEMEI                varchar(15)     NOT NULL
-- 	, dFechaEntrada        datetime            NULL
-- 	, dFechaSalida         datetime            NULL
-- 	, idModelo             int             NOT NULL
-- 	, idUbicacion          int             NOT NULL
-- 	, cUsuarioModificacion varchar(25)         NULL
-- 	, dFchModificacion     datetime            NULL
-- 	, cCContrato           varchar(50)         NULL
-- 	, cObservaciones       varchar(50)         NULL
-- 	)

-- ALTER TABLE dbo.TAlmacenMoviles ADD CONSTRAINT PK_Talmacenmoviles PRIMARY KEY clustered (nEMEI)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TAlmacenTerminalesMovil_sinUso' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TAlmacenTerminalesMovil_sinUso'. */

-- CREATE TABLE dbo.TAlmacenTerminalesMovil_sinUso
-- 	( nId     int             NOT NULL
-- 	, cNombre varchar(50)     NOT NULL
-- 	)

-- ALTER TABLE dbo.TAlmacenTerminalesMovil_sinUso ADD CONSTRAINT PK_TAlmacenTerminalesMovil PRIMARY KEY clustered (nId)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TAnchoBanda' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TAnchoBanda'. */

-- CREATE TABLE dbo.TAnchoBanda
-- 	( codAnchoBanda  int             NOT NULL
-- 	, nAnchoBanda    bigint          NOT NULL
-- 	, descAnchoBanda nchar(20)           NULL
-- 	)

-- ALTER TABLE dbo.TAnchoBanda ADD CONSTRAINT PK_TAnchoBanda PRIMARY KEY clustered (codAnchoBanda)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TAnillosONO' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TAnillosONO'. */

-- CREATE TABLE dbo.TAnillosONO
-- 	( nCodLinDatos int             NOT NULL
-- 	, nNumAnillo   smallint        NOT NULL
-- 	)

-- ALTER TABLE dbo.TAnillosONO ADD CONSTRAINT PK_TAnillosONO PRIMARY KEY clustered (nCodLinDatos, nNumAnillo)

-- 	/* El objeto 'dbo.TBajasDePersonas' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.TBajasDePersonas' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TBajasDePersonas' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TBajasDePersonas'. */

-- CREATE TABLE dbo.TBajasDePersonas
-- 	( cDNI          varchar(9)      NOT NULL
-- 	, nLinea        int             NOT NULL
-- 	, cApe1         varchar(40)     NOT NULL
-- 	, cApe2         varchar(40)         NULL
-- 	, cNombre       varchar(40)     NOT NULL
-- 	, nCodUni       int             NOT NULL
-- 	, cDenominacion varchar(60)     NOT NULL
-- 	, cEmpNomPuesto varchar(40)     NOT NULL
-- 	, dFecha        smalldatetime   NOT NULL
-- 	)

-- 	/* El objeto 'dbo.TBajasDePuestos' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.TBajasDePuestos' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TBajasDePuestos' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TBajasDePuestos'. */

-- CREATE TABLE dbo.TBajasDePuestos
-- 	( ncodpto int                 NULL
-- 	, nlinea  int             NOT NULL
-- 	, Dfecha  smalldatetime       NULL
-- 	)

-- 	/* El objeto 'dbo.TBajasDeUnidades' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.TBajasDeUnidades' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TBajasDeUnidades' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TBajasDeUnidades'. */

-- CREATE TABLE dbo.TBajasDeUnidades
-- 	( nCoduni        int                 NULL
-- 	, nlinea         int             NOT NULL
-- 	, cDenominacion  varchar(60)         NULL
-- 	, cDescAdicional varchar(80)         NULL
-- 	, Dfecha         smalldatetime       NULL
-- 	)

-- 	/* El objeto 'dbo.TBL_SHOWCONTIG' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.TBL_SHOWCONTIG' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TBL_SHOWCONTIG' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TBL_SHOWCONTIG'. */

-- CREATE TABLE dbo.TBL_SHOWCONTIG
-- 	( ObjectName     char(255)           NULL
-- 	, ObjectId       int                 NULL
-- 	, IndexName      char(255)           NULL
-- 	, IndexId        int                 NULL
-- 	, Lvl            int                 NULL
-- 	, CountPages     int                 NULL
-- 	, CountRows      int                 NULL
-- 	, MinRecSize     int                 NULL
-- 	, MaxRecSize     int                 NULL
-- 	, AvgRecSize     int                 NULL
-- 	, ForRecCount    int                 NULL
-- 	, Extents        int                 NULL
-- 	, ExtentSwitches int                 NULL
-- 	, AvgFreeBytes   int                 NULL
-- 	, AvgPageDensity int                 NULL
-- 	, ScanDensity    decimal(18,0)       NULL
-- 	, BestCount      int                 NULL
-- 	, ActualCount    int                 NULL
-- 	, LogicalFrag    decimal(18,0)       NULL
-- 	, ExtentFrag     decimal(18,0)       NULL
-- 	)

-- 	/* El objeto 'dbo.TCapability_CallManager' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.TCapability_CallManager' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TCapability_CallManager' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TCapability_CallManager'. */

-- CREATE TABLE dbo.TCapability_CallManager
-- 	( nCodigo float               NULL
-- 	, dFecha  datetime            NULL
-- 	)

-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TCatalogoFacturacion'. */

-- CREATE TABLE dbo.TCatalogoFacturacion
-- 	( nId                int             NOT NULL
-- 	, cCodigo            varchar(20)     NOT NULL
-- 	, cAnexo             varchar(5)      NOT NULL
-- 	, nCodTipoLote       int             NOT NULL
-- 	, cDescripcion       varchar(255)    NOT NULL
-- 	, cDetalles          varchar(-1)     NOT NULL
-- 	, cUnidad            varchar(255)    NOT NULL
-- 	, nPrecio            money           NOT NULL
-- 	, nIdFacturacionAlta int                 NULL
-- 	, cAnexoInventario   varchar(5)          NULL
-- 	, cUsuarioAlta       varchar(10)     NOT NULL
-- 	, dFchAlta           datetime        NOT NULL
-- 	, cTipo              varchar(12)         NULL
-- 	, nFijo              int                 NULL
-- 	)

-- CREATE unique nonclustered INDEX IX_TCatalogoFacturacion on dbo.TCatalogoFacturacion(cCodigo)

-- ALTER TABLE dbo.TCatalogoFacturacion ADD CONSTRAINT PK_TCatalogoFacturacion PRIMARY KEY clustered (nId)

-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TCatalogoRed'. */

-- CREATE TABLE dbo.TCatalogoRed
-- 	( nCodTipoComponente   int             NOT NULL
-- 	, cFabricante          varchar(50)     NOT NULL
-- 	, cModelo              varchar(100)    NOT NULL
-- 	, cDescripcion         varchar(250)        NULL
-- 	, nCodSuperTipo        smallint        NOT NULL
-- 	, cTipo                varchar(50)         NULL
-- 	, nBocasRed            smallint            NULL
-- 	, bGestionable         bit             NOT NULL
-- 	, cObservaciones       varchar(250)        NULL
-- 	, cUsuarioAlta         varchar(10)         NULL
-- 	, dFchAlta             smalldatetime       NULL
-- 	, cUsuarioModificacion varchar(10)         NULL
-- 	, dFchModificacion     smalldatetime       NULL
-- 	)

-- CREATE unique nonclustered INDEX IX_FabricanteModelo on dbo.TCatalogoRed(cFabricante, cModelo)

-- ALTER TABLE dbo.TCatalogoRed ADD CONSTRAINT PK_TCatalogoEdR PRIMARY KEY clustered (nCodTipoComponente)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TCatalogoSLAs' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TCatalogoSLAs'. */

-- CREATE TABLE dbo.TCatalogoSLAs
-- 	( id                  int             NOT NULL
-- 	, cCodigo             nvarchar(510)   NOT NULL
-- 	, cOperacional        nvarchar(510)       NULL
-- 	, cAplicacion         nvarchar(510)       NULL
-- 	, cDescripcion        nvarchar(510)       NULL
-- 	, cIncidenciaPeticion nvarchar(510)       NULL
-- 	, cCriticitad         nvarchar(510)       NULL
-- 	, nTiempo             int                 NULL
-- 	, cHorasDias          nvarchar(510)       NULL
-- 	, cGrupo              nvarchar(510)       NULL
-- 	, cTipoMedida         nvarchar(510)       NULL
-- 	, nHoras              int                 NULL
-- 	, nEuros              money               NULL
-- 	, nHorasPenalizacion  int                 NULL
-- 	, cCP1                nvarchar(510)       NULL
-- 	, cCP2                nvarchar(510)       NULL
-- 	, cValoracion         nvarchar(max)        NULL
-- 	, dFchControl         datetime            NULL
-- 	)

-- CREATE unique nonclustered INDEX IX_TCatalogoSLAs on dbo.TCatalogoSLAs(cCodigo)

-- ALTER TABLE dbo.TCatalogoSLAs ADD CONSTRAINT PK_TCatalogoSLAs PRIMARY KEY clustered (id)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TCategoriaRestringida' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TCategoriaRestringida'. */

-- CREATE TABLE dbo.TCategoriaRestringida
-- 	( nLinea                         int             NOT NULL
-- 	, nNumCorto                      int                 NULL
-- 	, nCodSede                       int                 NULL
-- 	, cTipoExtension                 char(2)             NULL
-- 	, nCodCobertura                  int                 NULL
-- 	, nRai                           int                 NULL
-- 	, dFechaAviso                    smalldatetime   NOT NULL
-- 	, dFechaEnvioCGP                 smalldatetime       NULL
-- 	, dFchBajaDir                    smalldatetime       NULL
-- 	, dFechaQuitarLocucionSinAsigDir smalldatetime       NULL
-- 	, Cobertura                      varchar(40)         NULL
-- 	, TipoCategoriaRestr             int                 NULL
-- 	)

-- CREATE  nonclustered INDEX _dta_index_TCategoriaRestringida_17_1299587768__K8_K1_K2_K6_K7_4_5_11 on dbo.TCategoriaRestringida(dFechaEnvioCGP, nLinea, nNumCorto, nRai, dFechaAviso)

-- ALTER TABLE dbo.TCategoriaRestringida ADD CONSTRAINT PK_TCategoriaRestringida_1 PRIMARY KEY clustered (nLinea, dFechaAviso)

-- 	/* El objeto 'dbo.TCategoriaRestringida_aux' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.TCategoriaRestringida_aux' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TCategoriaRestringida_aux' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TCategoriaRestringida_aux'. */

-- CREATE TABLE dbo.TCategoriaRestringida_aux
-- 	( nLinea                         int             NOT NULL
-- 	, nNumCorto                      int                 NULL
-- 	, nCodSede                       int                 NULL
-- 	, cTipoExtension                 char(2)             NULL
-- 	, nCodCobertura                  int                 NULL
-- 	, nRai                           int                 NULL
-- 	, dFechaAviso                    smalldatetime   NOT NULL
-- 	, dFechaEnvioCGP                 smalldatetime       NULL
-- 	, dFchBajaDir                    smalldatetime       NULL
-- 	, dFechaQuitarLocucionSinAsigDir smalldatetime       NULL
-- 	, Cobertura                      varchar(40)         NULL
-- 	, TipoCategoriaRestr             int                 NULL
-- 	)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TCategoriaTerminales' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TCategoriaTerminales'. */

-- CREATE TABLE dbo.TCategoriaTerminales
-- 	( nId          int             NOT NULL
-- 	, cCategoria   varchar(50)     NOT NULL
-- 	, cDescripcion varchar(255)    NOT NULL
-- 	)

-- ALTER TABLE dbo.TCategoriaTerminales ADD CONSTRAINT PK_TCategoriaTerminales PRIMARY KEY clustered (nId)

-- 	/* El objeto 'dbo.TCCoste' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.TCCoste' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TCCoste' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TCCoste'. */

-- CREATE TABLE dbo.TCCoste
-- 	( dependencia  varchar(12)         NULL
-- 	, denominacion varchar(60)         NULL
-- 	, CC           varchar(15)         NULL
-- 	, descripcion  varchar(40)         NULL
-- 	, ncoduni      int                 NULL
-- 	)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TCDR' o el usuario no tiene permisos para hacer referencia a tablas. */

-- CREATE TABLE dbo.TCDR
-- 	( pkId          varchar(60)     NOT NULL
-- 	, IdCallManager int             NOT NULL
-- 	, IdCall        int             NOT NULL
-- 	, DateTimeOri   int             NOT NULL
-- 	, Duracion      varchar(60)     NOT NULL
-- 	, OriNodo       int             NOT NULL
-- 	, DesNodo       int             NOT NULL
-- 	, dDateTimeOri  datetime            NULL
-- 	, dFchControl   datetime        NOT NULL
-- 	)

-- CREATE  nonclustered INDEX IX_TCDR on dbo.TCDR(pkId, IdCall, IdCallManager)

-- ALTER TABLE dbo.TCDR ADD CONSTRAINT PK_TCDR PRIMARY KEY clustered (pkId, IdCallManager, IdCall, DateTimeOri, Duracion, OriNodo, DesNodo)

-- 	/* El objeto 'dbo.TCDR_bck160114' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.TCDR_bck160114' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TCDR_bck160114' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TCDR_bck160114'. */

-- CREATE TABLE dbo.TCDR_bck160114
-- 	( PKid          varchar(60)     NOT NULL
-- 	, IdCallManager int             NOT NULL
-- 	, IdCall        int             NOT NULL
-- 	, DateTimeOri   int             NOT NULL
-- 	, Duracion      varchar(60)         NULL
-- 	, OriNodo       int                 NULL
-- 	, DesNodo       int                 NULL
-- 	)

-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TCentralitas'. */

-- CREATE TABLE dbo.TCentralitas
-- 	( nCodCentralita       int             NOT NULL
-- 	, nCodSede             int             NOT NULL
-- 	, dFechaInstalacion    datetime            NULL
-- 	, dFechaBaja           datetime            NULL
-- 	, nCodEstado           smallint        NOT NULL
-- 	, cModelo              varchar(60)         NULL
-- 	, nEnlacesT0           int                 NULL
-- 	, nNumCabecera         int                 NULL
-- 	, nTeletarificacion    int                 NULL
-- 	, nTelegestion         int                 NULL
-- 	, nCodTipoCentralita   int                 NULL
-- 	, nRAI                 int                 NULL
-- 	, nEsclavos            int                 NULL
-- 	, cObservaciones       nvarchar(max)        NULL
-- 	, nTrunkingIp          int                 NULL
-- 	, cIP                  varchar(15)         NULL
-- 	, nCOMSAT              int                 NULL
-- 	, nCOMSAT2             int                 NULL
-- 	, nCanales             int                 NULL
-- 	, bTarifica            bit             NOT NULL
-- 	, cIPCamara            varchar(15)         NULL
-- 	, cUsuarioAlta         varchar(25)         NULL
-- 	, dFchAlta             datetime            NULL
-- 	, cUsuarioModificacion varchar(25)         NULL
-- 	, dFchModificacion     datetime            NULL
-- 	)

-- CREATE  nonclustered INDEX _dta_index_TCentralitas_17_142675606__K1_K2 on dbo.TCentralitas(nCodCentralita, nCodSede)

-- CREATE  nonclustered INDEX IX_TCentralitas_CodSede on dbo.TCentralitas(nCodSede)

-- CREATE  nonclustered INDEX IX_TCentralitas_nCodTipoCentralita on dbo.TCentralitas(nCodTipoCentralita)

-- ALTER TABLE dbo.TCentralitas ADD CONSTRAINT PK_TCentralitas PRIMARY KEY clustered (nCodCentralita)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TChecklico' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TChecklico'. */

-- CREATE TABLE dbo.TChecklico
-- 	( nCodTarea         int             NOT NULL
-- 	, bEnError          bit             NOT NULL
-- 	, nTipoTarea        int             NOT NULL
-- 	, cDescripcionTarea varchar(200)        NULL
-- 	, cSolucionError    varchar(120)        NULL
-- 	, nPrioridad        smallint            NULL
-- 	, cSQL              varchar(-1)         NULL
-- 	, bErrorSQL         bit             NOT NULL
-- 	, bActiva           bit             NOT NULL
-- 	, nElemenerror      int                 NULL
-- 	, cUsuario          nvarchar(100)       NULL
-- 	, nIdUsuario        int                 NULL
-- 	, nIdSupervisor     int                 NULL
-- 	, bExcel            bit             NOT NULL
-- 	, cTabla            varchar(-1)         NULL
-- 	, dFchActualizacion datetime        NOT NULL
-- 	)

-- ALTER TABLE dbo.TChecklico ADD CONSTRAINT PK_TChecklico_auxiliar PRIMARY KEY clustered (nCodTarea)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TCiscoVLanes' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TCiscoVLanes'. */

-- CREATE TABLE dbo.TCiscoVLanes
-- 	( nCodVLAN             int             NOT NULL
-- 	, nVLANId              int                 NULL
-- 	, cNombreVLAN          varchar(50)         NULL
-- 	, cSubnet              varchar(50)         NULL
-- 	, cSubnetMask          varchar(50)         NULL
-- 	, dLastSeen            datetime            NULL
-- 	, cUsuarioAlta         varchar(50)         NULL
-- 	, dFchAlta             smalldatetime       NULL
-- 	, cUsuarioModificacion nvarchar(100)       NULL
-- 	, dFchModificacion     smalldatetime       NULL
-- 	)

-- ALTER TABLE dbo.TCiscoVLanes ADD CONSTRAINT PK_TCiscoVLanes PRIMARY KEY clustered (nCodVLAN)

-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TClasesTarjetas'. */

-- CREATE TABLE dbo.TClasesTarjetas
-- 	( cCodClase varchar(4)      NOT NULL
-- 	, cClase    varchar(20)     NOT NULL
-- 	)

-- ALTER TABLE dbo.TClasesTarjetas ADD CONSTRAINT PK_TClasesTarjetas PRIMARY KEY clustered (cCodClase)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TCMDB_TLinMoviles' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TCMDB_TLinMoviles'. */

-- CREATE TABLE dbo.TCMDB_TLinMoviles
-- 	( nLinea            nvarchar(18)    NOT NULL
-- 	, nNumCorto         nvarchar(18)        NULL
-- 	, cDNI              nvarchar(18)        NULL
-- 	, nCodUni           nvarchar(18)        NULL
-- 	, Modelo            varchar(150)        NULL
-- 	, nCodSede          nvarchar(12)        NULL
-- 	, bHorarioExtendido bit                 NULL
-- 	, bPrincipal        bit                 NULL
-- 	)

-- ALTER TABLE dbo.TCMDB_TLinMoviles ADD CONSTRAINT PK_TCMDB_TLinMoviles PRIMARY KEY clustered (nLinea)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TCMR' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TCMR'. */

-- CREATE TABLE dbo.TCMR
-- 	( pkId             varchar(40)     NOT NULL
-- 	, IdCallManager    int             NOT NULL
-- 	, IdCall           int             NOT NULL
-- 	, OriNodo          int             NOT NULL
-- 	, DesNodo          int             NOT NULL
-- 	, OriPaqSend       int                 NULL
-- 	, OriPaqLost       int                 NULL
-- 	, DesPaqSend       int                 NULL
-- 	, DesPaqLost       int                 NULL
-- 	, OriJitter        int                 NULL
-- 	, DesJitter        int                 NULL
-- 	, OriLaten         int                 NULL
-- 	, DesLaten         int                 NULL
-- 	, OriNomDisp       varchar(60)         NULL
-- 	, DisNomDisp       varchar(60)         NULL
-- 	, OriNumero        varchar(60)         NULL
-- 	, DesNumero        varchar(60)         NULL
-- 	, OriLlamada       varchar(60)         NULL
-- 	, DesLlamada       varchar(60)         NULL
-- 	, origvarVQMetrics varchar(130)        NULL
-- 	, destvarVQMetrics varchar(130)        NULL
-- 	, dFecha           datetime            NULL
-- 	)

-- CREATE  nonclustered INDEX IDX_TCMR on dbo.TCMR(pkId, dFecha)

-- ALTER TABLE dbo.TCMR ADD CONSTRAINT PK_TCMR PRIMARY KEY clustered (pkId, IdCallManager, IdCall, OriNodo, DesNodo)

-- 	/* El objeto 'dbo.TCMR_bck160114' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.TCMR_bck160114' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TCMR_bck160114' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TCMR_bck160114'. */

-- CREATE TABLE dbo.TCMR_bck160114
-- 	( PkId             varchar(40)     NOT NULL
-- 	, IdCallManager    int             NOT NULL
-- 	, IdCall           int             NOT NULL
-- 	, OriNodo          int             NOT NULL
-- 	, DesNodo          int             NOT NULL
-- 	, OriPaqSend       int                 NULL
-- 	, OriPaqLost       int                 NULL
-- 	, DesPaqSend       int                 NULL
-- 	, DesPaqLost       int                 NULL
-- 	, OriJitter        int                 NULL
-- 	, DesJitter        int                 NULL
-- 	, OriLaten         int                 NULL
-- 	, DesLaten         int                 NULL
-- 	, OriNomDisp       varchar(60)         NULL
-- 	, DisNomDisp       varchar(60)         NULL
-- 	, OriNumero        varchar(60)         NULL
-- 	, DesNumero        varchar(60)         NULL
-- 	, OriLlamada       varchar(60)         NULL
-- 	, DesLlamada       varchar(60)         NULL
-- 	, DFecha           varchar(20)         NULL
-- 	, origvarVQMetrics varchar(130)        NULL
-- 	, destvarVQMetrics varchar(130)        NULL
-- 	)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TCoberturasTeoricas' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TCoberturasTeoricas'. */

-- CREATE TABLE dbo.TCoberturasTeoricas
-- 	( Asignacion       varchar(1)      NOT NULL
-- 	, VIP              bit             NOT NULL
-- 	, Nivel            int                 NULL
-- 	, nCodUso          smallint        NOT NULL
-- 	, CategoriaTeorica varchar(50)         NULL
-- 	, CodCategoriaCGP  int                 NULL
-- 	)

-- CREATE  nonclustered INDEX IX_TCoberturasTeoricas on dbo.TCoberturasTeoricas(Asignacion, VIP, nCodUso)

-- CREATE  nonclustered INDEX IX_TCoberturasTeoricas_1 on dbo.TCoberturasTeoricas(nCodUso)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TColectorTACACS' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TColectorTACACS'. */

-- CREATE TABLE dbo.TColectorTACACS
-- 	( cIP         varchar(15)     NOT NULL
-- 	, nIntento    int             NOT NULL
-- 	, cComando    varchar(100)    NOT NULL
-- 	, cHoraInicio varchar(50)         NULL
-- 	, cHoraFin    varchar(50)         NULL
-- 	, cResultado  varchar(-1)         NULL
-- 	, dFchControl datetime        NOT NULL
-- 	)

-- CREATE  nonclustered INDEX IX_TColectorTACACS_FchControl on dbo.TColectorTACACS(dFchControl)

-- CREATE  nonclustered INDEX IX_TColectorTACACS_IP on dbo.TColectorTACACS(cIP)

-- ALTER TABLE dbo.TColectorTACACS ADD CONSTRAINT PK_TColectorTACACS PRIMARY KEY clustered (cIP, nIntento, cComando, dFchControl)

-- 	/* El objeto 'dbo.TColectorTACACS_bck160212' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.TColectorTACACS_bck160212' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TColectorTACACS_bck160212' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TColectorTACACS_bck160212'. */

-- CREATE TABLE dbo.TColectorTACACS_bck160212
-- 	( cIP         varchar(15)     NOT NULL
-- 	, nIntento    int             NOT NULL
-- 	, cComando    varchar(100)    NOT NULL
-- 	, cHoraInicio varchar(50)         NULL
-- 	, cHoraFin    varchar(50)         NULL
-- 	, cResultado  varchar(-1)         NULL
-- 	, dFchControl datetime        NOT NULL
-- 	)

-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TComponentesRed'. */

-- CREATE TABLE dbo.TComponentesRed
-- 	( nCodElectronicaRed   int                 NULL
-- 	, nCodComponente       int             NOT NULL
-- 	, nCodTipoComponente   int             NOT NULL
-- 	, cPrefijoMAC          nvarchar(100)       NULL
-- 	, nTicket              nvarchar(100)       NULL
-- 	, cSerie               nvarchar(100)       NULL
-- 	, cBien                nvarchar(100)       NULL
-- 	, cExpediente          nvarchar(100)       NULL
-- 	, cBienPrincipal       nvarchar(100)       NULL
-- 	, nCodUbicacion        int                 NULL
-- 	, nCodSede             int                 NULL
-- 	, dFchEntrada          datetime            NULL
-- 	, dFchSalida           datetime            NULL
-- 	, dFchFinGarantia      datetime            NULL
-- 	, dFchFinMantenimiento datetime            NULL
-- 	, dFchBaja             datetime            NULL
-- 	, bUsado               bit             NOT NULL
-- 	, nPrecioUnitario      money               NULL
-- 	, cObservaciones       varchar(-1)         NULL
-- 	, cUsuarioAlta         varchar(25)     NOT NULL
-- 	, dFchAlta             datetime        NOT NULL
-- 	, cUsuarioModificacion varchar(25)         NULL
-- 	, dFchModificacion     datetime            NULL
-- 	)

-- ALTER TABLE dbo.TComponentesRed ADD CONSTRAINT PK_TComponentesRed PRIMARY KEY clustered (nCodComponente)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TComponentesRedFacturacion' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TComponentesRedFacturacion'. */

-- CREATE TABLE dbo.TComponentesRedFacturacion
-- 	( nCodComponente int             NOT NULL
-- 	, nIdFacturacion int             NOT NULL
-- 	, dFchAlta       datetime        NOT NULL
-- 	, dFchBaja       datetime            NULL
-- 	, bSinCoste      bit             NOT NULL
-- 	, dFchControl    datetime        NOT NULL
-- 	, cUsuario       varchar(25)     NOT NULL
-- 	)

-- ALTER TABLE dbo.TComponentesRedFacturacion ADD CONSTRAINT PK_TComponentesRedFacturacion PRIMARY KEY clustered (nCodComponente, nIdFacturacion)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TComponentesRedFacturacionVersiones' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TComponentesRedFacturacionVersiones'. */

-- CREATE TABLE dbo.TComponentesRedFacturacionVersiones
-- 	( dFchVersion    datetime        NOT NULL
-- 	, nCodComponente int             NOT NULL
-- 	, nIdFacturacion int             NOT NULL
-- 	, dFchAlta       datetime        NOT NULL
-- 	, dFchBaja       datetime            NULL
-- 	, dFchControl    datetime        NOT NULL
-- 	)

-- ALTER TABLE dbo.TComponentesRedFacturacionVersiones ADD CONSTRAINT PK_TComponentesRedFacturacionVersiones PRIMARY KEY clustered (dFchVersion, nCodComponente, nIdFacturacion, dFchAlta)

-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TConceptosFacturas'. */

-- CREATE TABLE dbo.TConceptosFacturas
-- 	( nCodConcepto  int             NOT NULL
-- 	, cCodConcepto  varchar(10)     NOT NULL
-- 	, cDenominacion varchar(30)     NOT NULL
-- 	, cMedida       varchar(10)     NOT NULL
-- 	, bItinerancia  bit             NOT NULL
-- 	)

-- CREATE  nonclustered INDEX IX_TConceptosFacturas on dbo.TConceptosFacturas(cDenominacion)

-- ALTER TABLE dbo.TConceptosFacturas ADD CONSTRAINT PK_TConceptosFacturas PRIMARY KEY clustered (nCodConcepto)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TConsumosFijosAYRE' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TConsumosFijosAYRE'. */

-- CREATE TABLE dbo.TConsumosFijosAYRE
-- 	( nLinea          int             NOT NULL
-- 	, nNumCorto       int                 NULL
-- 	, cNumero         varchar(20)         NULL
-- 	, cNumCorto       varchar(20)         NULL
-- 	, cCobertura      varchar(40)         NULL
-- 	, cModelo         varchar(50)         NULL
-- 	, nCodUni         int             NOT NULL
-- 	, nCodUniPadre    int                 NULL
-- 	, cUnidad         varchar(100)    NOT NULL
-- 	, nCodPto         int                 NULL
-- 	, cDNI            varchar(9)          NULL
-- 	, cApellido1      varchar(40)         NULL
-- 	, cApellido2      varchar(40)         NULL
-- 	, cNombre         varchar(40)         NULL
-- 	, nEmpNumPer      int                 NULL
-- 	, cPuesto         varchar(40)         NULL
-- 	, cGrupoTpo       varchar(12)         NULL
-- 	, nNivelPto       varchar(2)          NULL
-- 	, cDireccion      varchar(100)        NULL
-- 	, dFecha          datetime        NOT NULL
-- 	, nNumLlamadasEnt int                 NULL
-- 	, nNumLlamadasMCo int             NOT NULL
-- 	, nCosteMCo       money               NULL
-- 	, nNumLlamadasMov int             NOT NULL
-- 	, nCosteMov       money               NULL
-- 	, nNumLlamadasFCo int             NOT NULL
-- 	, nNumLlamadasF   int                 NULL
-- 	, nCosteF         money               NULL
-- 	, nLineaMovil     int                 NULL
-- 	, nNumCortoMovil  int                 NULL
-- 	, cModeloMovil    varchar(150)        NULL
-- 	, cCoberturaMovil varchar(50)         NULL
-- 	, dFchControl     datetime        NOT NULL
-- 	)

-- CREATE  nonclustered INDEX IX_TConsumosFijosAYRE on dbo.TConsumosFijosAYRE(nLinea, cApellido1, cApellido2, cDNI, cNombre, nCodUni, dFecha, nEmpNumPer, nCodUniPadre)

-- 	/* El objeto 'dbo.TConsumosMovilesAYRE' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TConsumosMovilesAYRE' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TConsumosMovilesAYRE'. */

-- CREATE TABLE dbo.TConsumosMovilesAYRE
-- 	( dFecha         datetime        NOT NULL
-- 	, nLinea         int             NOT NULL
-- 	, nNumCorto      int                 NULL
-- 	, cPerfil        varchar(50)         NULL
-- 	, cCobertura     varchar(50)         NULL
-- 	, cModelo        varchar(150)        NULL
-- 	, nCodUni        int             NOT NULL
-- 	, nCodUniPadre   int                 NULL
-- 	, cUnidad        varchar(100)    NOT NULL
-- 	, nCodPto        int                 NULL
-- 	, cDNI           varchar(9)          NULL
-- 	, cApellido1     varchar(40)         NULL
-- 	, cApellido2     varchar(40)         NULL
-- 	, cNombre        varchar(40)         NULL
-- 	, nEmpNumPer     int                 NULL
-- 	, cPuesto        varchar(40)         NULL
-- 	, cGrupoTpo      varchar(2)          NULL
-- 	, nNivelPto      int                 NULL
-- 	, nImporteCuotas money               NULL
-- 	, nNumLlamadas   int             NOT NULL
-- 	, nSMS           int             NOT NULL
-- 	, nMegabytes     money           NOT NULL
-- 	, nImporteDatos  money           NOT NULL
-- 	, nImporteVoz    money           NOT NULL
-- 	, nLineaFijo     int                 NULL
-- 	, nNumCortoFijo  int                 NULL
-- 	, cModeloFijo    varchar(50)         NULL
-- 	, cCoberturaFijo varchar(50)         NULL
-- 	, dFchControl    datetime        NOT NULL
-- 	)

	/* Ninguna clave externa hace referencia a la tabla 'dbo.TContajes' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TContajes'. */

CREATE TABLE dbo.TContajes
	( nCodContaje  int             NOT NULL
	, nContador    int             NOT NULL
	, cLiteral     varchar(15)     NOT NULL
	, cSQL         varchar(-1)     NOT NULL
	, cToolTipText varchar(249)        NULL
	)

ALTER TABLE dbo.TContajes ADD CONSTRAINT PK_TContajes PRIMARY KEY clustered (nCodContaje)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TCorreosUGD' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TCorreosUGD'. */

-- CREATE TABLE dbo.TCorreosUGD
-- 	( nIdArea   int             NOT NULL
-- 	, nCodUni   int             NOT NULL
-- 	, ceMailUGD nvarchar(150)       NULL
-- 	, ceMailSGT nvarchar(150)       NULL
-- 	)

-- ALTER TABLE dbo.TCorreosUGD ADD CONSTRAINT PK_TCorreosUGD PRIMARY KEY clustered (nIdArea, nCodUni)

-- 	/* El objeto 'dbo.TDatosDetalleLineaFacturaVersiones' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.TDatosDetalleLineaFacturaVersiones' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TDatosDetalleLineaFacturaVersiones' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TDatosDetalleLineaFacturaVersiones'. */

-- CREATE TABLE dbo.TDatosDetalleLineaFacturaVersiones
-- 	( dFchVersion    datetime        NOT NULL
-- 	, nLinea         int             NOT NULL
-- 	, nIdFacturacion int             NOT NULL
-- 	, cCodigo        varchar(20)     NOT NULL
-- 	, nCodTipoLote   int             NOT NULL
-- 	, dFchAlta       datetime        NOT NULL
-- 	, dFchBaja       datetime            NULL
-- 	, cMAC           varchar(15)         NULL
-- 	)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TDatosFacturaDetalleVersiones' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TDatosFacturaDetalleVersiones'. */

-- CREATE TABLE dbo.TDatosFacturaDetalleVersiones
-- 	( dFchVersion        datetime        NOT NULL
-- 	, IDER               varchar(100)    NOT NULL
-- 	, CODIGO             varchar(20)     NOT NULL
-- 	, ANEXO              varchar(5)      NOT NULL
-- 	, LITERAL            varchar(100)        NULL
-- 	, AGRUPADOR          varchar(100)        NULL
-- 	, LOTE               int             NOT NULL
-- 	, DESCRIPCIÓN       varchar(255)    NOT NULL
-- 	, DETALLES           varchar(-1)     NOT NULL
-- 	, UNIDAD_MEDIDA      varchar(255)    NOT NULL
-- 	, PRECIO             money           NOT NULL
-- 	, ANEXO_INVENTARIO   varchar(5)          NULL
-- 	, LINEA              int                 NULL
-- 	, NUM_ADMINISTRATIVO varchar(50)         NULL
-- 	, LINEA_ASOCIADA     varchar(50)         NULL
-- 	, MAC                varchar(15)         NULL
-- 	, SEDE               int                 NULL
-- 	, DIRECCION_SEDE     varchar(100)        NULL
-- 	, CAMPUS             int                 NULL
-- 	, DIRECCION_CAMPUS   varchar(100)        NULL
-- 	, CODUNI             int                 NULL
-- 	, UNIDAD             varchar(100)        NULL
-- 	, IDAREA             int                 NULL
-- 	, AREA               varchar(100)        NULL
-- 	, dFchControl        datetime        NOT NULL
-- 	)

-- ALTER TABLE dbo.TDatosFacturaDetalleVersiones ADD CONSTRAINT PK_TDatosFacturaDetalleVersiones PRIMARY KEY clustered (dFchVersion, IDER, CODIGO)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TDatosFacturaVersiones' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TDatosFacturaVersiones'. */

-- CREATE TABLE dbo.TDatosFacturaVersiones
-- 	( dFchVersion      datetime        NOT NULL
-- 	, CODIGO           varchar(20)     NOT NULL
-- 	, ANEXO            varchar(5)      NOT NULL
-- 	, LITERAL          varchar(100)        NULL
-- 	, AGRUPADOR        varchar(100)        NULL
-- 	, LOTE             int             NOT NULL
-- 	, DESCRIPCIÓN     varchar(255)    NOT NULL
-- 	, DETALLES         varchar(-1)     NOT NULL
-- 	, ANEXO_INVENTARIO varchar(5)          NULL
-- 	, UNIDAD_MEDIDA    varchar(255)    NOT NULL
-- 	, PRECIO           money           NOT NULL
-- 	, UNIDADES         numeric(18,2)       NULL
-- 	)

-- ALTER TABLE dbo.TDatosFacturaVersiones ADD CONSTRAINT PK_TDatosFacturaVersiones PRIMARY KEY clustered (dFchVersion, CODIGO)

-- 	/* El objeto 'dbo.TDeviceNeighbour' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TDeviceNeighbour' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TDeviceNeighbour'. */

-- CREATE TABLE dbo.TDeviceNeighbour
-- 	( cDevice          varchar(100)    NOT NULL
-- 	, cIpDevice        varchar(100)    NOT NULL
-- 	, cDeviceNeighbour varchar(100)    NOT NULL
-- 	, cIpNeighbour     varchar(100)    NOT NULL
-- 	, cPlatform        varchar(100)    NOT NULL
-- 	, cCapabilities    varchar(100)    NOT NULL
-- 	, cInterface       varchar(100)    NOT NULL
-- 	, cPortID          varchar(100)    NOT NULL
-- 	, dFchControl      datetime        NOT NULL
-- 	)

-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TDeviceProfile'. */

-- CREATE TABLE dbo.TDeviceProfile
-- 	( nCodDeviceProfile    int             NOT NULL
-- 	, cDeviceName          varchar(50)     NOT NULL
-- 	, nCodModelo           int                 NULL
-- 	, cDescription         varchar(100)        NULL
-- 	, cProtocol            varchar(50)         NULL
-- 	, cUsuarioAlta         varchar(25)     NOT NULL
-- 	, dFchAlta             datetime        NOT NULL
-- 	, cUsuarioModificacion varchar(25)         NULL
-- 	, dFchModificacion     datetime            NULL
-- 	)

-- CREATE unique nonclustered INDEX IX_TDeviceProfile on dbo.TDeviceProfile(cDeviceName)

-- ALTER TABLE dbo.TDeviceProfile ADD CONSTRAINT PK_TDeviceProfile PRIMARY KEY clustered (nCodDeviceProfile)

-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TDispositivosIP'. */

-- CREATE TABLE dbo.TDispositivosIP
-- 	( nCodDispositivosIP   int             NOT NULL
-- 	, cMAC                 varchar(15)     NOT NULL
-- 	, cSerie               varchar(20)         NULL
-- 	, nCodModelo           int             NOT NULL
-- 	, cDescription         varchar(65)         NULL
-- 	, cIP                  varchar(16)         NULL
-- 	, dFchIP               datetime            NULL
-- 	, cRegistrado          varchar(16)         NULL
-- 	, dFchRegistro         datetime            NULL
-- 	, cStatus              varchar(40)         NULL
-- 	, cUserId              varchar(30)         NULL
-- 	, cUserIdExt           varchar(30)         NULL
-- 	, cDevicePool          varchar(50)         NULL
-- 	, dFchDevicePool       datetime            NULL
-- 	, nCodElectronicaRed   int                 NULL
-- 	, cPuerto              nchar(20)           NULL
-- 	, nIDVLan              int                 NULL
-- 	, cVLan                varchar(50)         NULL
-- 	, cModulo1             varchar(15)         NULL
-- 	, cModulo2             varchar(15)         NULL
-- 	, nModulos             int             NOT NULL
-- 	, cProtocolo           varchar(5)          NULL
-- 	, cFirmware            varchar(30)         NULL
-- 	, bCandado             bit             NOT NULL
-- 	, bConsumo             bit             NOT NULL
-- 	, bControlled          bit             NOT NULL
-- 	, nCodAlmacen          int                 NULL
-- 	, dFchAlmacen          datetime            NULL
-- 	, nCodEstado           int             NOT NULL
-- 	, bWeb                 bit                 NULL
-- 	, cUsuarioAlta         varchar(25)     NOT NULL
-- 	, dFchAlta             datetime        NOT NULL
-- 	, cUsuarioModificacion varchar(25)         NULL
-- 	, dFchModificacion     datetime            NULL
-- 	)

-- CREATE  nonclustered INDEX IX_cSerie on dbo.TDispositivosIP(cSerie)

-- CREATE  nonclustered INDEX IX_TDispositivosIP_249370 on dbo.TDispositivosIP(nCodEstado)

-- CREATE  nonclustered INDEX IX_TDispositivosIP_317333 on dbo.TDispositivosIP(nCodEstado)

-- CREATE  nonclustered INDEX IX_TDispositivosIP_IP on dbo.TDispositivosIP(cIP)

-- CREATE unique nonclustered INDEX IX_TDispositivosIP_MAC on dbo.TDispositivosIP(cMAC)

-- ALTER TABLE dbo.TDispositivosIP ADD CONSTRAINT PK_TDispositivosIP PRIMARY KEY clustered (nCodDispositivosIP)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TDispositivosIPFacturacion' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TDispositivosIPFacturacion'. */

-- CREATE TABLE dbo.TDispositivosIPFacturacion
-- 	( nCodDispositivosIP int             NOT NULL
-- 	, nIdFacturacion     int             NOT NULL
-- 	, dFchAlta           datetime        NOT NULL
-- 	, dFchBaja           datetime            NULL
-- 	, dFchControl        datetime        NOT NULL
-- 	, cUsuario           varchar(25)         NULL
-- 	)

-- ALTER TABLE dbo.TDispositivosIPFacturacion ADD CONSTRAINT PK_TDispositivosIPFacturacion PRIMARY KEY clustered (nCodDispositivosIP, nIdFacturacion, dFchAlta)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TDispositivosIPFacturacionVersiones' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TDispositivosIPFacturacionVersiones'. */

-- CREATE TABLE dbo.TDispositivosIPFacturacionVersiones
-- 	( dFchVersion        datetime        NOT NULL
-- 	, nCodDispositivosIP int             NOT NULL
-- 	, nIdFacturacion     int             NOT NULL
-- 	, dFchAlta           datetime        NOT NULL
-- 	, dFchBaja           datetime            NULL
-- 	, dFchControl        datetime        NOT NULL
-- 	)

-- ALTER TABLE dbo.TDispositivosIPFacturacionVersiones ADD CONSTRAINT PK_TDispositivosIPFacturacionVersiones PRIMARY KEY clustered (dFchVersion, nCodDispositivosIP, nIdFacturacion, dFchAlta)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TDispositivosIPPuestosPersonasHistorico' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TDispositivosIPPuestosPersonasHistorico'. */

-- CREATE TABLE dbo.TDispositivosIPPuestosPersonasHistorico
-- 	( cMAC       varchar(15)     NOT NULL
-- 	, cDNI       varchar(9)      NOT NULL
-- 	, cLetraDNI  varchar(1)          NULL
-- 	, cNombre    varchar(40)     NOT NULL
-- 	, cApellido1 varchar(40)     NOT NULL
-- 	, cApellido2 varchar(40)     NOT NULL
-- 	, nNumPer    int                 NULL
-- 	, nNumPuesto int                 NULL
-- 	, cPuesto    varchar(40)         NULL
-- 	, cGrupo     varchar(2)          NULL
-- 	, nNivel     int                 NULL
-- 	, nCodUni    int             NOT NULL
-- 	, cUnidad    varchar(100)    NOT NULL
-- 	, nIdArea    int             NOT NULL
-- 	, Area       varchar(100)    NOT NULL
-- 	, dFchInicio datetime        NOT NULL
-- 	, dFchFin    datetime            NULL
-- 	)

-- CREATE  nonclustered INDEX IX_TDispositivosIPPuestosPersonasHistorico_DNI on dbo.TDispositivosIPPuestosPersonasHistorico(cDNI)

-- CREATE  nonclustered INDEX IX_TDispositivosIPPuestosPersonasHistorico_MAC on dbo.TDispositivosIPPuestosPersonasHistorico(cMAC)

-- CREATE  nonclustered INDEX IX_TDispositivosIPPuestosPersonasHistorico_NumPer on dbo.TDispositivosIPPuestosPersonasHistorico(nNumPer)

-- CREATE  nonclustered INDEX IX_TDispositivosIPPuestosPersonasHistorico_NumPuesto on dbo.TDispositivosIPPuestosPersonasHistorico(nNumPuesto)

-- 	/* El objeto 'dbo.TDispositivosResumen' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TDispositivosResumen' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TDispositivosResumen'. */

-- CREATE TABLE dbo.TDispositivosResumen
-- 	( nLinea           int                 NULL
-- 	, nNumCorto        int                 NULL
-- 	, MACAddress       nvarchar(100)       NULL
-- 	, IPAddress        nvarchar(100)       NULL
-- 	, PhoneDescription nvarchar(100)       NULL
-- 	, Model            nvarchar(100)       NULL
-- 	, SwitchAddress    nvarchar(100)       NULL
-- 	, cNombre          varchar(50)         NULL
-- 	, Port             nvarchar(100)       NULL
-- 	, DevicePool       nvarchar(100)       NULL
-- 	, StatusReasonCode nvarchar(100)       NULL
-- 	, Protocol         nvarchar(100)       NULL
-- 	, VLANName         nvarchar(100)       NULL
-- 	, ApplicationId    nvarchar(100)       NULL
-- 	, LoadId           nvarchar(100)       NULL
-- 	, nCodRack         int                 NULL
-- 	, cUbicacion       text            NULL
-- 	, nPlanta          real                NULL
-- 	, nCodSede         int                 NULL
-- 	, cSede            varchar(100)        NULL
-- 	, cDireccion       varchar(100)        NULL
-- 	, dFchControl      datetime        NOT NULL
-- 	)

	/* El objeto 'dbo.TDistritos' no tiene ningún índice o el usuario no tiene permisos. */
	/* No hay ninguna restricción definida en el objeto 'dbo.TDistritos' o el usuario no tiene permisos. */
	/* Ninguna clave externa hace referencia a la tabla 'dbo.TDistritos' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TDistritos'. */

CREATE TABLE dbo.TDistritos
	( nDistrito int             NOT NULL
	, cDistrito varchar(8000)       NULL
	)

	/* Ninguna clave externa hace referencia a la tabla 'dbo.TEdificios' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TEdificios'. */

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

ALTER TABLE dbo.TEdificios ADD CONSTRAINT PK_TEdificios PRIMARY KEY clustered (nCodEdificio)

-- 	/* El objeto 'dbo.TEDRVLAN' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TEDRVLAN' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TEDRVLAN'. */

-- CREATE TABLE dbo.TEDRVLAN
-- 	( cIpEDR      varchar(20)         NULL
-- 	, cVlan       varchar(30)         NULL
-- 	, dFchControl datetime            NULL
-- 	)

-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TElectronicaRed'. */

-- CREATE TABLE dbo.TElectronicaRed
-- 	( nCodElectronicaRed   int             NOT NULL
-- 	, nCodRack             int             NOT NULL
-- 	, cIPGestion           varchar(20)         NULL
-- 	, cNombre              varchar(50)     NOT NULL
-- 	, nCodTipoEDR          smallint            NULL
-- 	, cObservaciones       varchar(-1)         NULL
-- 	, cFuenteAlimentacion  varchar(100)        NULL
-- 	, bPOE                 bit                 NULL
-- 	, bbPOE                bit                 NULL
-- 	, nNumPuertosUsuario   int                 NULL
-- 	, nPosicion            int                 NULL
-- 	, nIdGrTACACS          int                 NULL
-- 	, bGestionable         bit             NOT NULL
-- 	, bCritico             bit             NOT NULL
-- 	, cUsuarioAlta         varchar(25)     NOT NULL
-- 	, dFchAlta             datetime        NOT NULL
-- 	, cUsuarioModificacion varchar(25)         NULL
-- 	, dFchModificacion     datetime            NULL
-- 	)

-- CREATE  nonclustered INDEX IX_TElectronicaRed_IpGestion on dbo.TElectronicaRed(cIPGestion)

-- CREATE unique nonclustered INDEX IX_TElectronicaRed_Nombre on dbo.TElectronicaRed(cNombre)

-- ALTER TABLE dbo.TElectronicaRed ADD CONSTRAINT PK_TElectronicaRed PRIMARY KEY clustered (nCodElectronicaRed)

-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TEndPoints'. */

-- CREATE TABLE dbo.TEndPoints
-- 	( nCodElectronicaRed int             NOT NULL
-- 	, cEndPoint          varchar(50)     NOT NULL
-- 	, nNumCorto          int                 NULL
-- 	, nRegleta           int             NOT NULL
-- 	)

-- ALTER TABLE dbo.TEndPoints ADD CONSTRAINT PK_TEndPoints_1 PRIMARY KEY clustered (cEndPoint)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TEnlaces' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TEnlaces'. */

-- CREATE TABLE dbo.TEnlaces
-- 	( nNumAdministrativo numeric(14,0)   NOT NULL
-- 	, nCodOrigen         int             NOT NULL
-- 	, nCodDestino        int             NOT NULL
-- 	)

-- ALTER TABLE dbo.TEnlaces ADD CONSTRAINT PK_TEnlaces PRIMARY KEY clustered (nNumAdministrativo)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TEnviosCorreo' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TEnviosCorreo'. */

-- CREATE TABLE dbo.TEnviosCorreo
-- 	( nCodEnvio            int             NOT NULL
-- 	, dFchEnvio            datetime        NOT NULL
-- 	, cLanzador            varchar(200)        NULL
-- 	, cProfile             varchar(50)     NOT NULL
-- 	, cRecipients          varchar(200)    NOT NULL
-- 	, cBlindCopyRecipients varchar(200)        NULL
-- 	, cSensitivity         varchar(50)         NULL
-- 	, cBody                varchar(-1)     NOT NULL
-- 	, cBodyFormat          varchar(50)         NULL
-- 	, cSubject             varchar(200)    NOT NULL
-- 	)

-- ALTER TABLE dbo.TEnviosCorreo ADD CONSTRAINT PK_TEnviosCorreo PRIMARY KEY clustered (nCodEnvio)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TEstadisticaProyectoIP' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TEstadisticaProyectoIP'. */

-- CREATE TABLE dbo.TEstadisticaProyectoIP
-- 	( dFecha           datetime        NOT NULL
-- 	, dFchDescargaCUCM datetime            NULL
-- 	, nFicheroCUCM     int                 NULL
-- 	, dFchDescargaCUOM datetime            NULL
-- 	, nFicheroCUOM     int                 NULL
-- 	, nCUCM            int                 NULL
-- 	, nCUCM_MD         int                 NULL
-- 	, nCUCM_Sup        int                 NULL
-- 	, nCUCM_MD_Sup     int                 NULL
-- 	)

-- ALTER TABLE dbo.TEstadisticaProyectoIP ADD CONSTRAINT PK_TEstadisticaProyectoIP PRIMARY KEY clustered (dFecha)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TEstadisticasSedeProyectoIP' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TEstadisticasSedeProyectoIP'. */

-- CREATE TABLE dbo.TEstadisticasSedeProyectoIP
-- 	( dFecha          varchar(30)     NOT NULL
-- 	, nCodSede        int             NOT NULL
-- 	, nCodTipFijo     smallint        NOT NULL
-- 	, nCodSubTipoFijo smallint        NOT NULL
-- 	, cSubtipo        varchar(50)     NOT NULL
-- 	, nLineas         int                 NULL
-- 	)

-- ALTER TABLE dbo.TEstadisticasSedeProyectoIP ADD CONSTRAINT PK_TEstadisticasSedeProyectoIP PRIMARY KEY clustered (dFecha, nCodSede, nCodTipFijo, nCodSubTipoFijo)

-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TEstadoDispositivosIP'. */

-- CREATE TABLE dbo.TEstadoDispositivosIP
-- 	( nCodEstado   int             NOT NULL
-- 	, cEstado      varchar(20)     NOT NULL
-- 	, cDescripcion varchar(100)        NULL
-- 	)

-- ALTER TABLE dbo.TEstadoDispositivosIP ADD CONSTRAINT PK_TEstadoDispositivosIP PRIMARY KEY clustered (nCodEstado)

-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TEstadosCentralita'. */

-- CREATE TABLE dbo.TEstadosCentralita
-- 	( nCodEstado   smallint        NOT NULL
-- 	, cDescripcion varchar(50)     NOT NULL
-- 	)

-- ALTER TABLE dbo.TEstadosCentralita ADD CONSTRAINT PK__TEstadosCentrali__2799C73C PRIMARY KEY clustered (nCodEstado)

-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TEstadosLinea'. */

-- CREATE TABLE dbo.TEstadosLinea
-- 	( nCodEstLin   int             NOT NULL
-- 	, cCodTipLinea varchar(1)          NULL
-- 	, cDescEstado  varchar(50)         NULL
-- 	)

-- ALTER TABLE dbo.TEstadosLinea ADD CONSTRAINT PK__TEstadosLinea__5535A963 PRIMARY KEY clustered (nCodEstLin)

	/* Ninguna clave externa hace referencia a la tabla 'dbo.TEstadosSedes' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TEstadosSedes'. */

CREATE TABLE dbo.TEstadosSedes
	( nCodEstado   int             NOT NULL
	, cDescripcion varchar(50)         NULL
	)

ALTER TABLE dbo.TEstadosSedes ADD CONSTRAINT PK_TEstadosSedes PRIMARY KEY clustered (nCodEstado)

-- 	/* No hay ninguna restricción definida en el objeto 'dbo.TEstadoTarificador' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TEstadoTarificador' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TEstadoTarificador'. */

-- CREATE TABLE dbo.TEstadoTarificador
-- 	( dFchUltimaTrama datetime        NOT NULL
-- 	, nTramas         numeric(29,0)   NOT NULL
-- 	, dFchControl     datetime        NOT NULL
-- 	)

-- CREATE unique nonclustered INDEX IX_TEstadoTarificador_FchControl on dbo.TEstadoTarificador(dFchControl)

-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TEstadoTerminalesMovil'. */

-- CREATE TABLE dbo.TEstadoTerminalesMovil
-- 	( nCodEstado   int             NOT NULL
-- 	, cEstado      varchar(20)     NOT NULL
-- 	, cDescripcion varchar(100)        NULL
-- 	)

-- ALTER TABLE dbo.TEstadoTerminalesMovil ADD CONSTRAINT PK_TTEstadoTerminalesMovil PRIMARY KEY clustered (nCodEstado)

-- 	/* El objeto 'dbo.TetraAgendaISSI' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.TetraAgendaISSI' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TetraAgendaISSI' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TetraAgendaISSI'. */

-- CREATE TABLE dbo.TetraAgendaISSI
-- 	( nISSI       int             NOT NULL
-- 	, nGSSI       int                 NULL
-- 	, nCalls      int                 NULL
-- 	, nUnit       int                 NULL
-- 	, nLocation   int                 NULL
-- 	, dFchControl datetime        NOT NULL
-- 	)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TetraAuthenticationFailure' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TetraAuthenticationFailure'. */

-- CREATE TABLE dbo.TetraAuthenticationFailure
-- 	( dFecha                   datetime        NOT NULL
-- 	, cOperatingUnit           varchar(10)     NOT NULL
-- 	, cReason                  varchar(50)     NOT NULL
-- 	, cAuthenticationType      varchar(20)     NOT NULL
-- 	, cAuthentication          varchar(20)     NOT NULL
-- 	, cAuthenticationInitiator varchar(5)      NOT NULL
-- 	, cEncryptionKey           varchar(10)     NOT NULL
-- 	, cRequestingZoneID        varchar(4)      NOT NULL
-- 	, cRequestingSiteID        varchar(4)      NOT NULL
-- 	, dFchControl              datetime        NOT NULL
-- 	)

-- CREATE  nonclustered INDEX IX_TetraAuthenticationFailure_FECHA on dbo.TetraAuthenticationFailure(dFecha)

-- CREATE  nonclustered INDEX IX_TetraAuthenticationFailure_ISSI on dbo.TetraAuthenticationFailure(cOperatingUnit)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TetraAuthenticationRejected' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TetraAuthenticationRejected'. */

-- CREATE TABLE dbo.TetraAuthenticationRejected
-- 	( dFecha                   datetime        NOT NULL
-- 	, cOperatingUnit           varchar(10)     NOT NULL
-- 	, cReason                  varchar(50)     NOT NULL
-- 	, cAuthenticationType      varchar(20)     NOT NULL
-- 	, cAuthentication          varchar(20)     NOT NULL
-- 	, cAuthenticationInitiator varchar(5)      NOT NULL
-- 	, cEncryptionKey           varchar(10)     NOT NULL
-- 	, cRequestingZoneID        varchar(4)      NOT NULL
-- 	, cRequestingSiteID        varchar(4)      NOT NULL
-- 	, dFchControl              datetime        NOT NULL
-- 	)

-- CREATE  nonclustered INDEX IX_TetraAuthenticationRejected_FECHA on dbo.TetraAuthenticationRejected(dFecha)

-- CREATE  nonclustered INDEX IX_TetraAuthenticationRejected_ISSI on dbo.TetraAuthenticationRejected(cOperatingUnit)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TetraAuthenticationSuccess' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TetraAuthenticationSuccess'. */

-- CREATE TABLE dbo.TetraAuthenticationSuccess
-- 	( dFecha                   datetime        NOT NULL
-- 	, cOperatingUnit           varchar(10)     NOT NULL
-- 	, cReason                  varchar(50)     NOT NULL
-- 	, cAuthenticationType      varchar(20)     NOT NULL
-- 	, cAuthentication          varchar(20)     NOT NULL
-- 	, cAuthenticationInitiator varchar(5)      NOT NULL
-- 	, cEncryptionKey           varchar(10)     NOT NULL
-- 	, cRequestingZoneID        varchar(4)      NOT NULL
-- 	, cRequestingSiteID        varchar(4)      NOT NULL
-- 	, dFchControl              datetime        NOT NULL
-- 	)

-- CREATE  nonclustered INDEX IX_TetraAuthenticationSuccess_Fecha on dbo.TetraAuthenticationSuccess(dFecha)

-- CREATE  nonclustered INDEX IX_TetraAuthenticationSuccess_ISSI on dbo.TetraAuthenticationSuccess(cOperatingUnit)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TetraAuthenticationTimeout' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TetraAuthenticationTimeout'. */

-- CREATE TABLE dbo.TetraAuthenticationTimeout
-- 	( dFecha                   datetime        NOT NULL
-- 	, cOperatingUnit           varchar(10)     NOT NULL
-- 	, cReason                  varchar(50)     NOT NULL
-- 	, cAuthenticationType      varchar(20)     NOT NULL
-- 	, cAuthentication          varchar(20)     NOT NULL
-- 	, cAuthenticationInitiator varchar(5)      NOT NULL
-- 	, cEncryptionKey           varchar(10)     NOT NULL
-- 	, cRequestingZoneID        varchar(4)      NOT NULL
-- 	, cRequestingSiteID        varchar(4)      NOT NULL
-- 	, dFchControl              datetime        NOT NULL
-- 	)

-- CREATE  nonclustered INDEX IX_TetraAuthenticationTimeout_FECHA on dbo.TetraAuthenticationTimeout(dFecha)

-- CREATE  nonclustered INDEX IX_TetraAuthenticationTimeout_ISSI on dbo.TetraAuthenticationTimeout(cOperatingUnit)

-- 	/* El objeto 'dbo.TetraAuxGSSIs' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TetraAuxGSSIs' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TetraAuxGSSIs'. */

-- CREATE TABLE dbo.TetraAuxGSSIs
-- 	( cTalkgroupAlias                      varchar(50)         NULL
-- 	, nTalkgroupID                         int                 NULL
-- 	, cSecurityGroup                       varchar(50)         NULL
-- 	, cConsoleTGMGCapabilitiesProfileAlias varchar(50)         NULL
-- 	, cTGMGCapabilitiesProfileAlias        varchar(50)         NULL
-- 	, cTGMGValidSitesProfileAlias          varchar(50)         NULL
-- 	, cPreemptCapable                      varchar(5)          NULL
-- 	, cExtendedBandChannelsCanBeAssigned   varchar(5)          NULL
-- 	, cTalkgroupRegroupable                varchar(5)          NULL
-- 	, cGroupEnabled                        varchar(5)          NULL
-- 	, dFchControl                          datetime            NULL
-- 	)

-- 	/* El objeto 'dbo.TetraAuxISSI_AUC' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TetraAuxISSI_AUC' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TetraAuxISSI_AUC'. */

-- CREATE TABLE dbo.TetraAuxISSI_AUC
-- 	( nId              int                 NULL
-- 	, cRef             varchar(20)         NULL
-- 	, cSerialNumber    varchar(20)         NULL
-- 	, cISSI            varchar(10)         NULL
-- 	, cKAssigned       varchar(5)          NULL
-- 	, cState           varchar(10)         NULL
-- 	, nIdSecurityGroup int                 NULL
-- 	, cSecurityGroup   varchar(50)         NULL
-- 	, nBatchNumber     int                 NULL
-- 	, dBatchDate       datetime            NULL
-- 	, dFchControl      datetime            NULL
-- 	)

-- 	/* El objeto 'dbo.TetraAuxISSIs' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TetraAuxISSIs' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TetraAuxISSIs'. */

-- CREATE TABLE dbo.TetraAuxISSIs
-- 	( cRadioSN          varchar(50)         NULL
-- 	, nRadioId          int                 NULL
-- 	, cRadioReferenceId varchar(50)         NULL
-- 	, cSecurityGroup    varchar(50)         NULL
-- 	, dFchControl       datetime        NOT NULL
-- 	)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TetraCalls' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TetraCalls'. */

-- CREATE TABLE dbo.TetraCalls
-- 	( dFecha         datetime        NOT NULL
-- 	, nCallId        int             NOT NULL
-- 	, cType          varchar(50)     NOT NULL
-- 	, nCaller        int             NOT NULL
-- 	, nTarget        int             NOT NULL
-- 	, nCallSequence  int             NOT NULL
-- 	, nEventSequence int             NOT NULL
-- 	, dFchControl    datetime        NOT NULL
-- 	)

-- CREATE  nonclustered INDEX IX_TetraCalls_Fecha on dbo.TetraCalls(dFecha)

-- CREATE  nonclustered INDEX IX_TetraCalls_IdCall on dbo.TetraCalls(nCallId)

-- CREATE  nonclustered INDEX IX_TetraCalls_ISSI on dbo.TetraCalls(nCaller)

-- CREATE  nonclustered INDEX IX_TetraCalls_Target on dbo.TetraCalls(nTarget)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TetraCalls1m' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TetraCalls1m'. */

-- CREATE TABLE dbo.TetraCalls1m
-- 	( nISSI                        int             NOT NULL
-- 	, nTotalLlamadas               int             NOT NULL
-- 	, nLlamadasAudioPatched        int             NOT NULL
-- 	, nLlamadasTalkgroup           int             NOT NULL
-- 	, nLlamadasPrivate             int             NOT NULL
-- 	, nLlamadasEmergency           int             NOT NULL
-- 	, nTotalParticipaciones        int             NOT NULL
-- 	, nParticipacionesAudioPatched int             NOT NULL
-- 	, nParticipacionesTalkgroup    int             NOT NULL
-- 	, nParticipacionesPrivate      int             NOT NULL
-- 	, nParticipacionesEmergency    int             NOT NULL
-- 	, dFchControl                  datetime        NOT NULL
-- 	)

-- ALTER TABLE dbo.TetraCalls1m ADD CONSTRAINT PK_TetraCalls1m PRIMARY KEY clustered (nISSI)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TetraCalls24h' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TetraCalls24h'. */

-- CREATE TABLE dbo.TetraCalls24h
-- 	( nISSI                        int             NOT NULL
-- 	, nTotalLlamadas               int             NOT NULL
-- 	, nLlamadasAudioPatched        int             NOT NULL
-- 	, nLlamadasTalkgroup           int             NOT NULL
-- 	, nLlamadasPrivate             int             NOT NULL
-- 	, nLlamadasEmergency           int             NOT NULL
-- 	, nTotalParticipaciones        int             NOT NULL
-- 	, nParticipacionesAudioPatched int             NOT NULL
-- 	, nParticipacionesTalkgroup    int             NOT NULL
-- 	, nParticipacionesPrivate      int             NOT NULL
-- 	, nParticipacionesEmergency    int             NOT NULL
-- 	, dFchControl                  datetime        NOT NULL
-- 	)

-- ALTER TABLE dbo.TetraCalls24h ADD CONSTRAINT PK_TetraCalls24h PRIMARY KEY clustered (nISSI)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TetraCalls7d' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TetraCalls7d'. */

-- CREATE TABLE dbo.TetraCalls7d
-- 	( nISSI                        int             NOT NULL
-- 	, nTotalLlamadas               int             NOT NULL
-- 	, nLlamadasAudioPatched        int             NOT NULL
-- 	, nLlamadasTalkgroup           int             NOT NULL
-- 	, nLlamadasPrivate             int             NOT NULL
-- 	, nLlamadasEmergency           int             NOT NULL
-- 	, nTotalParticipaciones        int             NOT NULL
-- 	, nParticipacionesAudioPatched int             NOT NULL
-- 	, nParticipacionesTalkgroup    int             NOT NULL
-- 	, nParticipacionesPrivate      int             NOT NULL
-- 	, nParticipacionesEmergency    int             NOT NULL
-- 	, dFchControl                  datetime        NOT NULL
-- 	)

-- ALTER TABLE dbo.TetraCalls7d ADD CONSTRAINT PK_TetraCalls7d PRIMARY KEY clustered (nISSI)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TetraCallsGSSI1m' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TetraCallsGSSI1m'. */

-- CREATE TABLE dbo.TetraCallsGSSI1m
-- 	( nGSSI                        int             NOT NULL
-- 	, nTotalLlamadas               int             NOT NULL
-- 	, nLlamadasAudioPatched        int             NOT NULL
-- 	, nLlamadasTalkgroup           int             NOT NULL
-- 	, nLlamadasEmergency           int             NOT NULL
-- 	, nParticipantesDistintos      int             NOT NULL
-- 	, nTotalParticipaciones        int             NOT NULL
-- 	, nParticipacionesAudioPatched int             NOT NULL
-- 	, nParticipacionesTalkgroup    int             NOT NULL
-- 	, nParticipacionesEmergency    int             NOT NULL
-- 	, dFchControl                  datetime        NOT NULL
-- 	)

-- ALTER TABLE dbo.TetraCallsGSSI1m ADD CONSTRAINT PK_TetraCallsGSSI1m PRIMARY KEY clustered (nGSSI)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TetraCallsGSSI24h' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TetraCallsGSSI24h'. */

-- CREATE TABLE dbo.TetraCallsGSSI24h
-- 	( nGSSI                        int             NOT NULL
-- 	, nTotalLlamadas               int             NOT NULL
-- 	, nLlamadasAudioPatched        int             NOT NULL
-- 	, nLlamadasTalkgroup           int             NOT NULL
-- 	, nLlamadasEmergency           int             NOT NULL
-- 	, nParticipantesDistintos      int             NOT NULL
-- 	, nTotalParticipaciones        int             NOT NULL
-- 	, nParticipacionesAudioPatched int             NOT NULL
-- 	, nParticipacionesTalkgroup    int             NOT NULL
-- 	, nParticipacionesEmergency    int             NOT NULL
-- 	, dFchControl                  datetime        NOT NULL
-- 	)

-- ALTER TABLE dbo.TetraCallsGSSI24h ADD CONSTRAINT PK_TetraCallsGSSI24h PRIMARY KEY clustered (nGSSI)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TetraCallsGSSI7d' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TetraCallsGSSI7d'. */

-- CREATE TABLE dbo.TetraCallsGSSI7d
-- 	( nGSSI                        int             NOT NULL
-- 	, nTotalLlamadas               int             NOT NULL
-- 	, nLlamadasAudioPatched        int             NOT NULL
-- 	, nLlamadasTalkgroup           int             NOT NULL
-- 	, nLlamadasEmergency           int             NOT NULL
-- 	, nParticipantesDistintos      int             NOT NULL
-- 	, nTotalParticipaciones        int             NOT NULL
-- 	, nParticipacionesAudioPatched int             NOT NULL
-- 	, nParticipacionesTalkgroup    int             NOT NULL
-- 	, nParticipacionesEmergency    int             NOT NULL
-- 	, dFchControl                  datetime        NOT NULL
-- 	)

-- ALTER TABLE dbo.TetraCallsGSSI7d ADD CONSTRAINT PK_TetraCallsGSSI7d PRIMARY KEY clustered (nGSSI)

-- 	/* El objeto 'dbo.TetraCallsTMP' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.TetraCallsTMP' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TetraCallsTMP' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TetraCallsTMP'. */

-- CREATE TABLE dbo.TetraCallsTMP
-- 	( dFecha         datetime        NOT NULL
-- 	, nCallId        int             NOT NULL
-- 	, cType          varchar(50)     NOT NULL
-- 	, nCaller        int             NOT NULL
-- 	, nTarget        int             NOT NULL
-- 	, nCallSequence  int             NOT NULL
-- 	, nEventSequence int             NOT NULL
-- 	, dFchControl    datetime        NOT NULL
-- 	)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TetraCodesFAC' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TetraCodesFAC'. */

-- CREATE TABLE dbo.TetraCodesFAC
-- 	( cBinCode varchar(8)      NOT NULL
-- 	, cHexCode varchar(2)      NOT NULL
-- 	, cDecCode int             NOT NULL
-- 	, cCompany varchar(50)     NOT NULL
-- 	)

-- CREATE unique nonclustered INDEX IX_TetraCodesFAC_BinCode on dbo.TetraCodesFAC(cBinCode)

-- CREATE unique nonclustered INDEX IX_TetraCodesFAC_HexCode on dbo.TetraCodesFAC(cBinCode)

-- ALTER TABLE dbo.TetraCodesFAC ADD CONSTRAINT PK_TetraCodesFAC PRIMARY KEY clustered (cDecCode)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TetraConsolaISSIGSSI' o el usuario no tiene permisos para hacer referencia a tablas. */

-- CREATE TABLE dbo.TetraConsolaISSIGSSI
-- 	( nIdConsola     int             NOT NULL
-- 	, nISSI          int             NOT NULL
-- 	, nGSSI          int             NOT NULL
-- 	, bActivo        bit             NOT NULL
-- 	, dFchUltimoCall datetime            NULL
-- 	)

-- CREATE unique nonclustered INDEX IX_TetraConsolaISSIGSSI_ConsolaGSSI on dbo.TetraConsolaISSIGSSI(nIdConsola, nGSSI)

-- CREATE unique nonclustered INDEX IX_TetraConsolaISSIGSSI_ISSI on dbo.TetraConsolaISSIGSSI(nISSI)

-- ALTER TABLE dbo.TetraConsolaISSIGSSI ADD CONSTRAINT PK_TetraConsolaISSIGSSI PRIMARY KEY clustered (nIdConsola, nISSI, nGSSI)

-- 	/* El objeto 'dbo.TetraConsolaISSIGSSI_BCK160411' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.TetraConsolaISSIGSSI_BCK160411' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TetraConsolaISSIGSSI_BCK160411' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TetraConsolaISSIGSSI_BCK160411'. */

-- CREATE TABLE dbo.TetraConsolaISSIGSSI_BCK160411
-- 	( nIdConsola int             NOT NULL
-- 	, nISSI      int             NOT NULL
-- 	, nGSSI      int             NOT NULL
-- 	, bActivo    bit             NOT NULL
-- 	)

-- 	/* El objeto 'dbo.TetraConsolaISSIGSSI_BCK160519' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.TetraConsolaISSIGSSI_BCK160519' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TetraConsolaISSIGSSI_BCK160519' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TetraConsolaISSIGSSI_BCK160519'. */

-- CREATE TABLE dbo.TetraConsolaISSIGSSI_BCK160519
-- 	( nIdConsola     int             NOT NULL
-- 	, nISSI          int             NOT NULL
-- 	, nGSSI          int             NOT NULL
-- 	, bActivo        bit             NOT NULL
-- 	, dFchUltimoCall datetime            NULL
-- 	)

-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TetraConsolas'. */

-- CREATE TABLE dbo.TetraConsolas
-- 	( nId                  int             NOT NULL
-- 	, cNombre              varchar(20)     NOT NULL
-- 	, nIdFlota             int                 NULL
-- 	, cZona                int             NOT NULL
-- 	, cCEB                 int                 NULL
-- 	, cEquipo              varchar(200)        NULL
-- 	, cIdentificacion      varchar(200)        NULL
-- 	, cLog                 varchar(20)         NULL
-- 	, cPass                varchar(20)         NULL
-- 	, cConfgRed            varchar(200)        NULL
-- 	, cObservaciones       varchar(-1)         NULL
-- 	, nCodSede             int                 NULL
-- 	, cUsuarioAlta         varchar(20)     NOT NULL
-- 	, dFchAlta             datetime        NOT NULL
-- 	, cUsuarioModificacion varchar(20)         NULL
-- 	, dFchModificacion     datetime            NULL
-- 	)

-- CREATE unique nonclustered INDEX IX_TetraConsolas on dbo.TetraConsolas(cNombre, cZona)

-- ALTER TABLE dbo.TetraConsolas ADD CONSTRAINT PK_TetraConsolas PRIMARY KEY clustered (nId)

-- 	/* El objeto 'dbo.TetraConsolas_bck160413' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.TetraConsolas_bck160413' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TetraConsolas_bck160413' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TetraConsolas_bck160413'. */

-- CREATE TABLE dbo.TetraConsolas_bck160413
-- 	( nId                  int             NOT NULL
-- 	, cNombre              varchar(20)     NOT NULL
-- 	, nIdFlota             int                 NULL
-- 	, cZona                int             NOT NULL
-- 	, cCEB                 int                 NULL
-- 	, cEquipo              varchar(200)        NULL
-- 	, cIdentificacion      varchar(200)        NULL
-- 	, cLog                 varchar(20)         NULL
-- 	, cPass                varchar(20)         NULL
-- 	, cConfgRed            varchar(200)        NULL
-- 	, cObservaciones       varchar(-1)         NULL
-- 	, nCodSede             int                 NULL
-- 	, cUsuarioAlta         varchar(20)     NOT NULL
-- 	, dFchAlta             datetime        NOT NULL
-- 	, cUsuarioModificacion varchar(20)         NULL
-- 	, dFchModificacion     datetime            NULL
-- 	)

-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TetraFlotas'. */

-- CREATE TABLE dbo.TetraFlotas
-- 	( nId    int             NOT NULL
-- 	, cFlota varchar(20)     NOT NULL
-- 	)

-- ALTER TABLE dbo.TetraFlotas ADD CONSTRAINT PK_TetraFlotas PRIMARY KEY clustered (nId)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TetraGSSI_borrar' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TetraGSSI_borrar'. */

-- CREATE TABLE dbo.TetraGSSI_borrar
-- 	( nId                                  int             NOT NULL
-- 	, cAlias                               varchar(50)         NULL
-- 	, nIdFlota                             int                 NULL
-- 	, cSecurityGroup                       varchar(50)         NULL
-- 	, cConsoleTGMGCapabilitiesProfileAlias varchar(50)         NULL
-- 	, cTGMGCapabilitiesProfileAlias        varchar(50)         NULL
-- 	, cTGMGValidSitesProfileAlias          varchar(50)         NULL
-- 	, cPreemptCapable                      varchar(5)          NULL
-- 	, cExtendedBandChannelsCanBeAssigned   varchar(5)          NULL
-- 	, cTalkgroupRegroupable                varchar(5)          NULL
-- 	, cGroupEnabled                        varchar(5)          NULL
-- 	, bReserva                             bit             NOT NULL
-- 	, nRestId                              int                 NULL
-- 	, cObservaciones                       varchar(250)        NULL
-- 	, cUsuarioAlta                         varchar(20)     NOT NULL
-- 	, dFchAlta                             datetime        NOT NULL
-- 	, cUsuarioModificacion                 varchar(20)         NULL
-- 	, dFchModificacion                     datetime            NULL
-- 	)

-- CREATE  nonclustered INDEX IX_TetraGSSI_nRestId on dbo.TetraGSSI_borrar(nRestId)

-- CREATE unique nonclustered INDEX IX_TetraGSSI_TalkgroupAlias on dbo.TetraGSSI_borrar(cAlias)

-- CREATE unique nonclustered INDEX IX_TetraGSSI_TalkgroupID on dbo.TetraGSSI_borrar(nId)

-- ALTER TABLE dbo.TetraGSSI_borrar ADD CONSTRAINT PK_TetraGSSI_nId PRIMARY KEY clustered (nId)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TetraHistoricoTerminalesRadio' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TetraHistoricoTerminalesRadio'. */

-- CREATE TABLE dbo.TetraHistoricoTerminalesRadio
-- 	( nId         int             NOT NULL
-- 	, nIdTerminal int                 NULL
-- 	, cDetalle    varchar(500)        NULL
-- 	, dFchControl datetime            NULL
-- 	)

-- ALTER TABLE dbo.TetraHistoricoTerminalesRadio ADD CONSTRAINT PK_TetraHistoricoTerminalesRadio PRIMARY KEY clustered (nId)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TetraLocationRegistration' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TetraLocationRegistration'. */

-- CREATE TABLE dbo.TetraLocationRegistration
-- 	( dFecha                      datetime        NOT NULL
-- 	, cOperatingUnit              varchar(10)     NOT NULL
-- 	, cOperatingGroup             varchar(20)     NOT NULL
-- 	, cOperatingGroupAlias        varchar(30)     NOT NULL
-- 	, cDevice                     varchar(10)     NOT NULL
-- 	, cReplacePreviousAffiliation varchar(15)     NOT NULL
-- 	, cMobilityResponse           varchar(50)     NOT NULL
-- 	, cAuthenticationType         varchar(40)     NOT NULL
-- 	, cEncryptionKey              varchar(15)     NOT NULL
-- 	, cClassOfMS                  varchar(80)     NOT NULL
-- 	, cMobilityResponseSite       varchar(5)      NOT NULL
-- 	, cMobilityResponseLocalZone  varchar(5)      NOT NULL
-- 	, dFchControl                 datetime        NOT NULL
-- 	)

-- CREATE  nonclustered INDEX IX_TetraLocationRegistration_Fecha on dbo.TetraLocationRegistration(dFecha)

-- CREATE  nonclustered INDEX IX_TetraLocationRegistration_ISSI on dbo.TetraLocationRegistration(cOperatingUnit)

-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TetraModelosRadio'. */

-- CREATE TABLE dbo.TetraModelosRadio
-- 	( nId     int             NOT NULL
-- 	, cMarca  varchar(20)     NOT NULL
-- 	, cModelo varchar(20)     NOT NULL
-- 	, cClave  varchar(50)         NULL
-- 	)

-- CREATE unique nonclustered INDEX IX_TetraModelosRadio on dbo.TetraModelosRadio(cMarca, cModelo)

-- ALTER TABLE dbo.TetraModelosRadio ADD CONSTRAINT PK_TetraModelosRadio PRIMARY KEY clustered (nId)

-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TetraPlanGSSIs'. */

-- CREATE TABLE dbo.TetraPlanGSSIs
-- 	( nGSSI              int             NOT NULL
-- 	, cNombre            varchar(50)         NULL
-- 	, nIdFlota           int                 NULL
-- 	, bActivo            bit             NOT NULL
-- 	, nRango             int             NOT NULL
-- 	, dFchUltimoUnit     datetime            NULL
-- 	, dFchUltimoLocation datetime            NULL
-- 	, dFchUltimoCall     datetime            NULL
-- 	)

-- ALTER TABLE dbo.TetraPlanGSSIs ADD CONSTRAINT PK_TetraPlanGSSIs PRIMARY KEY clustered (nGSSI)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TetraPlanGSSIsB' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TetraPlanGSSIsB'. */

-- CREATE TABLE dbo.TetraPlanGSSIsB
-- 	( nGSSI              int             NOT NULL
-- 	, cNombre            varchar(50)         NULL
-- 	, nIdFlota           int                 NULL
-- 	, bActivo            bit             NOT NULL
-- 	, nRango             int             NOT NULL
-- 	, dFchUltimoUnit     datetime            NULL
-- 	, dFchUltimoLocation datetime            NULL
-- 	, dFchUltimoCall     datetime            NULL
-- 	)

-- ALTER TABLE dbo.TetraPlanGSSIsB ADD CONSTRAINT PK_TetraPlanGSSIsB PRIMARY KEY clustered (nGSSI)

-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TetraPlanISSIs'. */

-- CREATE TABLE dbo.TetraPlanISSIs
-- 	( nISSI    int             NOT NULL
-- 	, nIdFlota int                 NULL
-- 	, nIdTipo  int                 NULL
-- 	, nRango   int             NOT NULL
-- 	)

-- ALTER TABLE dbo.TetraPlanISSIs ADD CONSTRAINT PK_TetraPlanISSIs PRIMARY KEY clustered (nISSI)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TetraTelemetriaMPR' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TetraTelemetriaMPR'. */

-- CREATE TABLE dbo.TetraTelemetriaMPR
-- 	( dTime          datetime        NOT NULL
-- 	, nLocTxPower    numeric(10,1)       NULL
-- 	, nRemTxPower    numeric(10,1)       NULL
-- 	, nLocRxPower    numeric(10,1)       NULL
-- 	, nRemRxPower    numeric(10,1)       NULL
-- 	, nLocDivRxPower numeric(10,1)       NULL
-- 	, nRemDivRxPower numeric(10,1)       NULL
-- 	, nLocXPD        numeric(10,1)       NULL
-- 	, nRemXPD        numeric(10,1)       NULL
-- 	, nLocMSE        numeric(10,1)       NULL
-- 	, nRemMSE        numeric(10,1)       NULL
-- 	, nTxMod         int                 NULL
-- 	, nRxMod         int                 NULL
-- 	, nLocEPS        int                 NULL
-- 	, nRemEPS        int                 NULL
-- 	, nLocRPS        int                 NULL
-- 	, nRemRPS        int                 NULL
-- 	, nLocTPS        int                 NULL
-- 	, nRemTPS        int                 NULL
-- 	, nLocHBERAlm    int                 NULL
-- 	, nRemHBERAlm    int                 NULL
-- 	, nLocEWAlm      int                 NULL
-- 	, nRemEWAlm      int                 NULL
-- 	, nLocDemFailAlm int                 NULL
-- 	, nRemDemFailAlm int                 NULL
-- 	, cMPR           varchar(15)     NOT NULL
-- 	, cEnlace        varchar(15)     NOT NULL
-- 	, dFchControl    datetime        NOT NULL
-- 	)

-- CREATE  nonclustered INDEX IX_TetraTelemetriaMPR_MPR_Enlace on dbo.TetraTelemetriaMPR(cMPR, cEnlace)

-- CREATE  nonclustered INDEX IX_TetraTelemetriaMPR_Time on dbo.TetraTelemetriaMPR(dTime)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TetraTerminalesRadio' o el usuario no tiene permisos para hacer referencia a tablas. */

-- CREATE TABLE dbo.TetraTerminalesRadio
-- 	( nId                  int             NOT NULL
-- 	, nISSI                int                 NULL
-- 	, cNumeroSerie         varchar(20)     NOT NULL
-- 	, nullBusterISSI       varchar(30)         NULL
-- 	, nIdModelo            int             NOT NULL
-- 	, cTEI                 varchar(16)         NULL
-- 	, nullbusterTEI        varchar(20)         NULL
-- 	, cKAssigned           varchar(5)          NULL
-- 	, cEstado              varchar(20)         NULL
-- 	, nIdFlota             int                 NULL
-- 	, nBatch               int                 NULL
-- 	, dFchBatch            datetime            NULL
-- 	, dFchFabricacion      datetime            NULL
-- 	, dFchPrimeraCnx       datetime            NULL
-- 	, dFchULtimaCnx        datetime            NULL
-- 	, nIdEstado            int             NOT NULL
-- 	, dFchBaja             datetime            NULL
-- 	, cObservaciones       varchar(50)         NULL
-- 	, cUsuarioAlta         varchar(25)     NOT NULL
-- 	, dFchAlta             datetime        NOT NULL
-- 	, cUsuarioModificacion varchar(25)         NULL
-- 	, dFchModificacion     datetime            NULL
-- 	)

-- CREATE unique nonclustered INDEX IX_TetraTerminalesRadio_nullBusterISSI on dbo.TetraTerminalesRadio(nullBusterISSI)

-- CREATE unique nonclustered INDEX IX_TetraTerminalesRadio_nullBusterTEI on dbo.TetraTerminalesRadio(nullbusterTEI)

-- CREATE  nonclustered INDEX IX_TetraTerminalesRadio_TEI on dbo.TetraTerminalesRadio(cTEI)

-- CREATE unique nonclustered INDEX IX_TetraTerminalesRadioISSI on dbo.TetraTerminalesRadio(nId)

-- CREATE unique nonclustered INDEX IX_TetraTerminalesRadioNumSerie on dbo.TetraTerminalesRadio(cNumeroSerie)

-- ALTER TABLE dbo.TetraTerminalesRadio ADD CONSTRAINT PK_TetraTerminalesRadio PRIMARY KEY clustered (nId)

-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TetraTipoISSI'. */

-- CREATE TABLE dbo.TetraTipoISSI
-- 	( nId   int             NOT NULL
-- 	, cTipo varchar(15)     NOT NULL
-- 	)

-- ALTER TABLE dbo.TetraTipoISSI ADD CONSTRAINT PK_TetraTipoISSI PRIMARY KEY clustered (nId)

-- 	/* El objeto 'dbo.TetraTramasIgnorada' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TetraTramasIgnorada' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TetraTramasIgnorada'. */

-- CREATE TABLE dbo.TetraTramasIgnorada
-- 	( cRegistro   varchar(-1)         NULL
-- 	, cFileName   varchar(50)         NULL
-- 	, dFchControl datetime        NOT NULL
-- 	)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TetraUnitRegistration' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TetraUnitRegistration'. */

-- CREATE TABLE dbo.TetraUnitRegistration
-- 	( dFecha                              datetime        NOT NULL
-- 	, cOperatingUnit                      varchar(100)    NOT NULL
-- 	, cRequesterAffiliationTalkgroup      varchar(100)        NULL
-- 	, cRequesterAffiliationTalkgroupAlias varchar(100)        NULL
-- 	, cDevice                             varchar(10)     NOT NULL
-- 	, cMobilityResponse                   varchar(50)     NOT NULL
-- 	, cAuthenticationType                 varchar(40)     NOT NULL
-- 	, cEncryptionKey                      varchar(15)     NOT NULL
-- 	, cClassOfMS                          varchar(80)     NOT NULL
-- 	, cMobilityResponseSite               varchar(5)      NOT NULL
-- 	, cMobilityResponseLocalZone          varchar(5)      NOT NULL
-- 	, dFchControl                         datetime        NOT NULL
-- 	)

-- CREATE  nonclustered INDEX IX_TetraUnitRegistration_FECHA on dbo.TetraUnitRegistration(dFecha)

-- CREATE  nonclustered INDEX IX_TetraUnitRegistration_ISSI on dbo.TetraUnitRegistration(cOperatingUnit)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TFactelResumen1' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TFactelResumen1'. */

-- CREATE TABLE dbo.TFactelResumen1
-- 	( dFchFactura     datetime        NOT NULL
-- 	, dFecha          datetime        NOT NULL
-- 	, nLinea          int             NOT NULL
-- 	, nNumCorto       int                 NULL
-- 	, nNumLLamadasMv  int                 NULL
-- 	, nDuracionMv     numeric(38,20)      NULL
-- 	, nCosteMv        numeric(38,20)      NULL
-- 	, nCosteTMv       numeric(38,20)      NULL
-- 	, nNumLLamadasIn  int                 NULL
-- 	, nDuracionIn     numeric(38,20)      NULL
-- 	, nNumLLamadasMet int                 NULL
-- 	, nDuracionMet    numeric(38,20)      NULL
-- 	, nCosteMet       numeric(38,20)      NULL
-- 	, nNumLLamadasPro int                 NULL
-- 	, nDuracionPro    numeric(38,20)      NULL
-- 	, nCostePro       numeric(38,20)      NULL
-- 	, nNumLLamadasNac int                 NULL
-- 	, nDuracionNac    numeric(38,20)      NULL
-- 	, nCosteNac       numeric(38,20)      NULL
-- 	, nNumLLamadasInt int                 NULL
-- 	, nDuracionInt    numeric(38,20)      NULL
-- 	, nCosteInt       numeric(38,20)      NULL
-- 	, nNumLLamadasOtr int                 NULL
-- 	, nDuracionOtr    numeric(38,20)      NULL
-- 	, nCosteOtr       numeric(38,20)      NULL
-- 	, dFchDescarga    datetime        NOT NULL
-- 	)

-- CREATE  nonclustered INDEX IX_TFactelResumen_nNumCorto on dbo.TFactelResumen1(nNumCorto)

-- CREATE  nonclustered INDEX IX_TFactelResumen1_32070 on dbo.TFactelResumen1(nLinea, dFecha)

-- ALTER TABLE dbo.TFactelResumen1 ADD CONSTRAINT PK_TFactelResumen1 PRIMARY KEY clustered (dFchFactura, dFecha, nLinea)

-- 	/* El objeto 'dbo.TFactelResumen2' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.TFactelResumen2' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TFactelResumen2' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TFactelResumen2'. */

-- CREATE TABLE dbo.TFactelResumen2
-- 	( dFecha              datetime        NOT NULL
-- 	, nLinea              int             NOT NULL
-- 	, nNumCorto           int                 NULL
-- 	, nNumLlamadasMv      int                 NULL
-- 	, nDuracionMv         float               NULL
-- 	, nCosteMv            float               NULL
-- 	, nNumLlamadasIn      int                 NULL
-- 	, nDuracionIn         float               NULL
-- 	, nNumLLamadasMet     int                 NULL
-- 	, nDuracionMet        float               NULL
-- 	, nCosteMet           float               NULL
-- 	, nNumLLamadasPro     int                 NULL
-- 	, nDuracionPro        float               NULL
-- 	, nCostePro           float               NULL
-- 	, nNumLLamadasNac     int                 NULL
-- 	, nDuracionNac        float               NULL
-- 	, nCosteNac           float               NULL
-- 	, nNumLLamadasInt     int                 NULL
-- 	, nDuracionInt        float               NULL
-- 	, nCosteInt           float               NULL
-- 	, nNumLLamadas901n1   int                 NULL
-- 	, nDuracion901n1      float               NULL
-- 	, nCoste901n1         float               NULL
-- 	, nNumLLamadas901n2   int                 NULL
-- 	, nDuracion901n2      float               NULL
-- 	, nCoste901n2         float               NULL
-- 	, nNumLLamadas901nR   int                 NULL
-- 	, nDuracion901nR      float               NULL
-- 	, nCoste901nR         float               NULL
-- 	, nNumLLamadas902     int                 NULL
-- 	, nDuracion902        float               NULL
-- 	, nCoste902           float               NULL
-- 	, nNumLLamadas010     int                 NULL
-- 	, nDuracion010        float               NULL
-- 	, nCoste010           float               NULL
-- 	, nNumLLamadas08X_09X int                 NULL
-- 	, nDuracion08X_09X    float               NULL
-- 	, nCoste08X_09X       float               NULL
-- 	, nNumLLamadas061_012 int                 NULL
-- 	, nDuracion061_012    float               NULL
-- 	, nCoste061_012       float               NULL
-- 	, nNumLLamadas060     int                 NULL
-- 	, nDuracion060        float               NULL
-- 	, nCoste060           float               NULL
-- 	, nNumLLamadas80367   int                 NULL
-- 	, nDuracion80367      float               NULL
-- 	, nCoste80367         float               NULL
-- 	, nNumLLamadas905     int                 NULL
-- 	, nDuracion905        float               NULL
-- 	, nCoste905           float               NULL
-- 	, nNumLLamadas11818   int                 NULL
-- 	, nDuracion11818      float               NULL
-- 	, nCoste11818         float               NULL
-- 	, nNumLLamadas118     int                 NULL
-- 	, nDuracion118        float               NULL
-- 	, nCoste118           float               NULL
-- 	, nNumLLamadasResto   int                 NULL
-- 	, nDuracionResto      float               NULL
-- 	, nCosteResto         float               NULL
-- 	, dFchDescarga        datetime        NOT NULL
-- 	)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TFactelResumenDetalle' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TFactelResumenDetalle'. */

-- CREATE TABLE dbo.TFactelResumenDetalle
-- 	( dFechaFactura smalldatetime   NOT NULL
-- 	, nLinea        int             NOT NULL
-- 	, nNumLlamadasM int             NOT NULL
-- 	, nDuracionM    int             NOT NULL
-- 	, nImporteM     float           NOT NULL
-- 	, nNumLlamadasF int             NOT NULL
-- 	, nDuracionF    int             NOT NULL
-- 	, nImporteF     float           NOT NULL
-- 	, dFchControl   datetime        NOT NULL
-- 	)

-- ALTER TABLE dbo.TFactelResumenDetalle ADD CONSTRAINT PK_TFactelResumenDetalle PRIMARY KEY clustered (dFechaFactura, nLinea)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TFactelResumenTrafico' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TFactelResumenTrafico'. */

-- CREATE TABLE dbo.TFactelResumenTrafico
-- 	( dFechaFactura smalldatetime   NOT NULL
-- 	, nLinea        int             NOT NULL
-- 	, nNumLlamadasM int             NOT NULL
-- 	, nDuracionM    int                 NULL
-- 	, nImporteM     float           NOT NULL
-- 	, nNumLlamadasF int             NOT NULL
-- 	, nDuracionF    int                 NULL
-- 	, nImporteF     float           NOT NULL
-- 	, dFchControl   datetime            NULL
-- 	)

-- ALTER TABLE dbo.TFactelResumenTrafico ADD CONSTRAINT PK_TFactelResumenTrafico PRIMARY KEY clustered (dFechaFactura, nLinea)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TFacturacion2015' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TFacturacion2015'. */

-- CREATE TABLE dbo.TFacturacion2015
-- 	( FECHA              datetime        NOT NULL
-- 	, CODIGO             varchar(20)     NOT NULL
-- 	, ANEXO              varchar(5)      NOT NULL
-- 	, LITERAL            varchar(100)        NULL
-- 	, AGRUPADOR          varchar(100)        NULL
-- 	, LOTE               int             NOT NULL
-- 	, DESCRIPCIÓN       varchar(255)    NOT NULL
-- 	, DETALLES           varchar(-1)     NOT NULL
-- 	, UNIDAD_MEDIDA      varchar(255)    NOT NULL
-- 	, PRECIO             money           NOT NULL
-- 	, ANEXO_INVENTARIO   varchar(5)          NULL
-- 	, LINEA              int                 NULL
-- 	, MAC                varchar(15)         NULL
-- 	, NUM_ADMINISTRATIVO varchar(30)         NULL
-- 	, LINEA_ASOCIADA     varchar(30)         NULL
-- 	, SEDE               int                 NULL
-- 	, DIRECCION_SEDE     varchar(100)        NULL
-- 	, CAMPUS             int                 NULL
-- 	, DIRECCION_CAMPUS   varchar(100)        NULL
-- 	, IDER               varchar(92)     NOT NULL
-- 	, CODUNI             int                 NULL
-- 	, UNIDAD             varchar(100)        NULL
-- 	, IDAREA             int                 NULL
-- 	, AREA               varchar(100)        NULL
-- 	, dFchControl        datetime        NOT NULL
-- 	)

-- CREATE  nonclustered INDEX IX_TFacturacion2015_AREA_UNIDAD on dbo.TFacturacion2015(CODUNI, IDAREA)

-- CREATE  nonclustered INDEX IX_TFacturacion2015_CAMPUS_SEDE on dbo.TFacturacion2015(SEDE, CAMPUS)

-- CREATE  nonclustered INDEX IX_TFacturacion2015_LINEA on dbo.TFacturacion2015(LINEA)

-- CREATE  nonclustered INDEX IX_TFacturacion2015_MAC on dbo.TFacturacion2015(MAC)

-- ALTER TABLE dbo.TFacturacion2015 ADD CONSTRAINT PK_TFacturacion2015 PRIMARY KEY clustered (FECHA, CODIGO, IDER)

-- 	/* El objeto 'dbo.TFacturacionFactel2015' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.TFacturacionFactel2015' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TFacturacionFactel2015' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TFacturacionFactel2015'. */

-- CREATE TABLE dbo.TFacturacionFactel2015
-- 	( FECHA         datetime        NOT NULL
-- 	, ID_AREA       int             NOT NULL
-- 	, AREA          varchar(100)    NOT NULL
-- 	, COD_UNI       int             NOT NULL
-- 	, UNIDAD        varchar(100)    NOT NULL
-- 	, COD_SEDE      int             NOT NULL
-- 	, SEDE          varchar(100)    NOT NULL
-- 	, DIRECCION     varchar(100)        NULL
-- 	, LINEAS        int                 NULL
-- 	, LLAM_MOVCORP  int                 NULL
-- 	, COSTE_MOVCORP money               NULL
-- 	, LLAM_MOVIL    int                 NULL
-- 	, COSTE_MOVIL   numeric(38,20)      NULL
-- 	, LLAM_FIJO     int                 NULL
-- 	, COSTE_FIJO    numeric(38,20)      NULL
-- 	, dFchControl   datetime        NOT NULL
-- 	)

-- 	/* El objeto 'dbo.TFacturacionSofia2015' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.TFacturacionSofia2015' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TFacturacionSofia2015' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TFacturacionSofia2015'. */

-- CREATE TABLE dbo.TFacturacionSofia2015
-- 	( FECHA_FACTURA datetime        NOT NULL
-- 	, COD_UNI       int                 NULL
-- 	, UNIDAD        varchar(100)    NOT NULL
-- 	, ID_AREA       int                 NULL
-- 	, AREA          varchar(100)    NOT NULL
-- 	, CODSEDE       int                 NULL
-- 	, SEDE          varchar(100)        NULL
-- 	, LINEAS        int                 NULL
-- 	, CUOTA         float               NULL
-- 	, TRAFICO       float               NULL
-- 	, TOTAL         float               NULL
-- 	, dFchControl   datetime        NOT NULL
-- 	)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TFacturasMovilesConsumos' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TFacturasMovilesConsumos'. */

-- CREATE TABLE dbo.TFacturasMovilesConsumos
-- 	( dFechaFactura   smalldatetime   NOT NULL
-- 	, nLinea          int             NOT NULL
-- 	, nNumCorto       int             NOT NULL
-- 	, nCodConcepto    int             NOT NULL
-- 	, nNumLlamadas    int             NOT NULL
-- 	, nCantidadMedida float           NOT NULL
-- 	, nImporte        float           NOT NULL
-- 	, cTipoContrato   nvarchar(80)    NOT NULL
-- 	, dFecha          smalldatetime   NOT NULL
-- 	)

-- CREATE  nonclustered INDEX IX_TFacturasMovilesConsumos_122236 on dbo.TFacturasMovilesConsumos(nLinea, nNumCorto, cTipoContrato)

-- CREATE  nonclustered INDEX IX_TFacturasMovilesConsumos_43210 on dbo.TFacturasMovilesConsumos(nLinea, nNumCorto, cTipoContrato)

-- CREATE  nonclustered INDEX IX_TFacturasMovilesConsumos_dFecha on dbo.TFacturasMovilesConsumos(dFecha)

-- ALTER TABLE dbo.TFacturasMovilesConsumos ADD CONSTRAINT PK_TFacturasMovilesConsumos PRIMARY KEY clustered (dFechaFactura, nLinea, nNumCorto, nCodConcepto)

-- 	/* El objeto 'dbo.TFacturasMovilesConsumosEditadas' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.TFacturasMovilesConsumosEditadas' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TFacturasMovilesConsumosEditadas' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TFacturasMovilesConsumosEditadas'. */

-- CREATE TABLE dbo.TFacturasMovilesConsumosEditadas
-- 	( dFechaFactura    smalldatetime   NOT NULL
-- 	, nLinea           int             NOT NULL
-- 	, nNumCorto        int             NOT NULL
-- 	, nCodConcepto     int             NOT NULL
-- 	, nNumLlamadas     int             NOT NULL
-- 	, nCantidadMedida  float           NOT NULL
-- 	, nImporte         float           NOT NULL
-- 	, cTipoContrato    nvarchar(80)    NOT NULL
-- 	, dFecha           smalldatetime   NOT NULL
-- 	, nImporteNuevo    float           NOT NULL
-- 	, cUsuario         varchar(50)     NOT NULL
-- 	, cEquipo          varchar(50)     NOT NULL
-- 	, dFchModificacion datetime        NOT NULL
-- 	, nControl         int             NOT NULL
-- 	)

-- 	/* El objeto 'dbo.TFacturasMovilesConsumosRegular' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.TFacturasMovilesConsumosRegular' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TFacturasMovilesConsumosRegular' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TFacturasMovilesConsumosRegular'. */

-- CREATE TABLE dbo.TFacturasMovilesConsumosRegular
-- 	( DFECHAREG                 varchar(10)     NOT NULL
-- 	, DET_NU_TELEFONO           nvarchar(18)    NOT NULL
-- 	, DET_NU_EXTENSION          nvarchar(18)    NOT NULL
-- 	, DET_COD_TRAFICO           nvarchar(6)     NOT NULL
-- 	, DET_TIPO_TRAFICO          nvarchar(60)        NULL
-- 	, NNUMLLAMADAS              int                 NULL
-- 	, CANTIDAD_MEDIDA_ORIGINADA float               NULL
-- 	, IMPORTE                   float               NULL
-- 	, DFCHFACTURA               datetime        NOT NULL
-- 	)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TFacturasMovilesCuotas' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TFacturasMovilesCuotas'. */

-- CREATE TABLE dbo.TFacturasMovilesCuotas
-- 	( dFechaFactura smalldatetime   NOT NULL
-- 	, nLinea        int             NOT NULL
-- 	, nNumCorto     int             NOT NULL
-- 	, cCodConcepto  varchar(5)      NOT NULL
-- 	, cConcepto     varchar(100)    NOT NULL
-- 	, nImporte      float               NULL
-- 	, cTipoContrato varchar(50)         NULL
-- 	, dFecha        smalldatetime       NULL
-- 	)

-- CREATE  nonclustered INDEX IX_TFacturasMovilesCuotas_42510 on dbo.TFacturasMovilesCuotas(nLinea, dFechaFactura)

-- ALTER TABLE dbo.TFacturasMovilesCuotas ADD CONSTRAINT PK_TFacturasMovilesCuotas PRIMARY KEY clustered (dFechaFactura, nLinea, nNumCorto, cCodConcepto)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TFacturasMovilesCuotas201303' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TFacturasMovilesCuotas201303'. */

-- CREATE TABLE dbo.TFacturasMovilesCuotas201303
-- 	( dFecha        datetime        NOT NULL
-- 	, dFechaFactura datetime        NOT NULL
-- 	, nLinea        int             NOT NULL
-- 	, nNumCorto     int                 NULL
-- 	, nImporte      money           NOT NULL
-- 	, dFchControl   datetime        NOT NULL
-- 	)

-- CREATE  nonclustered INDEX IX_TFacturasMovilesCuotas201303_418700 on dbo.TFacturasMovilesCuotas201303(nLinea)

-- ALTER TABLE dbo.TFacturasMovilesCuotas201303 ADD CONSTRAINT PK_TFacturasMovilesCuotas201303 PRIMARY KEY clustered (dFecha, dFechaFactura, nLinea)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TFacturasMovilesDescuentos' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TFacturasMovilesDescuentos'. */

-- CREATE TABLE dbo.TFacturasMovilesDescuentos
-- 	( dFechaFactura datetime        NOT NULL
-- 	, nLinea        int             NOT NULL
-- 	, nNumCorto     int             NOT NULL
-- 	, nDtoPlan      float           NOT NULL
-- 	)

-- ALTER TABLE dbo.TFacturasMovilesDescuentos ADD CONSTRAINT PK_TFacturasMovilesDescuentos PRIMARY KEY clustered (dFechaFactura, nLinea, nNumCorto, nDtoPlan)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TFacturasMovilesIbercom' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TFacturasMovilesIbercom'. */

-- CREATE TABLE dbo.TFacturasMovilesIbercom
-- 	( dFecha            datetime        NOT NULL
-- 	, nLinea            int             NOT NULL
-- 	, nNumCorto         int             NOT NULL
-- 	, nNumLlamadasCorp  int             NOT NULL
-- 	, nDuracionCorp     float           NOT NULL
-- 	, nImporteCorp      money           NOT NULL
-- 	, nNumLlamadasResto int             NOT NULL
-- 	, nDuracionResto    float           NOT NULL
-- 	, nImporteResto     money           NOT NULL
-- 	, dFchDescarga      datetime        NOT NULL
-- 	)

-- CREATE  nonclustered INDEX IX_TFacturasMovilesIbercom_82419 on dbo.TFacturasMovilesIbercom(nLinea, dFecha)

-- ALTER TABLE dbo.TFacturasMovilesIbercom ADD CONSTRAINT PK_TFacturasMovilesIbercom PRIMARY KEY clustered (dFecha, nLinea, nNumCorto)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TFacturasMovilesResumen' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TFacturasMovilesResumen'. */

-- CREATE TABLE dbo.TFacturasMovilesResumen
-- 	( dFechaFactura     smalldatetime   NOT NULL
-- 	, nLinea            int             NOT NULL
-- 	, nNumCorto         int             NOT NULL
-- 	, cCodTipoTrafico   nvarchar(6)     NOT NULL
-- 	, dFechaInicio      smalldatetime       NULL
-- 	, dFechaFinal       smalldatetime       NULL
-- 	, cTipoTrafico      nvarchar(70)        NULL
-- 	, nNumLlamadas      int                 NULL
-- 	, cUnidadMedida     nvarchar(100)       NULL
-- 	, nCantidadMedida   float               NULL
-- 	, nCantidadFranquic float               NULL
-- 	, nImporteFranquic  float               NULL
-- 	, nImporte          float               NULL
-- 	)

-- ALTER TABLE dbo.TFacturasMovilesResumen ADD CONSTRAINT PK_TFacturasMovilesResumen PRIMARY KEY clustered (nLinea, nNumCorto, cCodTipoTrafico, dFechaFactura)

-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TFacturasMovilesTarifas'. */

-- CREATE TABLE dbo.TFacturasMovilesTarifas
-- 	( nCodTarifa   smallint        NOT NULL
-- 	, cNombre      varchar(50)     NOT NULL
-- 	, cCodOperador varchar(3)      NOT NULL
-- 	, nImporte     float           NOT NULL
-- 	, bDatos       bit             NOT NULL
-- 	)

-- CREATE unique nonclustered INDEX IX_CodOperador on dbo.TFacturasMovilesTarifas(cCodOperador)

-- ALTER TABLE dbo.TFacturasMovilesTarifas ADD CONSTRAINT PK_TFacturasMovilesTarifas PRIMARY KEY clustered (nCodTarifa)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TFacturasMovilesVarios' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TFacturasMovilesVarios'. */

-- CREATE TABLE dbo.TFacturasMovilesVarios
-- 	( dFechaFactura smalldatetime   NOT NULL
-- 	, nLinea        int             NOT NULL
-- 	, nNumCorto     int             NOT NULL
-- 	, nCodVario     nvarchar(6)     NOT NULL
-- 	, nDescripVario nvarchar(200)   NOT NULL
-- 	, nImporte      float           NOT NULL
-- 	)

-- ALTER TABLE dbo.TFacturasMovilesVarios ADD CONSTRAINT PK_AUX_SOFIA_VARIOS PRIMARY KEY clustered (nLinea, nNumCorto, nCodVario, dFechaFactura)

	/* Ninguna clave externa hace referencia a la tabla 'dbo.TFechasCargas' o el usuario no tiene permisos para hacer referencia a tablas. */

CREATE TABLE dbo.TFechasCargas
	( nId         int             NOT NULL
	, cLiteral    varchar(20)     NOT NULL
	, dFecha      datetime        NOT NULL
	, cSQL        varchar(-1)     NOT NULL
	, nUmbral     int             NOT NULL
	, dFchUmbral  datetime            NULL
	, nOrden      int                 NULL
	, dFchControl datetime        NOT NULL
	)

ALTER TABLE dbo.TFechasCargas ADD CONSTRAINT PK_TFechasCargas PRIMARY KEY clustered (nId)

-- 	/* El objeto 'dbo.TGastelBpTrunk' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.TGastelBpTrunk' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TGastelBpTrunk' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TGastelBpTrunk'. */

-- CREATE TABLE dbo.TGastelBpTrunk
-- 	( dFecha      datetime        NOT NULL
-- 	, dHoraInicio nvarchar(60)    NOT NULL
-- 	, dDuracion   nvarchar(60)    NOT NULL
-- 	, nNumCorto   int             NOT NULL
-- 	, nDestino    int             NOT NULL
-- 	, cTipo       nvarchar(20)    NOT NULL
-- 	)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TGastelResumen1' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TGastelResumen1'. */

-- CREATE TABLE dbo.TGastelResumen1
-- 	( dFecha          datetime        NOT NULL
-- 	, nAnio           int             NOT NULL
-- 	, nMes            smallint        NOT NULL
-- 	, nLinea          int             NOT NULL
-- 	, nNumCorto       int             NOT NULL
-- 	, nNumLLamadasEnt int                 NULL
-- 	, nDuracionEnt    numeric(38,20)      NULL
-- 	, nNumLLamadasIn  int                 NULL
-- 	, nDuracionIn     numeric(38,20)      NULL
-- 	, nNumLLamadasMc  int                 NULL
-- 	, nDuracionMc     numeric(38,20)      NULL
-- 	, nCosteMc        numeric(38,20)      NULL
-- 	, nNumLLamadasMv  int                 NULL
-- 	, nDuracionMv     numeric(38,20)      NULL
-- 	, nCosteMv        numeric(38,20)      NULL
-- 	, nNumLLamadasMet int                 NULL
-- 	, nDuracionMet    numeric(38,20)      NULL
-- 	, nCosteMet       numeric(38,20)      NULL
-- 	, nNumLLamadasPro int                 NULL
-- 	, nDuracionPro    numeric(38,20)      NULL
-- 	, nCostePro       numeric(38,20)      NULL
-- 	, nNumLLamadasNac int                 NULL
-- 	, nDuracionNac    numeric(38,20)      NULL
-- 	, nCosteNac       numeric(38,20)      NULL
-- 	, nNumLLamadasInt int                 NULL
-- 	, nDuracionInt    numeric(38,20)      NULL
-- 	, nCosteInt       numeric(38,20)      NULL
-- 	, nNumLLamadasOtr int                 NULL
-- 	, nDuracionOtr    numeric(38,20)      NULL
-- 	, nCosteOtr       numeric(38,20)      NULL
-- 	, dFchDescarga    datetime        NOT NULL
-- 	)

-- CREATE  nonclustered INDEX IX_TGastelResumen1_47306 on dbo.TGastelResumen1(nLinea, dFecha)

-- ALTER TABLE dbo.TGastelResumen1 ADD CONSTRAINT PK_TGastelResumen1_1 PRIMARY KEY clustered (dFecha, nNumCorto)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TGastelResumen2' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TGastelResumen2'. */

-- CREATE TABLE dbo.TGastelResumen2
-- 	( nAnio           int             NOT NULL
-- 	, nMes            smallint        NOT NULL
-- 	, nNumCorto       int             NOT NULL
-- 	, nCoste          numeric(38,20)  NOT NULL
-- 	, dFchUltimaTrama datetime        NOT NULL
-- 	, dFchDescarga    datetime        NOT NULL
-- 	)

-- ALTER TABLE dbo.TGastelResumen2 ADD CONSTRAINT PK_TGastelResumen2 PRIMARY KEY clustered (nAnio, nMes, nNumCorto)

-- 	/* El objeto 'dbo.TGastelTrunking' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.TGastelTrunking' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TGastelTrunking' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TGastelTrunking'. */

-- CREATE TABLE dbo.TGastelTrunking
-- 	( nNumCorto   int             NOT NULL
-- 	, nIR         int             NOT NULL
-- 	, nS          int             NOT NULL
-- 	, dFchMin     datetime            NULL
-- 	, dFchMax     datetime            NULL
-- 	, dFchControl datetime        NOT NULL
-- 	)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TGeslicoHistoricos' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TGeslicoHistoricos'. */

-- CREATE TABLE dbo.TGeslicoHistoricos
-- 	( cBD   varchar(15)     NOT NULL
-- 	, cRuta varchar(255)    NOT NULL
-- 	)

-- ALTER TABLE dbo.TGeslicoHistoricos ADD CONSTRAINT PK_TGeslicoHistoricos PRIMARY KEY clustered (cBD)

-- 	/* El objeto 'dbo.TGraficasControlAlmacenTOIP' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.TGraficasControlAlmacenTOIP' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TGraficasControlAlmacenTOIP' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TGraficasControlAlmacenTOIP'. */

-- CREATE TABLE dbo.TGraficasControlAlmacenTOIP
-- 	( dFecha     datetime            NULL
-- 	, cEstado    varchar(20)     NOT NULL
-- 	, cElementos int                 NULL
-- 	)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TGruposPares' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TGruposPares'. */

-- CREATE TABLE dbo.TGruposPares
-- 	( nCableEnlace         int                 NULL
-- 	, nCodSede             int                 NULL
-- 	, nCodCentralita       int                 NULL
-- 	, nCodRack             int             NOT NULL
-- 	, nLIM                 smallint            NULL
-- 	, nMagazin             smallint            NULL
-- 	, nPosicion            smallint            NULL
-- 	, nEquipo              smallint            NULL
-- 	, cEndPoint            varchar(50)         NULL
-- 	, cGrupo               varchar(35)     NOT NULL
-- 	, nPar                 int             NOT NULL
-- 	, cCaja                varchar(10)         NULL
-- 	, cUbicacion           varchar(10)         NULL
-- 	, cObservaciones       varchar(50)         NULL
-- 	, cUsuarioAlta         varchar(10)         NULL
-- 	, dFchAlta             smalldatetime       NULL
-- 	, cUsuarioModificacion varchar(10)         NULL
-- 	, dFchModificacion     smalldatetime       NULL
-- 	, nLinea               int                 NULL
-- 	)

-- CREATE  nonclustered INDEX _dta_index_TGruposPares_17_1181247263__K7_K6_K5_K4_K3_2 on dbo.TGruposPares(nEquipo, nPosicion, nMagazin, nLIM, nCodCentralita)

-- ALTER TABLE dbo.TGruposPares ADD CONSTRAINT PK_TGruposPares PRIMARY KEY clustered (nCodRack, cGrupo, nPar)

-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TGruposTACACS'. */

-- CREATE TABLE dbo.TGruposTACACS
-- 	( nId          int             NOT NULL
-- 	, cGrupo       varchar(15)     NOT NULL
-- 	, cDescripcion varchar(150)        NULL
-- 	)

-- CREATE unique nonclustered INDEX IX_TGruposTACACS on dbo.TGruposTACACS(nId)

-- ALTER TABLE dbo.TGruposTACACS ADD CONSTRAINT PK_TGruposTACACS PRIMARY KEY clustered (nId)

-- 	/* El objeto 'dbo.TGSalto' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.TGSalto' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TGSalto' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TGSalto'. */

-- CREATE TABLE dbo.TGSalto
-- 	( ncorto float               NULL
-- 	, nsalto float               NULL
-- 	)

-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.THardware'. */

-- CREATE TABLE dbo.THardware
-- 	( nCodHardware       int             NOT NULL
-- 	, cNombre            varchar(30)     NOT NULL
-- 	, cHW                varchar(30)     NOT NULL
-- 	, cROF               varchar(50)         NULL
-- 	, nExtAnalogicas     int                 NULL
-- 	, nExtDigitales      int                 NULL
-- 	, nEnAnalogicos      int                 NULL
-- 	, nEnDigitales       int                 NULL
-- 	, nCodTipoCentralita int                 NULL
-- 	)

-- CREATE  nonclustered INDEX IX_HW_ROF on dbo.THardware(cHW, cROF)

-- CREATE unique nonclustered INDEX IX_NombreHW on dbo.THardware(cNombre)

-- ALTER TABLE dbo.THardware ADD CONSTRAINT PK_THardware PRIMARY KEY clustered (nCodHardware)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.THistoricoActuaciones' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.THistoricoActuaciones'. */

-- CREATE TABLE dbo.THistoricoActuaciones
-- 	( nCodActuacion        int             NOT NULL
-- 	, nCodCentralita       int             NOT NULL
-- 	, nNumTicket           int                 NULL
-- 	, cDescripcion         varchar(-1)         NULL
-- 	, cUsuarioAlta         varchar(10)         NULL
-- 	, dFchAlta             smalldatetime       NULL
-- 	, cUsuarioModificacion varchar(10)         NULL
-- 	, dFchModificacion     smalldatetime       NULL
-- 	)

-- CREATE unique nonclustered INDEX IX_THistoricoActuaciones on dbo.THistoricoActuaciones(cUsuarioAlta, dFchAlta, nCodCentralita)

-- ALTER TABLE dbo.THistoricoActuaciones ADD CONSTRAINT PK_T PRIMARY KEY clustered (nCodActuacion)

-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.THistoricoActuacionesLineas'. */

-- CREATE TABLE dbo.THistoricoActuacionesLineas
-- 	( nCodActuacion        int             NOT NULL
-- 	, nLinea               int             NOT NULL
-- 	, nNumTicket           int             NOT NULL
-- 	, cDescripcion         varchar(-1)         NULL
-- 	, dFchAviso            datetime            NULL
-- 	, cUsuarioAlta         varchar(25)     NOT NULL
-- 	, dFchAlta             datetime        NOT NULL
-- 	, cUsuarioModificacion varchar(25)         NULL
-- 	, dFchModificacion     datetime            NULL
-- 	, nNumDocum            int                 NULL
-- 	)

-- CREATE  nonclustered INDEX IX_THistoricoActuacionesLineas_58663 on dbo.THistoricoActuacionesLineas(cUsuarioAlta)

-- CREATE  nonclustered INDEX IX_THistoricoActuacionesLineas_Linea on dbo.THistoricoActuacionesLineas(nLinea)

-- ALTER TABLE dbo.THistoricoActuacionesLineas ADD CONSTRAINT PK_THistoricoActuacionesLineas PRIMARY KEY clustered (nCodActuacion)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.THistoricoAsignaciones' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.THistoricoAsignaciones'. */

-- CREATE TABLE dbo.THistoricoAsignaciones
-- 	( nLinea           int             NOT NULL
-- 	, cAsignacion      char(1)             NULL
-- 	, cDNI             varchar(9)          NULL
-- 	, nEmpPuesto       int                 NULL
-- 	, nCodUni          int             NOT NULL
-- 	, dFchBajaDir      datetime        NOT NULL
-- 	, nCodCoberturaAnt smallint            NULL
-- 	)

-- CREATE  nonclustered INDEX IX_THistoricoAsignaciones on dbo.THistoricoAsignaciones(nLinea, nCodUni, dFchBajaDir)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.THistoricoDispositivosIP' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.THistoricoDispositivosIP'. */

-- CREATE TABLE dbo.THistoricoDispositivosIP
-- 	( nCodActuacion        int             NOT NULL
-- 	, cMAC                 varchar(15)     NOT NULL
-- 	, dFecha               smalldatetime   NOT NULL
-- 	, nNumTicket           int                 NULL
-- 	, cDescripcion         varchar(-1)     NOT NULL
-- 	, cUsuarioModificacion varchar(10)         NULL
-- 	, dFchModificacion     smalldatetime       NULL
-- 	)

-- CREATE  nonclustered INDEX IX_THistoricoDispositivosIP_cMAC on dbo.THistoricoDispositivosIP(cMAC)

-- ALTER TABLE dbo.THistoricoDispositivosIP ADD CONSTRAINT PK_THDIP PRIMARY KEY clustered (nCodActuacion)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.THistoricoFicheroMovistar' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.THistoricoFicheroMovistar'. */

-- CREATE TABLE dbo.THistoricoFicheroMovistar
-- 	( dFchFichero    datetime        NOT NULL
-- 	, nLinea         int             NOT NULL
-- 	, cEstadoLinea   varchar(50)         NULL
-- 	, cICC           varchar(19)     NOT NULL
-- 	, cIMEI          varchar(16)     NOT NULL
-- 	, cMarca         varchar(50)         NULL
-- 	, cModelo        varchar(50)         NULL
-- 	, cClaseTarjeta  varchar(50)         NULL
-- 	, dFchActivacion datetime            NULL
-- 	, cNumCorto      varchar(10)         NULL
-- 	, cPerfil        varchar(50)         NULL
-- 	, cICC1          varchar(19)         NULL
-- 	, cICC2          varchar(19)         NULL
-- 	, cICC3          varchar(19)         NULL
-- 	)

-- CREATE  nonclustered INDEX IX_THistoricoFicheroMovistar_ICC on dbo.THistoricoFicheroMovistar(cICC)

-- CREATE  nonclustered INDEX IX_THistoricoFicheroMovistar_ICC1 on dbo.THistoricoFicheroMovistar(cICC1)

-- CREATE  nonclustered INDEX IX_THistoricoFicheroMovistar_ICC2 on dbo.THistoricoFicheroMovistar(cICC2)

-- CREATE  nonclustered INDEX IX_THistoricoFicheroMovistar_ICC3 on dbo.THistoricoFicheroMovistar(cICC3)

-- ALTER TABLE dbo.THistoricoFicheroMovistar ADD CONSTRAINT PK_THistoricoFicheroMovistar PRIMARY KEY clustered (dFchFichero, nLinea, cICC, cIMEI)

-- 	/* El objeto 'dbo.THistoricoFicheroMovistarBCK' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.THistoricoFicheroMovistarBCK' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.THistoricoFicheroMovistarBCK' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.THistoricoFicheroMovistarBCK'. */

-- CREATE TABLE dbo.THistoricoFicheroMovistarBCK
-- 	( dFchFichero    datetime        NOT NULL
-- 	, nLinea         int             NOT NULL
-- 	, cEstadoLinea   varchar(50)         NULL
-- 	, cICC           varchar(19)     NOT NULL
-- 	, cIMEI          varchar(15)     NOT NULL
-- 	, cMarca         varchar(50)         NULL
-- 	, cModelo        varchar(50)         NULL
-- 	, cClaseTarjeta  varchar(50)         NULL
-- 	, dFchActivacion datetime            NULL
-- 	, cNumCorto      varchar(10)         NULL
-- 	, cPerfil        varchar(50)         NULL
-- 	, cICC1          varchar(19)         NULL
-- 	, cICC2          varchar(19)         NULL
-- 	, cICC3          varchar(19)         NULL
-- 	)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.THistoricoListasBlancas' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.THistoricoListasBlancas'. */

-- CREATE TABLE dbo.THistoricoListasBlancas
-- 	( nCodigo              int             NOT NULL
-- 	, nlinea               int             NOT NULL
-- 	, nnumcorto            int             NOT NULL
-- 	, nnumexterior         int             NOT NULL
-- 	, cdescripcion         varchar(50)     NOT NULL
-- 	, cobservaciones       varchar(250)        NULL
-- 	, ncoduni              int                 NULL
-- 	, ncodpuesto           int                 NULL
-- 	, cDNI                 varchar(9)          NULL
-- 	, cUsuarioAlta         varchar(10)         NULL
-- 	, dFchAlta             smalldatetime       NULL
-- 	, cUsuarioModificacion varchar(10)         NULL
-- 	, dFchModificacion     smalldatetime       NULL
-- 	)

-- ALTER TABLE dbo.THistoricoListasBlancas ADD CONSTRAINT PK_THistoricoListasBlancas PRIMARY KEY clustered (nCodigo)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TInformeAsignacion_v1' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TInformeAsignacion_v1'. */

-- CREATE TABLE dbo.TInformeAsignacion_v1
-- 	( nIdInforme  int             NOT NULL
-- 	, cDNI        varchar(9)      NOT NULL
-- 	, xInforme    xml                 NULL
-- 	, bHash       binary(16)          NULL
-- 	, cRutaPdf    varchar(255)        NULL
-- 	, dFchControl datetime        NOT NULL
-- 	)

-- CREATE  nonclustered INDEX IX_TInformeAsignacion_v1_DNI on dbo.TInformeAsignacion_v1(cDNI)

-- ALTER TABLE dbo.TInformeAsignacion_v1 ADD CONSTRAINT PK_TInformeAsignacion_v1 PRIMARY KEY clustered (nIdInforme)

-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TInformesSQL'. */

-- CREATE TABLE dbo.TInformesSQL
-- 	( nId                  int             NOT NULL
-- 	, nTipo                int             NOT NULL
-- 	, cDescripcion         varchar(1000)   NOT NULL
-- 	, cSQL                 varchar(-1)     NOT NULL
-- 	, cVersiones           varchar(-1)         NULL
-- 	, bErrorSQL            bit             NOT NULL
-- 	, bActivo              bit             NOT NULL
-- 	, cServidor            varchar(50)     NOT NULL
-- 	, cBaseDatos           varchar(50)     NOT NULL
-- 	, bEconomico           bit             NOT NULL
-- 	, dFchAlta             datetime        NOT NULL
-- 	, dUsuarioAlta         varchar(50)     NOT NULL
-- 	, dFchModificacion     datetime            NULL
-- 	, dUsuarioModificacion varchar(50)         NULL
-- 	)

-- ALTER TABLE dbo.TInformesSQL ADD CONSTRAINT PK_TInformesSQL_1 PRIMARY KEY clustered (nId)

-- 	/* El objeto 'dbo.TInformesSQLSolicitudes' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TInformesSQLSolicitudes' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TInformesSQLSolicitudes'. */

-- CREATE TABLE dbo.TInformesSQLSolicitudes
-- 	( nIdInforme    int             NOT NULL
-- 	, cUsuario      varchar(50)     NOT NULL
-- 	, dFchSolicitud datetime        NOT NULL
-- 	)

-- 	/* El objeto 'dbo.TIntentosColectorCDP' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TIntentosColectorCDP' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TIntentosColectorCDP'. */

-- CREATE TABLE dbo.TIntentosColectorCDP
-- 	( cDevice     varchar(8000)       NULL
-- 	, cIP         varchar(8000)       NULL
-- 	, bPing       bit             NOT NULL
-- 	, nIntento    int                 NULL
-- 	, dFchIntento datetime        NOT NULL
-- 	)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TIPs_TEORICAS' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TIPs_TEORICAS'. */

-- CREATE TABLE dbo.TIPs_TEORICAS
-- 	( ID                  smallint        NOT NULL
-- 	, RED                 nvarchar(100)       NULL
-- 	, RED_ANUNCIADA       nvarchar(100)       NULL
-- 	, INTERFAZ            nvarchar(100)       NULL
-- 	, TIPO                nvarchar(4)         NULL
-- 	, GRUPO               nvarchar(100)       NULL
-- 	, NOMBRE_GATEWAY      nvarchar(100)       NULL
-- 	, SEDE                int                 NULL
-- 	, SEDE_DIRECCION      nvarchar(510)       NULL
-- 	, FUNCION_RED         nvarchar(max)        NULL
-- 	, SEDE_ALTERNATIVA    int                 NULL
-- 	, USUARIOALTA         varchar(10)         NULL
-- 	, FCHALTA             smalldatetime       NULL
-- 	, USUARIOMODIFICACION varchar(10)         NULL
-- 	, FCHMODIFICACION     smalldatetime       NULL
-- 	, GATEWAY             varchar(50)         NULL
-- 	)

-- ALTER TABLE dbo.TIPs_TEORICAS ADD CONSTRAINT PK_TIPs_TEORICAS_1 PRIMARY KEY clustered (ID)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TJefes' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TJefes'. */

-- CREATE TABLE dbo.TJefes
-- 	( idPuesto int             NOT NULL
-- 	, idUnidad int             NOT NULL
-- 	, Nivel    varchar(50)     NOT NULL
-- 	)

-- ALTER TABLE dbo.TJefes ADD CONSTRAINT PK_TJefes PRIMARY KEY clustered (idPuesto, idUnidad, Nivel)

-- 	/* El objeto 'dbo.TJefeSecretaria' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.TJefeSecretaria' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TJefeSecretaria' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TJefeSecretaria'. */

-- CREATE TABLE dbo.TJefeSecretaria
-- 	( nlinea    int                 NULL
-- 	, nnumcorto int                 NULL
-- 	, bjefe     bit                 NULL
-- 	, bsecre    bit                 NULL
-- 	)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TJefesUnidad' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TJefesUnidad'. */

-- CREATE TABLE dbo.TJefesUnidad
-- 	( nCodUni              int             NOT NULL
-- 	, cDenominacion        varchar(100)    NOT NULL
-- 	, ceMail               varchar(40)         NULL
-- 	, nJefe                int                 NULL
-- 	, cUsuarioModificacion varchar(10)         NULL
-- 	, dFchModificacion     datetime            NULL
-- 	)

-- CREATE  nonclustered INDEX IX_nJefe on dbo.TJefesUnidad(nJefe)

-- ALTER TABLE dbo.TJefesUnidad ADD CONSTRAINT PK_TJefesUnidad PRIMARY KEY clustered (nCodUni)

-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TLinDatos'. */

-- CREATE TABLE dbo.TLinDatos
-- 	( nCodLinDatos         int             NOT NULL
-- 	, nCodTipDatos         smallint        NOT NULL
-- 	, nNumAdmin            varchar(20)         NULL
-- 	, cAnillo              varchar(5)          NULL
-- 	, nPrincipal           int                 NULL
-- 	, bPrincipal           bit                 NULL
-- 	, nLinea               int                 NULL
-- 	, nCodSedeA            int             NOT NULL
-- 	, nCodSedeB            int                 NULL
-- 	, nCodElectronicaRedA  int                 NULL
-- 	, nCodElectronicaRedB  int                 NULL
-- 	, nCodTipoLote         smallint            NULL
-- 	, bOperativo           bit                 NULL
-- 	, cNemonico            varchar(25)         NULL
-- 	, nAnchoBanda          nvarchar(20)        NULL
-- 	, nAnchoBandaVoz       nvarchar(20)        NULL
-- 	, nVelocidad           int                 NULL
-- 	, nCaudal              int                 NULL
-- 	, fOperativa           datetime            NULL
-- 	, fInstalacion         datetime            NULL
-- 	, fBaja                datetime            NULL
-- 	, cIP                  nvarchar(100)       NULL
-- 	, cObservaciones       nvarchar(max)        NULL
-- 	, bConcurso            bit                 NULL
-- 	, nNodoCabecera        int                 NULL
-- 	, cUsuarioAlta         varchar(25)     NOT NULL
-- 	, dFchAlta             datetime        NOT NULL
-- 	, cUsuarioModificacion varchar(25)         NULL
-- 	, dFchModificacion     datetime            NULL
-- 	)

-- CREATE  nonclustered INDEX IX_TLinDatos_nLinea on dbo.TLinDatos(nLinea)

-- CREATE  nonclustered INDEX IX_TLinDatos_nLinea_nCodLinDatos on dbo.TLinDatos(nLinea, nCodLinDatos)

-- ALTER TABLE dbo.TLinDatos ADD CONSTRAINT PK_TLinDatos PRIMARY KEY clustered (nCodLinDatos)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TLinDatosVPNVLan' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TLinDatosVPNVLan'. */

-- CREATE TABLE dbo.TLinDatosVPNVLan
-- 	( nCodLinDatos int             NOT NULL
-- 	, nIdVLan      int             NOT NULL
-- 	, nIdVPN       int             NOT NULL
-- 	, cUsuarioAlta varchar(20)     NOT NULL
-- 	, dFchAlta     datetime        NOT NULL
-- 	)

-- ALTER TABLE dbo.TLinDatosVPNVLan ADD CONSTRAINT PK_TLinDatosVPNVLan PRIMARY KEY clustered (nCodLinDatos, nIdVLan, nIdVPN)


CREATE TABLE dbo.TLineas
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

CREATE  nonclustered INDEX IX_NumCorto on dbo.TLineas(nNumCorto)

CREATE  nonclustered INDEX IX_TipoLinea on dbo.TLineas(cCodTipLinea)

CREATE  nonclustered INDEX IX_TLineas_cNumCorto on dbo.TLineas(cNumCorto)

CREATE  nonclustered INDEX IX_TLineas_cNumero on dbo.TLineas(cNumero)

CREATE  nonclustered INDEX IX_TLineas_CodEstLin on dbo.TLineas(nCodEstLin)

CREATE  nonclustered INDEX IX_TLineas_nCodUni on dbo.TLineas(nCodUni)

CREATE unique nonclustered INDEX IX_TLineas_nullbusterNumCorto on dbo.TLineas(nullbusterCorto)

CREATE unique nonclustered INDEX IX_TLineas_nullbusterNumero on dbo.TLineas(nullbusterNumero)

ALTER TABLE dbo.TLineas ADD CONSTRAINT PK_TLineas PRIMARY KEY clustered (nLinea)

-- 	/* El objeto 'dbo.TLineasAccesos' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TLineasAccesos' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TLineasAccesos'. */

-- CREATE TABLE dbo.TLineasAccesos
-- 	( nLinea   int             NOT NULL
-- 	, nAccesos int             NOT NULL
-- 	, dFchAlta datetime        NOT NULL
-- 	, dFchBaja datetime            NULL
-- 	)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TLineasFacturacion' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TLineasFacturacion'. */

-- CREATE TABLE dbo.TLineasFacturacion
-- 	( nLinea         int             NOT NULL
-- 	, nIdFacturacion int             NOT NULL
-- 	, dFchAlta       datetime        NOT NULL
-- 	, dFchBaja       datetime            NULL
-- 	, bSinCoste      bit             NOT NULL
-- 	, dFchControl    datetime        NOT NULL
-- 	, cUsuario       varchar(25)     NOT NULL
-- 	)

-- ALTER TABLE dbo.TLineasFacturacion ADD CONSTRAINT PK_TLineasFacturacion PRIMARY KEY clustered (nLinea, nIdFacturacion, dFchAlta)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TLineasFacturacionVersiones' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TLineasFacturacionVersiones'. */

-- CREATE TABLE dbo.TLineasFacturacionVersiones
-- 	( dFchVersion    datetime        NOT NULL
-- 	, nLinea         int             NOT NULL
-- 	, nIdFacturacion int             NOT NULL
-- 	, dFchAlta       datetime        NOT NULL
-- 	, dFchBaja       datetime            NULL
-- 	, bSinCoste      bit             NOT NULL
-- 	, dFchControl    datetime        NOT NULL
-- 	, cUsuario       varchar(25)         NULL
-- 	)

-- ALTER TABLE dbo.TLineasFacturacionVersiones ADD CONSTRAINT PK_TLineasFactuacionVersiones PRIMARY KEY clustered (dFchVersion, nLinea, nIdFacturacion, dFchAlta)

-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TLinFijos'. */

-- CREATE TABLE dbo.TLinFijos
-- 	( nLinea                  int             NOT NULL
-- 	, nCodSubTipoFijo         smallint            NULL
-- 	, nCodUso                 smallint            NULL
-- 	, nCodCentralita          int                 NULL
-- 	, nCodSede                int                 NULL
-- 	, cTipoExtension          char(2)             NULL
-- 	, cObservaciones          varchar(250)        NULL
-- 	, nCodCobertura           smallint            NULL
-- 	, dFchCoberturaBMS        datetime            NULL
-- 	, nCodCoberturaAutorizada int                 NULL
-- 	, dFchCoberturaAutorizada smalldatetime       NULL
-- 	, nCodModelo              int                 NULL
-- 	, nCodModeloCisco         int                 NULL
-- 	, cUserId                 varchar(50)         NULL
-- 	, nLineaCab               int                 NULL
-- 	, nLineaPrincipal         int                 NULL
-- 	, nAccesos                smallint            NULL
-- 	, cNumAdministrativo      varchar(20)         NULL
-- 	, bLocucion               bit             NOT NULL
-- 	, bDesvioExterno          bit             NOT NULL
-- 	, nCodCoberturaHistorica  int                 NULL
-- 	, cParticion              varchar(30)         NULL
-- 	, cAlerting               varchar(50)         NULL
-- 	, nDsvTodas               int                 NULL
-- 	, dHoraInicio             datetime            NULL
-- 	, dHoraFin                datetime            NULL
-- 	, dHoraInicioS            datetime            NULL
-- 	, dHoraFinS               datetime            NULL
-- 	, dHoraInicioD            datetime            NULL
-- 	, dHoraFinD               datetime            NULL
-- 	, dFchMigracion           datetime            NULL
-- 	, dFchReserva             datetime            NULL
-- 	, cEPNMExc                varchar(50)         NULL
-- 	, cUsuarioAlta            varchar(25)     NOT NULL
-- 	, dFchAlta                datetime        NOT NULL
-- 	, cUsuarioModificacion    varchar(25)         NULL
-- 	, dFchModificacion        datetime            NULL
-- 	)

-- CREATE  nonclustered INDEX _dta_index_TLinFijos_17_136439610__K1_K9 on dbo.TLinFijos(nLinea, nCodCoberturaAutorizada)

-- CREATE  nonclustered INDEX IX_nLineaPrincipal on dbo.TLinFijos(nLineaPrincipal)

-- ALTER TABLE dbo.TLinFijos ADD CONSTRAINT PK_TLinFijos PRIMARY KEY clustered (nLinea)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TLinFijosDeviceProfile' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TLinFijosDeviceProfile'. */

-- CREATE TABLE dbo.TLinFijosDeviceProfile
-- 	( nLinea            int             NOT NULL
-- 	, nCodDeviceProfile int             NOT NULL
-- 	, nTecla            int             NOT NULL
-- 	, cDisplay          varchar(50)         NULL
-- 	, cLabel            varchar(50)         NULL
-- 	, cEPNM             varchar(50)         NULL
-- 	)

-- ALTER TABLE dbo.TLinFijosDeviceProfile ADD CONSTRAINT PK_TLinFijosDeviceProfile PRIMARY KEY clustered (nLinea, nCodDeviceProfile, nTecla)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TLinFijosDispositivosIP' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TLinFijosDispositivosIP'. */

-- CREATE TABLE dbo.TLinFijosDispositivosIP
-- 	( nLinea             int             NOT NULL
-- 	, nCodDispositivosIP int             NOT NULL
-- 	, nTecla             int             NOT NULL
-- 	, cDisplay           varchar(50)         NULL
-- 	, cLabel             varchar(50)         NULL
-- 	, cEPNM              varchar(50)         NULL
-- 	)

-- CREATE  nonclustered INDEX IX_TLinFijosDispositivosIP_3397 on dbo.TLinFijosDispositivosIP(nCodDispositivosIP, nTecla)

-- ALTER TABLE dbo.TLinFijosDispositivosIP ADD CONSTRAINT PK_TLinFijosDispositivosIP PRIMARY KEY clustered (nLinea, nCodDispositivosIP, nTecla)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TLinFijosPuestos' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TLinFijosPuestos'. */

-- CREATE TABLE dbo.TLinFijosPuestos
-- 	( nLineaFija int             NOT NULL
-- 	, nCodPto    int             NOT NULL
-- 	, bPrincipal bit             NOT NULL
-- 	)

-- CREATE  nonclustered INDEX _dta_index_TLinFijosPuestos_17_894626230__K1_K2_K3 on dbo.TLinFijosPuestos(nLineaFija, nCodPto, bPrincipal)

-- CREATE  nonclustered INDEX ind_linea on dbo.TLinFijosPuestos(nLineaFija)

-- CREATE  nonclustered INDEX ind_puesto on dbo.TLinFijosPuestos(nCodPto)

-- ALTER TABLE dbo.TLinFijosPuestos ADD CONSTRAINT PK_TLinFijosPuestos PRIMARY KEY clustered (nLineaFija, nCodPto)

-- 	/* El objeto 'dbo.TLinFijosPuestosPersonasHistorico' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TLinFijosPuestosPersonasHistorico' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TLinFijosPuestosPersonasHistorico'. */

-- CREATE TABLE dbo.TLinFijosPuestosPersonasHistorico
-- 	( nLinea     varchar(50)     NOT NULL
-- 	, nNumCorto  varchar(50)         NULL
-- 	, cDNI       varchar(9)      NOT NULL
-- 	, cLetraDNI  varchar(1)          NULL
-- 	, cNombre    varchar(40)     NOT NULL
-- 	, cApellido1 varchar(40)     NOT NULL
-- 	, cApellido2 varchar(40)     NOT NULL
-- 	, nNumPer    int                 NULL
-- 	, nNumPuesto int                 NULL
-- 	, cPuesto    varchar(40)         NULL
-- 	, cGrupo     varchar(2)          NULL
-- 	, nNivel     int                 NULL
-- 	, nCodUni    int             NOT NULL
-- 	, cUnidad    varchar(100)    NOT NULL
-- 	, nIdArea    int             NOT NULL
-- 	, Area       varchar(100)    NOT NULL
-- 	, dFchInicio datetime        NOT NULL
-- 	, dFchFin    datetime            NULL
-- 	)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TLinFijosUnidades' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TLinFijosUnidades'. */

-- CREATE TABLE dbo.TLinFijosUnidades
-- 	( nLinea     int             NOT NULL
-- 	, nCodUni    int             NOT NULL
-- 	, bOculto    bit             NOT NULL
-- 	, bPrincipal bit             NOT NULL
-- 	)

-- ALTER TABLE dbo.TLinFijosUnidades ADD CONSTRAINT PK_TLinFijosUnidades PRIMARY KEY clustered (nLinea, nCodUni)

-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TLinMoviles'. */

-- CREATE TABLE dbo.TLinMoviles
-- 	( nLinea               int             NOT NULL
-- 	, cDNI                 varchar(9)          NULL
-- 	, nCodTipMovil         int             NOT NULL
-- 	, cObserva             nvarchar(400)       NULL
-- 	, cPerfil              varchar(50)         NULL
-- 	, cPerfilAutorizado    varchar(50)         NULL
-- 	, cCoberturaNormativa  varchar(50)         NULL
-- 	, cGprs                char(2)             NULL
-- 	, cGprsG               char(2)             NULL
-- 	, cIntranet            char(2)             NULL
-- 	, cIntranetG           char(2)             NULL
-- 	, cMoviMail            char(2)             NULL
-- 	, cMoviMailG           char(2)             NULL
-- 	, cSMS                 char(2)             NULL
-- 	, Blackberry           char(2)             NULL
-- 	, cBlackberryG         char(2)             NULL
-- 	, MMS                  char(2)             NULL
-- 	, cMMSG                char(2)             NULL
-- 	, cEmocion             char(2)             NULL
-- 	, cEmocionG            char(2)             NULL
-- 	, cMultisim            char(2)             NULL
-- 	, cMultisimG           char(2)             NULL
-- 	, cVideoLlamada        char(2)             NULL
-- 	, cVideoLlamadaG       char(2)             NULL
-- 	, nNumFaxAsoc          int                 NULL
-- 	, nCodTarifaPlana      int                 NULL
-- 	, nCodTarifa           smallint            NULL
-- 	, cUsuarioIntranet     varchar(20)         NULL
-- 	, cIPm2m               nvarchar(32)        NULL
-- 	, cSoloEmergencia      char(2)             NULL
-- 	, bHorarioExtendido    bit             NOT NULL
-- 	, bPrincipal           bit             NOT NULL
-- 	, nCodSede             int                 NULL
-- 	, cUsuarioAlta         varchar(25)     NOT NULL
-- 	, dFchAlta             datetime        NOT NULL
-- 	, cUsuarioModificacion varchar(25)         NULL
-- 	, dFchModificacion     datetime            NULL
-- 	)

-- CREATE  nonclustered INDEX Ind_dni on dbo.TLinMoviles(cDNI)

-- CREATE  nonclustered INDEX Ind_tipomov on dbo.TLinMoviles(nCodTipMovil)

-- ALTER TABLE dbo.TLinMoviles ADD CONSTRAINT PK_TLinMoviles PRIMARY KEY clustered (nLinea)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TLinMovilesTarifas' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TLinMovilesTarifas'. */

-- CREATE TABLE dbo.TLinMovilesTarifas
-- 	( nLinea         int             NOT NULL
-- 	, nCodTarifa     int             NOT NULL
-- 	, dFchAltaTarifa datetime        NOT NULL
-- 	)

-- ALTER TABLE dbo.TLinMovilesTarifas ADD CONSTRAINT PK_TLinMovilesTarifas PRIMARY KEY clustered (nLinea, nCodTarifa)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TListaAutorizados' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TListaAutorizados'. */

-- CREATE TABLE dbo.TListaAutorizados
-- 	( nLinea             int             NOT NULL
-- 	, cDestinoAutorizado varchar(20)     NOT NULL
-- 	, cUsuarioAlta       varchar(10)         NULL
-- 	, dFchAlta           datetime            NULL
-- 	)

-- ALTER TABLE dbo.TListaAutorizados ADD CONSTRAINT PK_TListasAutorizadas PRIMARY KEY clustered (nLinea, cDestinoAutorizado)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TListaAutorizadosPerfil' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TListaAutorizadosPerfil'. */

-- CREATE TABLE dbo.TListaAutorizadosPerfil
-- 	( cPerfil            varchar(50)     NOT NULL
-- 	, cDestinoAutorizado varchar(20)     NOT NULL
-- 	, cUsuarioAlta       varchar(10)         NULL
-- 	, dFchAlta           datetime            NULL
-- 	)

-- ALTER TABLE dbo.TListaAutorizadosPerfil ADD CONSTRAINT PK_TListaAutorizadosPerfil PRIMARY KEY clustered (cPerfil, cDestinoAutorizado)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TLiteralesAnexos' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TLiteralesAnexos'. */

-- CREATE TABLE dbo.TLiteralesAnexos
-- 	( nLote      int             NOT NULL
-- 	, cAnexo     varchar(5)      NOT NULL
-- 	, cLiteral   varchar(100)    NOT NULL
-- 	, cAgrupador varchar(100)    NOT NULL
-- 	)

-- ALTER TABLE dbo.TLiteralesAnexos ADD CONSTRAINT PK_TLiteralesAnexos PRIMARY KEY clustered (nLote, cAnexo)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TLog' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TLog'. */

-- CREATE TABLE dbo.TLog
-- 	( nCodLog    int             NOT NULL
-- 	, PostTime   datetime        NOT NULL
-- 	, cUser      varchar(30)     NOT NULL
-- 	, cOperacion varchar(50)     NOT NULL
-- 	, bDirecta   bit             NOT NULL
-- 	, bExterna   bit             NOT NULL
-- 	)

-- ALTER TABLE dbo.TLog ADD CONSTRAINT PK_TLog PRIMARY KEY clustered (nCodLog)

-- 	/* El objeto 'dbo.TLog_bck2010' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.TLog_bck2010' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TLog_bck2010' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TLog_bck2010'. */

-- CREATE TABLE dbo.TLog_bck2010
-- 	( nCodLog    int             NOT NULL
-- 	, PostTime   datetime        NOT NULL
-- 	, cUser      varchar(30)     NOT NULL
-- 	, cOperacion varchar(50)     NOT NULL
-- 	, bDirecta   bit             NOT NULL
-- 	, bExterna   bit             NOT NULL
-- 	)

-- 	/* El objeto 'dbo.TLog_bck2011' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.TLog_bck2011' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TLog_bck2011' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TLog_bck2011'. */

-- CREATE TABLE dbo.TLog_bck2011
-- 	( nCodLog    int             NOT NULL
-- 	, PostTime   datetime        NOT NULL
-- 	, cUser      varchar(30)     NOT NULL
-- 	, cOperacion varchar(50)     NOT NULL
-- 	, bDirecta   bit             NOT NULL
-- 	, bExterna   bit             NOT NULL
-- 	)

-- 	/* El objeto 'dbo.TLog_bck2012' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.TLog_bck2012' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TLog_bck2012' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TLog_bck2012'. */

-- CREATE TABLE dbo.TLog_bck2012
-- 	( nCodLog    int             NOT NULL
-- 	, PostTime   datetime        NOT NULL
-- 	, cUser      varchar(30)     NOT NULL
-- 	, cOperacion varchar(50)     NOT NULL
-- 	, bDirecta   bit             NOT NULL
-- 	, bExterna   bit             NOT NULL
-- 	)

-- 	/* El objeto 'dbo.TLog_bck2013' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.TLog_bck2013' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TLog_bck2013' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TLog_bck2013'. */

-- CREATE TABLE dbo.TLog_bck2013
-- 	( nCodLog    int             NOT NULL
-- 	, PostTime   datetime        NOT NULL
-- 	, cUser      varchar(30)     NOT NULL
-- 	, cOperacion varchar(50)     NOT NULL
-- 	, bDirecta   bit             NOT NULL
-- 	, bExterna   bit             NOT NULL
-- 	)

-- 	/* El objeto 'dbo.TLog_bck2014' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.TLog_bck2014' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TLog_bck2014' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TLog_bck2014'. */

-- CREATE TABLE dbo.TLog_bck2014
-- 	( nCodLog    int             NOT NULL
-- 	, PostTime   datetime        NOT NULL
-- 	, cUser      varchar(30)     NOT NULL
-- 	, cOperacion varchar(50)     NOT NULL
-- 	, bDirecta   bit             NOT NULL
-- 	, bExterna   bit             NOT NULL
-- 	)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TLogCargas' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TLogCargas'. */

-- CREATE TABLE dbo.TLogCargas
-- 	( nCodCarga    smallint        NOT NULL
-- 	, dFecha       datetime        NOT NULL
-- 	, cDescripcion varchar(50)     NOT NULL
-- 	)

-- ALTER TABLE dbo.TLogCargas ADD CONSTRAINT PK_TLogCargas PRIMARY KEY clustered (nCodCarga, dFecha)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TLogErrores' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TLogErrores'. */

-- CREATE TABLE dbo.TLogErrores
-- 	( nId             bigint          NOT NULL
-- 	, dFchControl     datetime        NOT NULL
-- 	, cUsuario        varchar(50)     NOT NULL
-- 	, cEquipo         varchar(75)     NOT NULL
-- 	, cApp            varchar(100)    NOT NULL
-- 	, cForm           varchar(100)        NULL
-- 	, cErrNumber      varchar(20)     NOT NULL
-- 	, cErrDescription varchar(-1)     NOT NULL
-- 	)

-- CREATE  nonclustered INDEX IX_TLogErroresFchControl on dbo.TLogErrores(dFchControl)

-- ALTER TABLE dbo.TLogErrores ADD CONSTRAINT PK_TLogErrores PRIMARY KEY clustered (nId)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TLogSqlDetalleGastel' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TLogSqlDetalleGastel'. */

-- CREATE TABLE dbo.TLogSqlDetalleGastel
-- 	( nId         int             NOT NULL
-- 	, cSQL        varchar(-1)     NOT NULL
-- 	, cUsuario    varchar(25)     NOT NULL
-- 	, cHost       varchar(50)     NOT NULL
-- 	, dFchControl datetime        NOT NULL
-- 	)

-- ALTER TABLE dbo.TLogSqlDetalleGastel ADD CONSTRAINT PK_TLogSqlDetalleGastel PRIMARY KEY clustered (nId)

-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TLotes'. */

-- CREATE TABLE dbo.TLotes
-- 	( nCodTipoLote smallint        NOT NULL
-- 	, cDescripcion varchar(40)     NOT NULL
-- 	)

-- ALTER TABLE dbo.TLotes ADD CONSTRAINT PK_TLotes PRIMARY KEY clustered (nCodTipoLote)

-- 	/* El objeto 'dbo.TMacs_Fabricantes' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.TMacs_Fabricantes' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TMacs_Fabricantes' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TMacs_Fabricantes'. */

-- CREATE TABLE dbo.TMacs_Fabricantes
-- 	( Cmacfabrica nvarchar(510)       NULL
-- 	, Cfabricante nvarchar(510)       NULL
-- 	)

-- 	/* El objeto 'dbo.TMacsCiscoWork' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.TMacsCiscoWork' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TMacsCiscoWork' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TMacsCiscoWork'. */

-- CREATE TABLE dbo.TMacsCiscoWork
-- 	( Cmac         nvarchar(100)       NULL
-- 	, chost        nvarchar(100)       NULL
-- 	, cip          nvarchar(100)       NULL
-- 	, cred         nvarchar(100)       NULL
-- 	, Cdispositivo nvarchar(100)       NULL
-- 	, Cpuerto      nvarchar(100)       NULL
-- 	, Cvlan        nvarchar(100)       NULL
-- 	, Dfechavisto  nvarchar(100)       NULL
-- 	)

-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TMDs'. */

-- CREATE TABLE dbo.TMDs
-- 	( nNumCorto            int                 NULL
-- 	, nCodCentralita       int             NOT NULL
-- 	, nLIM                 smallint        NOT NULL
-- 	, nMagazin             smallint        NOT NULL
-- 	, nPosicion            smallint        NOT NULL
-- 	, nEquipo              smallint        NOT NULL
-- 	, nMD                  int                 NULL
-- 	, cTipoExtension       varchar(2)          NULL
-- 	, cUsuarioAlta         varchar(10)         NULL
-- 	, dFchAlta             smalldatetime       NULL
-- 	, cUsuarioModificacion varchar(10)         NULL
-- 	, dFchModificacion     smalldatetime       NULL
-- 	, nLinea               int                 NULL
-- 	)

-- CREATE  nonclustered INDEX _dta_index_TMDs_17_57103294__K13_K6_K5_K4_K3_K2 on dbo.TMDs(nLinea, nEquipo, nPosicion, nMagazin, nLIM, nCodCentralita)

-- CREATE  nonclustered INDEX IX_TMDs_1034440 on dbo.TMDs(nLIM)

-- ALTER TABLE dbo.TMDs ADD CONSTRAINT PK_TMDs PRIMARY KEY clustered (nCodCentralita, nLIM, nMagazin, nPosicion, nEquipo)

-- 	/* El objeto 'dbo.TMensajesMentes' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TMensajesMentes' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TMensajesMentes'. */

-- CREATE TABLE dbo.TMensajesMentes
-- 	( nLinea  int             NOT NULL
-- 	, cNumero varchar(25)     NOT NULL
-- 	, cSMS    varchar(255)    NOT NULL
-- 	)

-- 	/* El objeto 'dbo.TMensajesMentesExternos' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.TMensajesMentesExternos' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TMensajesMentesExternos' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TMensajesMentesExternos'. */

-- CREATE TABLE dbo.TMensajesMentesExternos
-- 	( nLinea  int             NOT NULL
-- 	, cNumero varchar(25)     NOT NULL
-- 	, cSMS    varchar(255)    NOT NULL
-- 	)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TMentesSMS' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TMentesSMS'. */

-- CREATE TABLE dbo.TMentesSMS
-- 	( nCodSMS      int             NOT NULL
-- 	, cCodTipLinea int                 NULL
-- 	, cDescripcion nvarchar(60)    NOT NULL
-- 	, cMensaje     nvarchar(360)   NOT NULL
-- 	, bActivo      bit             NOT NULL
-- 	)

-- ALTER TABLE dbo.TMentesSMS ADD CONSTRAINT PK_TMentesSMS PRIMARY KEY clustered (nCodSMS)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TMenuDiscovery' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TMenuDiscovery'. */

-- CREATE TABLE dbo.TMenuDiscovery
-- 	( nDiaSemana int             NOT NULL
-- 	, cComando   varchar(100)    NOT NULL
-- 	)

-- ALTER TABLE dbo.TMenuDiscovery ADD CONSTRAINT PK_TMenuDiscovery PRIMARY KEY clustered (nDiaSemana)

-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TModelosFijos'. */

-- CREATE TABLE dbo.TModelosFijos
-- 	( nCodModelo     int             NOT NULL
-- 	, cDescripcion   varchar(50)     NOT NULL
-- 	, cDetalles      varchar(100)        NULL
-- 	, cTipoExtension varchar(2)          NULL
-- 	, cFirmware      varchar(30)         NULL
-- 	)

-- ALTER TABLE dbo.TModelosFijos ADD CONSTRAINT PK_TModelosFijos PRIMARY KEY clustered (nCodModelo)

-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TModelosTerminales'. */

-- CREATE TABLE dbo.TModelosTerminales
-- 	( nId                  int             NOT NULL
-- 	, cTipo                varchar(1)          NULL
-- 	, cMarca               varchar(50)     NOT NULL
-- 	, cModelo              varchar(50)     NOT NULL
-- 	, cModeloFabricante    varchar(50)         NULL
-- 	, cSO                  varchar(50)         NULL
-- 	, nIdCategoria         int                 NULL
-- 	, bDisponibilidad      bit                 NULL
-- 	, nTipoSIM             int                 NULL
-- 	, cCaracteristicas     varchar(-1)         NULL
-- 	, bImagen              image(16)           NULL
-- 	, bVigente             bit             NOT NULL
-- 	, nPulgadas            numeric(18,1)       NULL
-- 	, cUsuarioAlta         varchar(20)     NOT NULL
-- 	, dFchAlta             datetime        NOT NULL
-- 	, cUsuarioModificacion varchar(20)         NULL
-- 	, dFchModificacion     datetime            NULL
-- 	)

-- CREATE unique nonclustered INDEX IX_TModelosTerminales_new on dbo.TModelosTerminales(cMarca, cModelo)

-- ALTER TABLE dbo.TModelosTerminales ADD CONSTRAINT PK_TModelosTerminales_new PRIMARY KEY clustered (nId)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TMovalmacenmovil' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TMovalmacenmovil'. */

-- CREATE TABLE dbo.TMovalmacenmovil
-- 	( idmov                int             NOT NULL
-- 	, nemei                varchar(15)     NOT NULL
-- 	, dfechaentrada        datetime            NULL
-- 	, dfechasalida         datetime            NULL
-- 	, idmodelo             int                 NULL
-- 	, ctiposalida          varchar(50)         NULL
-- 	, cdni                 varchar(9)          NULL
-- 	, ncoduni              int                 NULL
-- 	, cUsuarioModificacion varchar(50)         NULL
-- 	, dFchModificacion     smalldatetime       NULL
-- 	, nlinea               int                 NULL
-- 	)

-- ALTER TABLE dbo.TMovalmacenmovil ADD CONSTRAINT PK_TMovalmacenmovil PRIMARY KEY clustered (idmov)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TMovilesSedes' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TMovilesSedes'. */

-- CREATE TABLE dbo.TMovilesSedes
-- 	( nLineaMovil int             NOT NULL
-- 	, nCodSede    int             NOT NULL
-- 	, UGD         varchar(50)         NULL
-- 	, dFchControl datetime        NOT NULL
-- 	)

-- ALTER TABLE dbo.TMovilesSedes ADD CONSTRAINT PK_TMovilesSedes PRIMARY KEY clustered (nLineaMovil, nCodSede)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TMovimientosEDR' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TMovimientosEDR'. */

-- CREATE TABLE dbo.TMovimientosEDR
-- 	( nCodMovimiento     int             NOT NULL
-- 	, nCodComponente     int                 NULL
-- 	, nCodElectronicaRed int                 NULL
-- 	, cDetalles          varchar(-1)         NULL
-- 	, dFchControl        datetime        NOT NULL
-- 	, cUsuario           varchar(10)     NOT NULL
-- 	)

-- ALTER TABLE dbo.TMovimientosEDR ADD CONSTRAINT PK_TMovimientosEDR PRIMARY KEY clustered (nCodMovimiento)

-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TMovimientoTerminalMovil'. */

-- CREATE TABLE dbo.TMovimientoTerminalMovil
-- 	( nId                  bigint          NOT NULL
-- 	, nIdTerminal          int             NOT NULL
-- 	, dFchOperacion        datetime        NOT NULL
-- 	, nCodEstado           int             NOT NULL
-- 	, nCodAlmacen          int                 NULL
-- 	, nLinea               int                 NULL
-- 	, cDNI                 varchar(9)          NULL
-- 	, nCodUni              int                 NULL
-- 	, cResumen             varchar(-1)         NULL
-- 	, cRutaDocumentacion   varchar(255)        NULL
-- 	, cUsuarioAlta         varchar(20)     NOT NULL
-- 	, dFchAlta             datetime        NOT NULL
-- 	, cUsuarioModificacion varchar(20)         NULL
-- 	, dFchModificacion     datetime            NULL
-- 	)

-- ALTER TABLE dbo.TMovimientoTerminalMovil ADD CONSTRAINT PK_TMovimientoTerminalMovil PRIMARY KEY clustered (nId)

-- 	/* El objeto 'dbo.tmp_costes' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.tmp_costes' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.tmp_costes' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.tmp_costes'. */

-- CREATE TABLE dbo.tmp_costes
-- 	( FECHA  datetime        NOT NULL
-- 	, LOTE   int             NOT NULL
-- 	, CODIGO varchar(20)     NOT NULL
-- 	, ANEXO  varchar(5)      NOT NULL
-- 	, PRECIO money           NOT NULL
-- 	, CAMPUS int             NOT NULL
-- 	)

-- 	/* El objeto 'dbo.tmp_OrderInformePdf' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.tmp_OrderInformePdf' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.tmp_OrderInformePdf' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.tmp_OrderInformePdf'. */

-- CREATE TABLE dbo.tmp_OrderInformePdf
-- 	( nIdArea int                 NULL
-- 	, nOrden  int                 NULL
-- 	)

-- 	/* El objeto 'dbo.TMP_PERSONAS' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.TMP_PERSONAS' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TMP_PERSONAS' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TMP_PERSONAS'. */

-- CREATE TABLE dbo.TMP_PERSONAS
-- 	( nLineaFija int             NOT NULL
-- 	, cnombre    varchar(40)     NOT NULL
-- 	, CAPELLIDOS varchar(81)     NOT NULL
-- 	, CENDUSER   varchar(8000)       NULL
-- 	, ncoduni    int                 NULL
-- 	)

-- 	/* El objeto 'dbo.tmp_reparto' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.tmp_reparto' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.tmp_reparto' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.tmp_reparto'. */

-- CREATE TABLE dbo.tmp_reparto
-- 	( CodCampus       int             NOT NULL
-- 	, Campus          varchar(100)    NOT NULL
-- 	, IdAreaCampus    int             NOT NULL
-- 	, AreaCampus      varchar(100)    NOT NULL
-- 	, CodSede         int             NOT NULL
-- 	, Sede            varchar(100)    NOT NULL
-- 	, IdAreaSede      int             NOT NULL
-- 	, AreaSede        varchar(100)    NOT NULL
-- 	, IdAreaLinea     int             NOT NULL
-- 	, AreaLinea       varchar(100)    NOT NULL
-- 	, LineasFijasSede int                 NULL
-- 	, edrSede         int                 NULL
-- 	)

-- 	/* El objeto 'dbo.tmp_TramitadoCuotas' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.tmp_TramitadoCuotas' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.tmp_TramitadoCuotas' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.tmp_TramitadoCuotas'. */

-- CREATE TABLE dbo.tmp_TramitadoCuotas
-- 	( nLinea     int                 NULL
-- 	, nNumCorto  int                 NULL
-- 	, cCodigoOut varchar(10)         NULL
-- 	, cCodigoIn  varchar(10)         NULL
-- 	)

-- 	/* El objeto 'dbo.TMultisede' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.TMultisede' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TMultisede' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TMultisede'. */

-- CREATE TABLE dbo.TMultisede
-- 	( nCodSedeCabecera int                 NULL
-- 	, nCodSede         int             NOT NULL
-- 	, cSede            varchar(100)    NOT NULL
-- 	, VVLAN            int                 NULL
-- 	, VLAN             int                 NULL
-- 	, WIFI_LAN         int                 NULL
-- 	, Racks            int                 NULL
-- 	, EDR              int                 NULL
-- 	, DISPOSITIVOS_EDR int                 NULL
-- 	, DISPOSITIVOS_LAN int                 NULL
-- 	)

-- 	/* El objeto 'dbo.TNOrder' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.TNOrder' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TNOrder' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TNOrder'. */

-- CREATE TABLE dbo.TNOrder
-- 	( ncoduni       int                 NULL
-- 	, cdenominacion varchar(100)        NULL
-- 	, Norderarea    int             NOT NULL
-- 	, norder        int                 NULL
-- 	, nidarea       int                 NULL
-- 	)

-- 	/* El objeto 'dbo.TOpenDataInternas1' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TOpenDataInternas1' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TOpenDataInternas1'. */

-- CREATE TABLE dbo.TOpenDataInternas1
-- 	( Anio         int             NOT NULL
-- 	, Mes          int             NOT NULL
-- 	, Area_Origen  int             NOT NULL
-- 	, Area_Destino int             NOT NULL
-- 	, Llamadas     int             NOT NULL
-- 	, dFchControl  datetime        NOT NULL
-- 	)

-- 	/* El objeto 'dbo.TPasosCarga' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TPasosCarga' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TPasosCarga'. */

-- CREATE TABLE dbo.TPasosCarga
-- 	( cPaso      varchar(80)     NOT NULL
-- 	, nRegistros bigint          NOT NULL
-- 	, dFchContro datetime        NOT NULL
-- 	)

-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TPedidosMoviles'. */

-- CREATE TABLE dbo.TPedidosMoviles
-- 	( nId                  int             NOT NULL
-- 	, cIdentificador       uniqueidentifier NOT NULL
-- 	, cDescriptor          varchar(50)     NOT NULL
-- 	, nCodModelo           int                 NULL
-- 	, nUnidades            int             NOT NULL
-- 	, dFchInicio           datetime        NOT NULL
-- 	, dFchRemedy           datetime            NULL
-- 	, dFchCompleto         datetime            NULL
-- 	, cContrato            varchar(20)     NOT NULL
-- 	, nPrecioUnidad        money               NULL
-- 	, nCodEstado           int             NOT NULL
-- 	, nTipoPeticion        int             NOT NULL
-- 	, cTicket              varchar(50)         NULL
-- 	, cTarea               varchar(50)         NULL
-- 	, nIdPedidoProveedor   int                 NULL
-- 	, cCodigoAIS           varchar(50)         NULL
-- 	, cProyecto            varchar(30)         NULL
-- 	, nIdProyecto          int                 NULL
-- 	, dFchAlta             datetime        NOT NULL
-- 	, cUsuarioAlta         varchar(20)     NOT NULL
-- 	, dFchModificacion     datetime            NULL
-- 	, cUsuarioModificacion varchar(20)         NULL
-- 	)

-- ALTER TABLE dbo.TPedidosMoviles ADD CONSTRAINT PK_TPedidosMoviles PRIMARY KEY clustered (nId)

-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TPerfilesMovil'. */

-- CREATE TABLE dbo.TPerfilesMovil
-- 	( cPerfil    varchar(50)     NOT NULL
-- 	, cCobertura varchar(50)     NOT NULL
-- 	)

-- ALTER TABLE dbo.TPerfilesMovil ADD CONSTRAINT PK_TPerfilesMovil_1 PRIMARY KEY clustered (cPerfil)

-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TPersonas'. */

-- CREATE TABLE dbo.TPersonas
-- 	( cDNI          varchar(9)      NOT NULL
-- 	, cLetraDNI     varchar(1)          NULL
-- 	, ncodtipoper   int             NOT NULL
-- 	, ccodtipodoc   varchar(1)          NULL
-- 	, cape1         varchar(40)     NOT NULL
-- 	, cape2         varchar(40)     NOT NULL
-- 	, cnombre       varchar(40)     NOT NULL
-- 	, ncoduni       int                 NULL
-- 	, nempnumper    int                 NULL
-- 	, cempcodsit    varchar(2)          NULL
-- 	, cempcodmod    varchar(2)          NULL
-- 	, cempcategoria varchar(4)          NULL
-- 	, cempgrupotit  varchar(2)          NULL
-- 	, cempgrupoper  varchar(1)          NULL
-- 	, cempareaper   varchar(2)          NULL
-- 	, cempdivision  varchar(4)          NULL
-- 	, nemppuesto    int                 NULL
-- 	, cempnompuesto varchar(40)         NULL
-- 	, nempnivel     int                 NULL
-- 	, cextempresa   varchar(40)         NULL
-- 	, cextcargo     varchar(40)         NULL
-- 	, cextrelacion  varchar(40)         NULL
-- 	, cemail        varchar(40)         NULL
-- 	, cUsuarioAYRE  varchar(9)          NULL
-- 	)

-- CREATE  nonclustered INDEX _dta_index_TPersonas_17_1154103152__K17_K1_K19 on dbo.TPersonas(nemppuesto, cDNI, nempnivel)

-- CREATE  nonclustered INDEX Ind_numper on dbo.TPersonas(nempnumper)

-- CREATE  nonclustered INDEX IX_EmpNumPuesto on dbo.TPersonas(nemppuesto)

-- ALTER TABLE dbo.TPersonas ADD CONSTRAINT PK_TPersonas PRIMARY KEY clustered (cDNI)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TPersonasHistorico' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TPersonasHistorico'. */

-- CREATE TABLE dbo.TPersonasHistorico
-- 	( cDNI       varchar(9)      NOT NULL
-- 	, cLetraDNI  varchar(1)          NULL
-- 	, cApe1      varchar(40)     NOT NULL
-- 	, cApe2      varchar(40)     NOT NULL
-- 	, cNombre    varchar(40)     NOT NULL
-- 	, nEmpNumPer int             NOT NULL
-- 	, cCorreoE   varchar(100)        NULL
-- 	, dFchAlta   datetime        NOT NULL
-- 	)

-- CREATE  nonclustered INDEX IX_TPersonasHistorico_cDNI on dbo.TPersonasHistorico(cDNI)

-- ALTER TABLE dbo.TPersonasHistorico ADD CONSTRAINT PK_TPersonasHistorico PRIMARY KEY clustered (nEmpNumPer)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TPersonasPuestosHistorico' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TPersonasPuestosHistorico'. */

-- CREATE TABLE dbo.TPersonasPuestosHistorico
-- 	( cDNI        varchar(9)      NOT NULL
-- 	, cLetraDNI   varchar(1)          NULL
-- 	, nEmpNumper  int             NOT NULL
-- 	, nEmpPuesto  int             NOT NULL
-- 	, dFchInicio  datetime        NOT NULL
-- 	, dFchFin     datetime            NULL
-- 	, dFchControl datetime        NOT NULL
-- 	)

-- CREATE  nonclustered INDEX IX_TPersonasPuestosHistorico_DNI on dbo.TPersonasPuestosHistorico(cDNI)

-- ALTER TABLE dbo.TPersonasPuestosHistorico ADD CONSTRAINT PK_TPersonasPuestosHistorico PRIMARY KEY clustered (nEmpNumper, nEmpPuesto, dFchInicio)

-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TPlanIMEI'. */

-- CREATE TABLE dbo.TPlanIMEI
-- 	( cTypeAllocationCode      varchar(8)      NOT NULL
-- 	, cMobilePhoneManufacturer varchar(100)    NOT NULL
-- 	)

-- ALTER TABLE dbo.TPlanIMEI ADD CONSTRAINT PK_TPlanIMEI PRIMARY KEY clustered (cTypeAllocationCode)

	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TProgramas'. */

CREATE TABLE dbo.TProgramas
	( nCodPrograma int             NOT NULL
	, sPrograma    varchar(20)     NOT NULL
	, sDescripcion varchar(-1)         NULL
	, sModelos     varchar(200)        NULL
	)

ALTER TABLE dbo.TProgramas ADD CONSTRAINT PK_TProgramas PRIMARY KEY clustered (nCodPrograma)

-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TProyectosTerminales'. */

-- CREATE TABLE dbo.TProyectosTerminales
-- 	( nId          int             NOT NULL
-- 	, cProyecto    varchar(30)     NOT NULL
-- 	, cDescripcion varchar(250)    NOT NULL
-- 	, dFchAlta     datetime        NOT NULL
-- 	, cUsuarioAlta varchar(20)     NOT NULL
-- 	)

-- ALTER TABLE dbo.TProyectosTerminales ADD CONSTRAINT PK_TProyectosTerminales PRIMARY KEY clustered (nId)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TPuertos' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TPuertos'. */

-- CREATE TABLE dbo.TPuertos
-- 	( nCodElectronicaRed int             NOT NULL
-- 	, cPuerto            varchar(20)     NOT NULL
-- 	, nCodVLan           int                 NULL
-- 	, nCodVVLan          int                 NULL
-- 	, cName              varchar(130)        NULL
-- 	, cStatus            varchar(50)         NULL
-- 	, cOtros             varchar(50)         NULL
-- 	, cAdminStatus       varchar(20)         NULL
-- 	, cOperStatus        varchar(20)         NULL
-- 	, bLinkPort          bit                 NULL
-- 	, bAccessPort        bit                 NULL
-- 	, bTrunkPort         bit                 NULL
-- 	, dFchDescarga       datetime        NOT NULL
-- 	)

-- ALTER TABLE dbo.TPuertos ADD CONSTRAINT PK_TPuertos PRIMARY KEY clustered (nCodElectronicaRed, cPuerto)

-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TPuestos'. */

-- CREATE TABLE dbo.TPuestos
-- 	( nEmpPuesto    int             NOT NULL
-- 	, cDenominacion varchar(40)         NULL
-- 	, CoTipoPto     varchar(1)          NULL
-- 	, nCodUni       int                 NULL
-- 	, cCodAdc       varchar(12)         NULL
-- 	, cGrupoTpo     varchar(12)         NULL
-- 	, nNivelPto     varchar(2)          NULL
-- 	, nCodUniFunc   int                 NULL
-- 	)

-- CREATE  nonclustered INDEX _dta_index_TPuestos_17_1821249543__K1_K3 on dbo.TPuestos(nEmpPuesto, CoTipoPto)

-- CREATE  nonclustered INDEX Ind_codadc on dbo.TPuestos(cCodAdc)

-- ALTER TABLE dbo.TPuestos ADD CONSTRAINT PK_TPuestos PRIMARY KEY clustered (nEmpPuesto)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TPuestosHistorico' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TPuestosHistorico'. */

-- CREATE TABLE dbo.TPuestosHistorico
-- 	( nEmpPuesto    int             NOT NULL
-- 	, cDenominacion varchar(40)     NOT NULL
-- 	, CoTipoPto     varchar(1)          NULL
-- 	, nCodUni       int                 NULL
-- 	, cCodAdc       varchar(12)         NULL
-- 	, cGrupoTpo     varchar(12)         NULL
-- 	, nNivelPto     varchar(2)          NULL
-- 	, nCodUniFunc   int                 NULL
-- 	, dFchInicio    datetime        NOT NULL
-- 	, dFchFin       datetime            NULL
-- 	)

-- ALTER TABLE dbo.TPuestosHistorico ADD CONSTRAINT PK_TPuestosHistorico PRIMARY KEY clustered (nEmpPuesto, dFchInicio)

-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TRack'. */

-- CREATE TABLE dbo.TRack
-- 	( nCodRack             int             NOT NULL
-- 	, nCodSede             int             NOT NULL
-- 	, cNombre              varchar(50)     NOT NULL
-- 	, cUbicacion           varchar(-1)         NULL
-- 	, cObservaciones       varchar(-1)         NULL
-- 	, bPlanoUbicacion      bit             NOT NULL
-- 	, nPlanta              real                NULL
-- 	, nCuadroElectrico     int                 NULL
-- 	, nWCuadro             int                 NULL
-- 	, bLimpia              bit                 NULL
-- 	, nWMedida             int                 NULL
-- 	, cUsuarioAlta         varchar(10)         NULL
-- 	, dFchAlta             smalldatetime       NULL
-- 	, cUsuarioModificacion varchar(10)         NULL
-- 	, dFchModificacion     smalldatetime       NULL
-- 	)

-- CREATE  nonclustered INDEX IX_nCodSede on dbo.TRack(nCodSede)

-- ALTER TABLE dbo.TRack ADD CONSTRAINT PK_TRack PRIMARY KEY clustered (nCodRack)

-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TRais'. */

-- CREATE TABLE dbo.TRais
-- 	( nRAI         int             NOT NULL
-- 	, cDescripcion varchar(50)     NOT NULL
-- 	, cIP          varchar(15)         NULL
-- 	, nNumCabecera int                 NULL
-- 	)

-- ALTER TABLE dbo.TRais ADD CONSTRAINT PK_TRais PRIMARY KEY clustered (nRAI)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TRangoIPdisp' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TRangoIPdisp'. */

-- CREATE TABLE dbo.TRangoIPdisp
-- 	( ID                  int             NOT NULL
-- 	, RED                 nvarchar(100)       NULL
-- 	, RED_ANUNCIADA       nvarchar(100)   NOT NULL
-- 	, GATEWAY             varchar(50)         NULL
-- 	, NOMBRE_RANGO        varchar(100)        NULL
-- 	, INTERFAZ            nvarchar(100)       NULL
-- 	, TIPO                int             NOT NULL
-- 	, GRUPO               nvarchar(100)       NULL
-- 	, NOMBRE_GATEWAY      nvarchar(100)       NULL
-- 	, SEDE                int                 NULL
-- 	, SEDE_DIRECCION      nvarchar(510)       NULL
-- 	, FUNCION_RED         nvarchar(max)        NULL
-- 	, SEDE_ALTERNATIVA    int                 NULL
-- 	, USUARIOALTA         varchar(10)         NULL
-- 	, FCHALTA             smalldatetime       NULL
-- 	, USUARIOMODIFICACION varchar(10)         NULL
-- 	, FCHMODIFICACION     smalldatetime       NULL
-- 	)

-- CREATE unique nonclustered INDEX IX_RedAnunciada on dbo.TRangoIPdisp(RED_ANUNCIADA)

-- ALTER TABLE dbo.TRangoIPdisp ADD CONSTRAINT PK_TRangoIPdisp PRIMARY KEY clustered (ID)

-- 	/* El objeto 'dbo.TRisport' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TRisport' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TRisport'. */

-- CREATE TABLE dbo.TRisport
-- 	( cMAC         varchar(15)     NOT NULL
-- 	, dFchConsulta datetime        NOT NULL
-- 	)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TRutasAdjuntos' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TRutasAdjuntos'. */

-- CREATE TABLE dbo.TRutasAdjuntos
-- 	( nId          int             NOT NULL
-- 	, cRaiz        varchar(255)    NOT NULL
-- 	, cRuta        varchar(255)    NOT NULL
-- 	, cDescripcion varchar(255)    NOT NULL
-- 	)

-- CREATE unique nonclustered INDEX IX_TRutasAdjuntos on dbo.TRutasAdjuntos(cRaiz, cRuta)

-- ALTER TABLE dbo.TRutasAdjuntos ADD CONSTRAINT PK_TRutasAdjuntos PRIMARY KEY clustered (nId)

	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TSedes'. */

CREATE TABLE dbo.TSedes
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

CREATE  nonclustered INDEX IX_CodigoPostal on dbo.TSedes(cCodPostal)

ALTER TABLE dbo.TSedes ADD CONSTRAINT PK_TSedes PRIMARY KEY clustered (nCodSede)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TSedesAdjuntos' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TSedesAdjuntos'. */

-- CREATE TABLE dbo.TSedesAdjuntos
-- 	( nIdRuta         int             NOT NULL
-- 	, nCodSede        int             NOT NULL
-- 	, bEstado         bit                 NULL
-- 	, nFicheros       int                 NULL
-- 	, cNombresFichero varchar(-1)         NULL
-- 	, dFchControl     datetime            NULL
-- 	)

-- ALTER TABLE dbo.TSedesAdjuntos ADD CONSTRAINT PK_TSedesAdjuntos PRIMARY KEY clustered (nIdRuta, nCodSede)

-- 	/* El objeto 'dbo.TSedesGeolocalizacion' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TSedesGeolocalizacion' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TSedesGeolocalizacion'. */

-- CREATE TABLE dbo.TSedesGeolocalizacion
-- 	( name        varchar(250)        NULL
-- 	, descripcion varchar(250)        NULL
-- 	, lat         varchar(50)         NULL
-- 	, lon         varchar(50)         NULL
-- 	, dFchControl datetime            NULL
-- 	)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TSedesUGD' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TSedesUGD'. */

-- CREATE TABLE dbo.TSedesUGD
-- 	( nCodUni  int             NOT NULL
-- 	, nCodSede int             NOT NULL
-- 	)

-- CREATE  nonclustered INDEX IX_TSedesUGD on dbo.TSedesUGD(nCodSede)

-- ALTER TABLE dbo.TSedesUGD ADD CONSTRAINT PK_TSedesUGD PRIMARY KEY clustered (nCodUni)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TServiciosMoviles' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TServiciosMoviles'. */

-- CREATE TABLE dbo.TServiciosMoviles
-- 	( nCodServicio int             NOT NULL
-- 	, cServicio    varchar(70)     NOT NULL
-- 	, nCodTipo     int             NOT NULL
-- 	)

-- ALTER TABLE dbo.TServiciosMoviles ADD CONSTRAINT PK_TServiciosMoviles PRIMARY KEY clustered (nCodServicio)

-- 	/* El objeto 'dbo.Tsgtidarea' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.Tsgtidarea' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.Tsgtidarea' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.Tsgtidarea'. */

-- CREATE TABLE dbo.Tsgtidarea
-- 	( nidarea  nvarchar(30)    NOT NULL
-- 	, nombre   nvarchar(510)       NULL
-- 	, ncodsede nvarchar(20)        NULL
-- 	)

-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TSiteCanales'. */

-- CREATE TABLE dbo.TSiteCanales
-- 	( nCodCanal int             NOT NULL
-- 	, nTx       decimal(10,4)   NOT NULL
-- 	, nRx       decimal(10,4)   NOT NULL
-- 	, nCanalMOT int             NOT NULL
-- 	)

-- CREATE unique nonclustered INDEX IX_TSiteCanales on dbo.TSiteCanales(nRx, nTx)

-- ALTER TABLE dbo.TSiteCanales ADD CONSTRAINT PK_TSiteCanales PRIMARY KEY clustered (nCodCanal)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TSiteEstacionesBase' o el usuario no tiene permisos para hacer referencia a tablas. */

-- CREATE TABLE dbo.TSiteEstacionesBase
-- 	( nCodSite           int             NOT NULL
-- 	, nBR                int             NOT NULL
-- 	, nCodCanal          int             NOT NULL
-- 	, nPotenciaBR        decimal(10,2)       NULL
-- 	, nPotenciaAntena    decimal(10,2)       NULL
-- 	, nDesensibilizacion decimal(10,2)       NULL
-- 	)

-- ALTER TABLE dbo.TSiteEstacionesBase ADD CONSTRAINT PK_TSiteEstacionesBase PRIMARY KEY clustered (nCodSite, nBR)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TSitePropietarios' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TSitePropietarios'. */

-- CREATE TABLE dbo.TSitePropietarios
-- 	( nCodPropietario      int             NOT NULL
-- 	, bMunicipal           bit             NOT NULL
-- 	, cPropietario         varchar(50)     NOT NULL
-- 	, cTramiteAcreditacion varchar(150)    NOT NULL
-- 	, cContacto            varchar(50)     NOT NULL
-- 	, cTelefono1           varchar(15)     NOT NULL
-- 	, cTelefono2           varchar(15)         NULL
-- 	, cUsuarioAlta         varchar(25)     NOT NULL
-- 	, dFchAlta             datetime        NOT NULL
-- 	, cUsuarioModificacion varchar(25)         NULL
-- 	, dFchModifciacion     datetime            NULL
-- 	)

-- ALTER TABLE dbo.TSitePropietarios ADD CONSTRAINT PK_TSitePropietarios PRIMARY KEY clustered (nCodPropietario)

-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TSiteRadio'. */

-- CREATE TABLE dbo.TSiteRadio
-- 	( nCodSite             int             NOT NULL
-- 	, nCodSede             int             NOT NULL
-- 	, nCodTipo             int             NOT NULL
-- 	, cNombreSite          varchar(100)    NOT NULL
-- 	, cDirSite             varchar(100)        NULL
-- 	, nCodEstado           int             NOT NULL
-- 	, cPropietarioSite     varchar(150)        NULL
-- 	, cTramiacreditaSite   varchar(150)        NULL
-- 	, bAcreditacionSite    bit                 NULL
-- 	, cContactoSite        varchar(50)         NULL
-- 	, nLineaTfno           varchar(50)         NULL
-- 	, cTfnoconSite         varchar(50)         NULL
-- 	, cHorarioSite         varchar(50)         NULL
-- 	, bLlavesSite          bit                 NULL
-- 	, cUbiLlavesSite       varchar(100)        NULL
-- 	, cInstrucAccesoSite   varchar(-1)         NULL
-- 	, cCoordenadaSiteO     varchar(50)         NULL
-- 	, cCoordenadaSiteN     varchar(50)         NULL
-- 	, cCotaTerreno         int                 NULL
-- 	, cAlturaTorre         int                 NULL
-- 	, cAlturaEdif          int                 NULL
-- 	, cUbicaTorre          varchar(250)        NULL
-- 	, cUbicaSite           varchar(250)        NULL
-- 	, nExtinSite           int                 NULL
-- 	, bClimatizaSite       bit                 NULL
-- 	, bContBaliza          bit                 NULL
-- 	, bTorreLinvida        bit                 NULL
-- 	, bParaRayos           bit                 NULL
-- 	, bTomaTierraPrayos    bit                 NULL
-- 	, bTomaTierraEq        bit                 NULL
-- 	, cDimensiones         varchar(50)         NULL
-- 	, ctipoTorre           varchar(100)        NULL
-- 	, cTipoBaliza          varchar(50)         NULL
-- 	, cCompEltrec          varchar(50)         NULL
-- 	, bMunielec            bit                 NULL
-- 	, nNuncontElec         varchar(50)         NULL
-- 	, nNumTfnoave          varchar(50)         NULL
-- 	, cCupsElec            varchar(50)         NULL
-- 	, cTipoElec            varchar(50)         NULL
-- 	, cPotenElec           varchar(50)         NULL
-- 	, cUbicaContador       varchar(100)        NULL
-- 	, cUbicaInterrup       varchar(100)        NULL
-- 	, cLlavescontador      varchar(100)        NULL
-- 	, cVcaEntrada          varchar(20)         NULL
-- 	, bReconecatoras       bit                 NULL
-- 	, cReconecatoras       varchar(50)         NULL
-- 	, bTomaGelectro        bit                 NULL
-- 	, cTomaGelectro        varchar(50)         NULL
-- 	, cNomCentralAlarm     varchar(100)        NULL
-- 	, cTipocentralAlarm    varchar(50)         NULL
-- 	, cAlimenAlarm         varchar(50)         NULL
-- 	, nLineaAsocAlarm      varchar(50)         NULL
-- 	, bBateriasAlarm       bit                 NULL
-- 	, cNomRadioM           varchar(100)        NULL
-- 	, cFabricRadioM        varchar(50)         NULL
-- 	, bDiveridadRx         bit                 NULL
-- 	, cTipoAntenRx         varchar(200)        NULL
-- 	, cTipoAntenTx         varchar(200)        NULL
-- 	, cNumEbt              varchar(50)         NULL
-- 	, cSwmi                varchar(50)         NULL
-- 	, cTipoEnlace          varchar(50)         NULL
-- 	, cTipoEquRedMovil     varchar(50)         NULL
-- 	, bExtenAsoc           bit                 NULL
-- 	, ceMailContactoSite   varchar(50)         NULL
-- 	, cUsuarioAlta         varchar(25)     NOT NULL
-- 	, dFchAlta             datetime        NOT NULL
-- 	, cUsuarioModificacion varchar(25)         NULL
-- 	, dFchModifciacion     datetime            NULL
-- 	)

-- ALTER TABLE dbo.TSiteRadio ADD CONSTRAINT PK_TSiteRadio PRIMARY KEY clustered (nCodSite)

-- 	/* El objeto 'dbo.tSiteRadio_backup11052016' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.tSiteRadio_backup11052016' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.tSiteRadio_backup11052016' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.tSiteRadio_backup11052016'. */

-- CREATE TABLE dbo.tSiteRadio_backup11052016
-- 	( nCodSite             int             NOT NULL
-- 	, nCodSede             int             NOT NULL
-- 	, nCodTipo             int             NOT NULL
-- 	, cNombreSite          varchar(100)    NOT NULL
-- 	, cDirSite             varchar(100)        NULL
-- 	, nCodEstado           int             NOT NULL
-- 	, cPropietarioSite     varchar(150)        NULL
-- 	, cTramiacreditaSite   varchar(150)        NULL
-- 	, bAcreditacionSite    bit                 NULL
-- 	, cContactoSite        varchar(50)         NULL
-- 	, nLineaTfno           varchar(50)         NULL
-- 	, cTfnoconSite         varchar(50)         NULL
-- 	, cHorarioSite         varchar(50)         NULL
-- 	, bLlavesSite          bit                 NULL
-- 	, cUbiLlavesSite       varchar(100)        NULL
-- 	, cInstrucAccesoSite   varchar(-1)         NULL
-- 	, cCoordenadaSiteO     varchar(50)         NULL
-- 	, cCoordenadaSiteN     varchar(50)         NULL
-- 	, cCotaTerreno         varchar(50)         NULL
-- 	, cAlturatorre         varchar(50)         NULL
-- 	, cAlturaEdif          varchar(50)         NULL
-- 	, cUbicaTorre          varchar(250)        NULL
-- 	, cUbicaSite           varchar(250)        NULL
-- 	, nExtinSite           int                 NULL
-- 	, bClimatizaSite       bit                 NULL
-- 	, bContBaliza          bit                 NULL
-- 	, bTorreLinvida        bit                 NULL
-- 	, bParaRayos           bit                 NULL
-- 	, bTomaTierraPrayos    bit                 NULL
-- 	, bTomaTierraEq        bit                 NULL
-- 	, cDimensiones         varchar(50)         NULL
-- 	, ctipoTorre           varchar(100)        NULL
-- 	, cTipoBaliza          varchar(50)         NULL
-- 	, cCompEltrec          varchar(50)         NULL
-- 	, bMunielec            bit                 NULL
-- 	, nNuncontElec         varchar(50)         NULL
-- 	, nNumTfnoave          varchar(50)         NULL
-- 	, cCupsElec            varchar(50)         NULL
-- 	, cTipoElec            varchar(50)         NULL
-- 	, cPotenElec           varchar(50)         NULL
-- 	, cUbicaContador       varchar(100)        NULL
-- 	, cUbicaInterrup       varchar(100)        NULL
-- 	, cLlavescontador      varchar(100)        NULL
-- 	, cVcaEntrada          varchar(20)         NULL
-- 	, bReconecatoras       bit                 NULL
-- 	, cReconecatoras       varchar(50)         NULL
-- 	, bTomaGelectro        bit                 NULL
-- 	, cTomaGelectro        varchar(50)         NULL
-- 	, cNomCentralAlarm     varchar(100)        NULL
-- 	, cTipocentralAlarm    varchar(50)         NULL
-- 	, cAlimenAlarm         varchar(50)         NULL
-- 	, nLineaAsocAlarm      varchar(50)         NULL
-- 	, bBateriasAlarm       bit                 NULL
-- 	, cNomRadioM           varchar(100)        NULL
-- 	, cFabricRadioM        varchar(50)         NULL
-- 	, bDiveridadRx         bit                 NULL
-- 	, cTipoAntenRx         varchar(200)        NULL
-- 	, cTipoAntenTx         varchar(200)        NULL
-- 	, cNumEbt              varchar(50)         NULL
-- 	, cSwmi                varchar(50)         NULL
-- 	, cTipoEquRedMovil     varchar(50)         NULL
-- 	, bExtenAsoc           bit                 NULL
-- 	, ceMailContactoSite   varchar(50)         NULL
-- 	, cUsuarioAlta         varchar(25)     NOT NULL
-- 	, dFchAlta             datetime        NOT NULL
-- 	, cUsuarioModificacion varchar(25)         NULL
-- 	, dFchModifciacion     datetime            NULL
-- 	)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TSiteRadioACC' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TSiteRadioACC'. */

-- CREATE TABLE dbo.TSiteRadioACC
-- 	( nCod               int             NOT NULL
-- 	, nCodSite           int             NOT NULL
-- 	, cMarca             varchar(50)     NOT NULL
-- 	, cModelo            varchar(50)         NULL
-- 	, nFrigoriasKw       float               NULL
-- 	, cTipo              varchar(50)         NULL
-- 	, nPotenciaUsadaVCA  float               NULL
-- 	, cControl           varchar(50)         NULL
-- 	, cFreecooling       varchar(50)         NULL
-- 	, cTipoGas           varchar(50)         NULL
-- 	, nCargaKg           float               NULL
-- 	, cPeriodoRevision   varchar(50)         NULL
-- 	, dFchUltimaRevision datetime            NULL
-- 	)

-- ALTER TABLE dbo.TSiteRadioACC ADD CONSTRAINT PK_TSiteRadioacc PRIMARY KEY clustered (nCod)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TSiteradioEntralarm' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TSiteradioEntralarm'. */

-- CREATE TABLE dbo.TSiteradioEntralarm
-- 	( ncodsite int             NOT NULL
-- 	, Nentrada nchar(20)           NULL
-- 	, csenal   nvarchar(100)       NULL
-- 	, ncod     int             NOT NULL
-- 	)

-- ALTER TABLE dbo.TSiteradioEntralarm ADD CONSTRAINT PK_TSiteradioEntralarm PRIMARY KEY clustered (ncod)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TSiteRadioextencor' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TSiteRadioextencor'. */

-- CREATE TABLE dbo.TSiteRadioextencor
-- 	( ncodsite             int             NOT NULL
-- 	, CubicaExtencor       varchar(50)         NULL
-- 	, CfabriExtencor       varchar(50)         NULL
-- 	, Ctipoextencor        varchar(50)         NULL
-- 	, Cebtextencor         varchar(50)         NULL
-- 	, Cradiacapextencor    varchar(50)         NULL
-- 	, Cradiantedonextencor varchar(50)         NULL
-- 	, Calimenextencor      varchar(50)         NULL
-- 	, ncod                 int             NOT NULL
-- 	)

-- ALTER TABLE dbo.TSiteRadioextencor ADD CONSTRAINT PK_TSiteRadioextencor PRIMARY KEY clustered (ncod)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TSiteRadioFrecs' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TSiteRadioFrecs'. */

-- CREATE TABLE dbo.TSiteRadioFrecs
-- 	( ncodsite         int                 NULL
-- 	, Bcomparfrec      bit                 NULL
-- 	, Cfrecuencia      varchar(50)         NULL
-- 	, Nbr              nchar(20)           NULL
-- 	, cFreccompartida1 varchar(50)         NULL
-- 	, Nbr1             nchar(20)           NULL
-- 	, cFreccompartida2 varchar(50)         NULL
-- 	, Nbr2             nchar(20)           NULL
-- 	, ncod             int             NOT NULL
-- 	)

-- ALTER TABLE dbo.TSiteRadioFrecs ADD CONSTRAINT PK_TSiteradiofrecs PRIMARY KEY clustered (ncod)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TSiteRadioMuliplex' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TSiteRadioMuliplex'. */

-- CREATE TABLE dbo.TSiteRadioMuliplex
-- 	( ncodsite          int             NOT NULL
-- 	, CmarcaMulti       varchar(50)         NULL
-- 	, CmodeloMulti      varchar(50)         NULL
-- 	, ChasisMulti       varchar(50)         NULL
-- 	, ContMulti         varchar(50)         NULL
-- 	, CtarjetaMulti     varchar(50)         NULL
-- 	, CalimentaMul      varchar(50)         NULL
-- 	, CtipoaliMulti     varchar(50)         NULL
-- 	, NslotMulti        nvarchar(100)       NULL
-- 	, CTipochasisaMulti varchar(50)         NULL
-- 	, Ctipochasisbmulti varchar(50)         NULL
-- 	, CptousadosMulti   varchar(50)         NULL
-- 	, CptolibresMulti   varchar(50)         NULL
-- 	, CpanconexMulti    varchar(50)         NULL
-- 	, ncod              int             NOT NULL
-- 	)

-- ALTER TABLE dbo.TSiteRadioMuliplex ADD CONSTRAINT PK_TsiteRadioMuliplex PRIMARY KEY clustered (ncod)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TSiteRadioOtroseq' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TSiteRadioOtroseq'. */

-- CREATE TABLE dbo.TSiteRadioOtroseq
-- 	( NcodSite     int             NOT NULL
-- 	, CusuarioEq   varchar(50)         NULL
-- 	, CtipoEq      varchar(50)         NULL
-- 	, CocupEq      varchar(50)         NULL
-- 	, CAntenasEq   varchar(50)         NULL
-- 	, CAlimenEq    varchar(50)         NULL
-- 	, CPersonaEq   varchar(50)         NULL
-- 	, CtfncontacEq varchar(50)         NULL
-- 	, Cemaileq     varchar(30)         NULL
-- 	, ncod         int             NOT NULL
-- 	)

-- ALTER TABLE dbo.TSiteRadioOtroseq ADD CONSTRAINT PK_TsiteRadioOtroseq PRIMARY KEY clustered (ncod)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TSiteRadiorectif' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TSiteRadiorectif'. */

-- CREATE TABLE dbo.TSiteRadiorectif
-- 	( NcodSite      int             NOT NULL
-- 	, Cmarcarect    varchar(50)         NULL
-- 	, Cmodelorect   varchar(50)         NULL
-- 	, Capacidadrect varchar(50)         NULL
-- 	, Cmodulosrec   varchar(50)         NULL
-- 	, Cmodulosahrec varchar(50)         NULL
-- 	, Controlrect   varchar(50)         NULL
-- 	, Cvcaentrec    varchar(50)         NULL
-- 	, Cvccsalrect   varchar(50)         NULL
-- 	, Cbatrect      varchar(50)         NULL
-- 	, ncod          int             NOT NULL
-- 	)

-- ALTER TABLE dbo.TSiteRadiorectif ADD CONSTRAINT PK_TSiteRadiorectif PRIMARY KEY clustered (ncod)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TSiteRadioRenalce' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TSiteRadioRenalce'. */

-- CREATE TABLE dbo.TSiteRadioRenalce
-- 	( Ncodsite         int             NOT NULL
-- 	, CnombreRadioen   varchar(50)         NULL
-- 	, CestaRadioen     varchar(50)         NULL
-- 	, CmododuRadioen   varchar(50)         NULL
-- 	, CmodiduRadioen   varchar(50)         NULL
-- 	, CapacidadRadioen varchar(50)         NULL
-- 	, CptodRadioen     varchar(50)         NULL
-- 	, CptooRadioen     varchar(50)         NULL
-- 	, ConfRadioen      varchar(50)         NULL
-- 	, CfrecRadioen     varchar(50)         NULL
-- 	, CpolRadioen      varchar(50)         NULL
-- 	, CanttRadioen     varchar(50)         NULL
-- 	, CdiaRadioen      varchar(50)         NULL
-- 	, CganaRadioen     varchar(50)         NULL
-- 	, ncod             int             NOT NULL
-- 	)

-- ALTER TABLE dbo.TSiteRadioRenalce ADD CONSTRAINT PK_TSiteRadioRenalce PRIMARY KEY clustered (ncod)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TSiteRadioSalAlarm' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TSiteRadioSalAlarm'. */

-- CREATE TABLE dbo.TSiteRadioSalAlarm
-- 	( ncodsite int             NOT NULL
-- 	, Nsalida  nchar(20)           NULL
-- 	, csenal   nvarchar(100)       NULL
-- 	, ncod     int             NOT NULL
-- 	)

-- ALTER TABLE dbo.TSiteRadioSalAlarm ADD CONSTRAINT PK_TsiteRadiosalalarm PRIMARY KEY clustered (ncod)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TSiteRadioTerceros' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TSiteRadioTerceros'. */

-- CREATE TABLE dbo.TSiteRadioTerceros
-- 	( Ncodsite             int             NOT NULL
-- 	, CompaTerceros        varchar(50)         NULL
-- 	, CtipoTerceros        varchar(50)         NULL
-- 	, CocupacionTerceros   varchar(50)         NULL
-- 	, CantenasTerceros     varchar(50)         NULL
-- 	, CAlimentaTerceros    varchar(50)         NULL
-- 	, NLineaTerceros       varchar(50)         NULL
-- 	, CdedicaTerceros      varchar(50)         NULL
-- 	, CTfnoconTerceros     nchar(60)           NULL
-- 	, Cresponsableterceros varchar(50)         NULL
-- 	, cemailterceros       varchar(30)         NULL
-- 	, ncod                 int             NOT NULL
-- 	)

-- ALTER TABLE dbo.TSiteRadioTerceros ADD CONSTRAINT PK_TSiteRadioTerceros PRIMARY KEY clustered (ncod)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TSiteRadioUps' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TSiteRadioUps'. */

-- CREATE TABLE dbo.TSiteRadioUps
-- 	( nCod          int             NOT NULL
-- 	, nCodSite      int             NOT NULL
-- 	, cMarcUPS      varchar(30)         NULL
-- 	, cModeloUPS    varchar(30)         NULL
-- 	, cCapacidadUPS varchar(10)         NULL
-- 	, cVcaEntUPS    varchar(30)         NULL
-- 	, cVcaSalUps    varchar(30)         NULL
-- 	, cBateriasUPS  varchar(20)         NULL
-- 	)

-- ALTER TABLE dbo.TSiteRadioUps ADD CONSTRAINT PK_TSiteRadioUps PRIMARY KEY clustered (nCod)

-- 	/* El objeto 'dbo.tSiteRadioUps_backup11052016' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.tSiteRadioUps_backup11052016' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.tSiteRadioUps_backup11052016' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.tSiteRadioUps_backup11052016'. */

-- CREATE TABLE dbo.tSiteRadioUps_backup11052016
-- 	( nId           int             NOT NULL
-- 	, nCodSite      int             NOT NULL
-- 	, cMarcUPS      varchar(30)         NULL
-- 	, cModeloUPS    varchar(30)         NULL
-- 	, cCapacidadUPS varchar(10)         NULL
-- 	, cVcaEntUPS    varchar(30)         NULL
-- 	, cVcaSalUps    varchar(30)         NULL
-- 	, cBateriasUPS  varchar(20)         NULL
-- 	)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TSites' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TSites'. */

-- CREATE TABLE dbo.TSites
-- 	( nCodSite             int             NOT NULL
-- 	, nCodSede             int             NOT NULL
-- 	, nCodTipo             int             NOT NULL
-- 	, cNombreSite          varchar(100)    NOT NULL
-- 	, cNumEBT              varchar(50)         NULL
-- 	, nCodEstado           int             NOT NULL
-- 	, nCodPropietario      int                 NULL
-- 	, cUbicacionLlaves     varchar(100)        NULL
-- 	, cInstruccionesAcceso varchar(-1)         NULL
-- 	, cUbicacionSite       varchar(250)        NULL
-- 	, nExtintores          int                 NULL
-- 	, cTelefono            varchar(15)         NULL
-- 	, cDimensiones         varchar(50)         NULL
-- 	, cHorario             varchar(25)         NULL
-- 	, cSwmi                varchar(50)         NULL
-- 	, cUsuarioAlta         varchar(25)     NOT NULL
-- 	, dFchAlta             datetime        NOT NULL
-- 	, cUsuarioModificacion varchar(25)         NULL
-- 	, dFchModifciacion     datetime            NULL
-- 	)

-- ALTER TABLE dbo.TSites ADD CONSTRAINT PK_TSites PRIMARY KEY clustered (nCodSite)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TSiteToSite' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TSiteToSite'. */

-- CREATE TABLE dbo.TSiteToSite
-- 	( nCodSiteA int             NOT NULL
-- 	, nCodSiteB int             NOT NULL
-- 	)

-- ALTER TABLE dbo.TSiteToSite ADD CONSTRAINT PK_TSiteToSite PRIMARY KEY clustered (nCodSiteA, nCodSiteB)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TSiteZonaEstacion' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TSiteZonaEstacion'. */

-- CREATE TABLE dbo.TSiteZonaEstacion
-- 	( nCodSite  int             NOT NULL
-- 	, nZona     int             NOT NULL
-- 	, nEstacion int             NOT NULL
-- 	)

-- CREATE unique nonclustered INDEX IX_TSiteZonaEstacion on dbo.TSiteZonaEstacion(nCodSite, nZona)

-- ALTER TABLE dbo.TSiteZonaEstacion ADD CONSTRAINT PK_TSiteZonaEstacion PRIMARY KEY clustered (nZona, nEstacion)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TSlots' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TSlots'. */

-- CREATE TABLE dbo.TSlots
-- 	( nCodCentralita       int             NOT NULL
-- 	, nNumSlot             int             NOT NULL
-- 	, nCodHardware         int                 NULL
-- 	, cUsuarioAlta         varchar(10)         NULL
-- 	, dFchAlta             smalldatetime       NULL
-- 	, cUsuarioModificacion varchar(10)         NULL
-- 	, dFchModificacion     smalldatetime       NULL
-- 	)

-- ALTER TABLE dbo.TSlots ADD CONSTRAINT PK_TSlots PRIMARY KEY clustered (nCodCentralita, nNumSlot)

-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TSubTipoLinFijos'. */

-- CREATE TABLE dbo.TSubTipoLinFijos
-- 	( nCodSubTipoFijo smallint        NOT NULL
-- 	, cDescripcion    varchar(50)     NOT NULL
-- 	, nCodTipFijo     smallint        NOT NULL
-- 	)

-- ALTER TABLE dbo.TSubTipoLinFijos ADD CONSTRAINT PK_TSubTipoLinFijos PRIMARY KEY clustered (nCodSubTipoFijo)

-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TSuperTipoComponentes'. */

-- CREATE TABLE dbo.TSuperTipoComponentes
-- 	( nCodSuperTipo smallint        NOT NULL
-- 	, cDescripcion  nvarchar(100)   NOT NULL
-- 	)

-- ALTER TABLE dbo.TSuperTipoComponentes ADD CONSTRAINT PK_TTiposComponente PRIMARY KEY clustered (nCodSuperTipo)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TSupervisiones' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TSupervisiones'. */

-- CREATE TABLE dbo.TSupervisiones
-- 	( nNumCorto int             NOT NULL
-- 	, cResumen  varchar(-1)         NULL
-- 	)

-- ALTER TABLE dbo.TSupervisiones ADD CONSTRAINT PK_TSupervisiones PRIMARY KEY clustered (nNumCorto)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TTarjetasMovil' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TTarjetasMovil'. */

-- CREATE TABLE dbo.TTarjetasMovil
-- 	( cICC                 varchar(19)     NOT NULL
-- 	, nLineaMovil          int                 NULL
-- 	, nCodTipTarj          int             NOT NULL
-- 	, dFechaEntrega        datetime        NOT NULL
-- 	, dFechaDevolu         datetime            NULL
-- 	, cObservaciones       varchar(250)        NULL
-- 	, bDuplo               bit             NOT NULL
-- 	, bMicroSIM            bit             NOT NULL
-- 	, bDual                bit             NOT NULL
-- 	, bActiva              bit             NOT NULL
-- 	, bNanoSIM             bit             NOT NULL
-- 	, cCodClase            varchar(4)      NOT NULL
-- 	, cPUK1                varchar(50)         NULL
-- 	, cUsuarioAlta         varchar(25)     NOT NULL
-- 	, dFchAlta             datetime        NOT NULL
-- 	, cUsuarioModificacion varchar(25)         NULL
-- 	, dFchModificacion     datetime            NULL
-- 	)

-- CREATE unique nonclustered INDEX Ind_Linea_ICC on dbo.TTarjetasMovil(nLineaMovil, cICC)

-- CREATE  nonclustered INDEX IX_nCodTipTarj on dbo.TTarjetasMovil(nCodTipTarj)

-- ALTER TABLE dbo.TTarjetasMovil ADD CONSTRAINT PK_TTarjetasMovil PRIMARY KEY clustered (cICC)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TTeclas' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TTeclas'. */

-- CREATE TABLE dbo.TTeclas
-- 	( nNumCorto int             NOT NULL
-- 	, cResumen  varchar(-1)         NULL
-- 	)

-- ALTER TABLE dbo.TTeclas ADD CONSTRAINT PK_TTeclas PRIMARY KEY clustered (nNumCorto)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TTerminalesEstadoAlmacen' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TTerminalesEstadoAlmacen'. */

-- CREATE TABLE dbo.TTerminalesEstadoAlmacen
-- 	( nCodEstado  int             NOT NULL
-- 	, nCodAlmacen int             NOT NULL
-- 	)

-- ALTER TABLE dbo.TTerminalesEstadoAlmacen ADD CONSTRAINT PK_TTerminalesEstadoAlmacen PRIMARY KEY clustered (nCodEstado, nCodAlmacen)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TTerminalesInventario' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TTerminalesInventario'. */

-- CREATE TABLE dbo.TTerminalesInventario
-- 	( cIMEI       varchar(15)     NOT NULL
-- 	, cCaja       varchar(15)         NULL
-- 	, dFchControl datetime        NOT NULL
-- 	)

-- ALTER TABLE dbo.TTerminalesInventario ADD CONSTRAINT PK_TTerminalesInventario PRIMARY KEY clustered (cIMEI)

-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TTerminalesMovil'. */

-- CREATE TABLE dbo.TTerminalesMovil
-- 	( nId                     int             NOT NULL
-- 	, cImei                   varchar(15)         NULL
-- 	, cSerie                  varchar(50)         NULL
-- 	, nCodModelo              int             NOT NULL
-- 	, cContrato               varchar(50)         NULL
-- 	, cIdAfaria               varchar(20)         NULL
-- 	, nIdGrupo                int                 NULL
-- 	, dFchBloqueo             datetime            NULL
-- 	, nCodEstado              int             NOT NULL
-- 	, nCodAlmacen             int             NOT NULL
-- 	, nLinea                  int                 NULL
-- 	, nLinea2                 int                 NULL
-- 	, cDNI                    varchar(9)          NULL
-- 	, nCodUni                 int                 NULL
-- 	, cObservaciones          varchar(-1)         NULL
-- 	, dFchUltimaPreasignacion datetime            NULL
-- 	, dFchUltimaAsignacion    datetime            NULL
-- 	, dFchBoxes               datetime            NULL
-- 	, dFchPendiente           datetime            NULL
-- 	, dFchPerdido             datetime            NULL
-- 	, bSAT                    bit                 NULL
-- 	, nIdPedido               int                 NULL
-- 	, nIdProyecto             int                 NULL
-- 	, cAlbaranOperador        varchar(20)         NULL
-- 	, cPedidoOperador         varchar(20)         NULL
-- 	, cUsuarioAlta            varchar(25)     NOT NULL
-- 	, dFchAlta                datetime        NOT NULL
-- 	, cUsuarioModificacion    varchar(25)         NULL
-- 	, dFchModificacion        datetime            NULL
-- 	)

-- CREATE  nonclustered INDEX IX_TTerminalesMovil_IMEI_Unique on dbo.TTerminalesMovil(cImei)

-- CREATE  nonclustered INDEX IX_TTerminalesMovil_nLinea on dbo.TTerminalesMovil(nLinea)

-- CREATE  nonclustered INDEX IX_TTerminalesMovil_nLinea2 on dbo.TTerminalesMovil(nLinea2)

-- ALTER TABLE dbo.TTerminalesMovil ADD CONSTRAINT PK_TTerminalesMovil_new PRIMARY KEY clustered (nId)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TTerminalesOS' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TTerminalesOS'. */

-- CREATE TABLE dbo.TTerminalesOS
-- 	( nId        int             NOT NULL
-- 	, cOS        varchar(10)     NOT NULL
-- 	, cVersionOS varchar(10)     NOT NULL
-- 	, dFchOS     datetime        NOT NULL
-- 	)

-- ALTER TABLE dbo.TTerminalesOS ADD CONSTRAINT PK_TTerminalesSW PRIMARY KEY clustered (nId, cOS, cVersionOS)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TTerminalMovilLinea' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TTerminalMovilLinea'. */

-- CREATE TABLE dbo.TTerminalMovilLinea
-- 	( nIdTerminal          int             NOT NULL
-- 	, nLinea               int             NOT NULL
-- 	, dFchEntrega          datetime        NOT NULL
-- 	, dFchDevolucion       datetime            NULL
-- 	, cObservaciones       varchar(-1)         NULL
-- 	, cUsuarioAlta         varchar(20)         NULL
-- 	, dFchAlta             datetime            NULL
-- 	, cUsuarioModificacion varchar(20)         NULL
-- 	, dFchModificacion     datetime            NULL
-- 	)

-- ALTER TABLE dbo.TTerminalMovilLinea ADD CONSTRAINT PK_TTerminalMovilLinea PRIMARY KEY clustered (nIdTerminal, nLinea, dFchEntrega)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TTerminalPlanIMEI' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TTerminalPlanIMEI'. */

-- CREATE TABLE dbo.TTerminalPlanIMEI
-- 	( nCodModelo          int             NOT NULL
-- 	, cTypeAllocationCode varchar(8)      NOT NULL
-- 	)

-- ALTER TABLE dbo.TTerminalPlanIMEI ADD CONSTRAINT PK_TTerminalPlanIMEI PRIMARY KEY clustered (nCodModelo, cTypeAllocationCode)

-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TTipoLinDatos'. */

-- CREATE TABLE dbo.TTipoLinDatos
-- 	( nCodTipDatos  smallint        NOT NULL
-- 	, cDescTipDatos varchar(50)     NOT NULL
-- 	, nGrupo        int                 NULL
-- 	, cDescGrupo    varchar(50)         NULL
-- 	)

-- ALTER TABLE dbo.TTipoLinDatos ADD CONSTRAINT PK_TTipoLinDatos PRIMARY KEY clustered (nCodTipDatos)

-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TTipoLinFijos'. */

-- CREATE TABLE dbo.TTipoLinFijos
-- 	( nCodTipFijo  smallint        NOT NULL
-- 	, cDescTipFijo varchar(50)     NOT NULL
-- 	)

-- ALTER TABLE dbo.TTipoLinFijos ADD CONSTRAINT PK_TTipoLinFijos_nueva PRIMARY KEY clustered (nCodTipFijo)

-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TTipoLinMoviles'. */

-- CREATE TABLE dbo.TTipoLinMoviles
-- 	( nCodTipMovil   int             NOT NULL
-- 	, cDescTipoMovil varchar(50)     NOT NULL
-- 	)

-- ALTER TABLE dbo.TTipoLinMoviles ADD CONSTRAINT PK_TTipoLinMoviles PRIMARY KEY clustered (nCodTipMovil)

-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TTiposCentralita'. */

-- CREATE TABLE dbo.TTiposCentralita
-- 	( nCodTipoCentralita int             NOT NULL
-- 	, cDescripcionTipo   varchar(25)     NOT NULL
-- 	)

-- ALTER TABLE dbo.TTiposCentralita ADD CONSTRAINT PK_TTiposCentralita PRIMARY KEY clustered (nCodTipoCentralita)

-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TTiposCobertura'. */

-- CREATE TABLE dbo.TTiposCobertura
-- 	( nCodCobertura           smallint        NOT NULL
-- 	, cDenominacion           varchar(40)     NOT NULL
-- 	, cDescripcion            varchar(70)         NULL
-- 	, mCosteMax               money               NULL
-- 	, nCodTipoCentralita      int                 NULL
-- 	, nCodCoberturaAutorizada int                 NULL
-- 	)

-- ALTER TABLE dbo.TTiposCobertura ADD CONSTRAINT PK_TTiposCobertura_nueva PRIMARY KEY clustered (nCodCobertura)

-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TTiposDocumento'. */

-- CREATE TABLE dbo.TTiposDocumento
-- 	( cCodTipoDoc  varchar(1)      NOT NULL
-- 	, cDescTipoDoc varchar(40)     NOT NULL
-- 	)

-- ALTER TABLE dbo.TTiposDocumento ADD CONSTRAINT PK_TTiposDocumento PRIMARY KEY clustered (cCodTipoDoc)

-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TTiposEdR'. */

-- CREATE TABLE dbo.TTiposEdR
-- 	( nCodTipoEdR  smallint        NOT NULL
-- 	, cDescripcion nvarchar(100)   NOT NULL
-- 	)

-- ALTER TABLE dbo.TTiposEdR ADD CONSTRAINT PK_TTipoEdR PRIMARY KEY clustered (nCodTipoEdR)

-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TTiposLinea'. */

-- CREATE TABLE dbo.TTiposLinea
-- 	( cCodTipLinea  varchar(1)      NOT NULL
-- 	, cDescTipLinea varchar(50)     NOT NULL
-- 	)

-- ALTER TABLE dbo.TTiposLinea ADD CONSTRAINT PK_TTiposLinea PRIMARY KEY clustered (cCodTipLinea)

-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TTiposPersonas'. */

-- CREATE TABLE dbo.TTiposPersonas
-- 	( nCodTipoPer  int             NOT NULL
-- 	, cDescTipoPer varchar(50)     NOT NULL
-- 	)

-- ALTER TABLE dbo.TTiposPersonas ADD CONSTRAINT PK_TTiposPersonas PRIMARY KEY clustered (nCodTipoPer)

-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TTiposPuestos'. */

-- CREATE TABLE dbo.TTiposPuestos
-- 	( cCodTipoPto  varchar(1)      NOT NULL
-- 	, cDescripcion varchar(50)     NOT NULL
-- 	, cDescBreve   varchar(50)         NULL
-- 	)

-- ALTER TABLE dbo.TTiposPuestos ADD CONSTRAINT PK_TTiposPuestos PRIMARY KEY clustered (cCodTipoPto)

-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TTiposRed'. */

-- CREATE TABLE dbo.TTiposRed
-- 	( nCodTipo     int             NOT NULL
-- 	, cNombre      varchar(20)     NOT NULL
-- 	, cDescripcion varchar(50)         NULL
-- 	)

-- ALTER TABLE dbo.TTiposRed ADD CONSTRAINT PK_TTiposRed PRIMARY KEY clustered (nCodTipo)

-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TTiposSites'. */

-- CREATE TABLE dbo.TTiposSites
-- 	( nCodTipo     int             NOT NULL
-- 	, cDescripcion varchar(20)     NOT NULL
-- 	)

-- ALTER TABLE dbo.TTiposSites ADD CONSTRAINT PK_TTiposSites PRIMARY KEY clustered (nCodTipo)

-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TTiposTarjetas'. */

-- CREATE TABLE dbo.TTiposTarjetas
-- 	( nCodTipTarj  int             NOT NULL
-- 	, cDescTipTarj varchar(50)     NOT NULL
-- 	)

-- ALTER TABLE dbo.TTiposTarjetas ADD CONSTRAINT PK_TTiposTarjetas PRIMARY KEY clustered (nCodTipTarj)

-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TTiposTerminales'. */

-- CREATE TABLE dbo.TTiposTerminales
-- 	( nCodTipTerm  int             NOT NULL
-- 	, cDescTipTerm varchar(50)     NOT NULL
-- 	)

-- ALTER TABLE dbo.TTiposTerminales ADD CONSTRAINT PK_TTiposTerminales PRIMARY KEY clustered (nCodTipTerm)

-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TTiposUnidad'. */

-- CREATE TABLE dbo.TTiposUnidad
-- 	( cTipounidad  nvarchar(100)   NOT NULL
-- 	, cdescripcion varchar(50)         NULL
-- 	)

-- ALTER TABLE dbo.TTiposUnidad ADD CONSTRAINT PK_TTiposUnidad PRIMARY KEY clustered (cTipounidad)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TTracksMK775' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TTracksMK775'. */

-- CREATE TABLE dbo.TTracksMK775
-- 	( nLinea int             NOT NULL
-- 	, cURL   varchar(200)    NOT NULL
-- 	)

-- ALTER TABLE dbo.TTracksMK775 ADD CONSTRAINT PK_TTracksMK775 PRIMARY KEY clustered (nLinea)

-- 	/* El objeto 'dbo.TTracksMK775Data' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TTracksMK775Data' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TTracksMK775Data'. */

-- CREATE TABLE dbo.TTracksMK775Data
-- 	( nLinea      varchar(20)         NULL
-- 	, cIP         varchar(200)        NULL
-- 	, cIMEI       varchar(20)         NULL
-- 	, cICC        varchar(20)         NULL
-- 	, cPar1       varchar(50)         NULL
-- 	, cPar2       varchar(50)         NULL
-- 	, cPar3       varchar(50)         NULL
-- 	, cPar4       varchar(50)         NULL
-- 	, cPar5       varchar(50)         NULL
-- 	, cPar6       varchar(50)         NULL
-- 	, cPar7       varchar(50)         NULL
-- 	, cPar8       varchar(50)         NULL
-- 	, cPar9       varchar(50)         NULL
-- 	, cPar10      varchar(50)         NULL
-- 	, cPar11      varchar(50)         NULL
-- 	, cPar12      varchar(50)         NULL
-- 	, cPar13      varchar(50)         NULL
-- 	, cPar14      varchar(50)         NULL
-- 	, cPar15      varchar(50)         NULL
-- 	, cPar16      varchar(50)         NULL
-- 	, cPar17      varchar(50)         NULL
-- 	, cPar18      varchar(50)         NULL
-- 	, cPar19      varchar(50)         NULL
-- 	, cPar20      varchar(50)         NULL
-- 	, cPar21      varchar(50)         NULL
-- 	, cPar22      varchar(50)         NULL
-- 	, cPar23      varchar(50)         NULL
-- 	, cPar24      varchar(50)         NULL
-- 	, cPar25      varchar(50)         NULL
-- 	, cPar26      varchar(50)         NULL
-- 	, cPar27      varchar(50)         NULL
-- 	, cPar28      varchar(50)         NULL
-- 	, cPar29      varchar(50)         NULL
-- 	, cPar30      varchar(50)         NULL
-- 	, cPar31      varchar(50)         NULL
-- 	, cPar32      varchar(50)         NULL
-- 	, cPar33      varchar(50)         NULL
-- 	, cPar34      varchar(50)         NULL
-- 	, cPar35      varchar(50)         NULL
-- 	, cPar36      varchar(50)         NULL
-- 	, cPar37      varchar(50)         NULL
-- 	, cPar38      varchar(50)         NULL
-- 	, cPar39      varchar(50)         NULL
-- 	, cPar40      varchar(50)         NULL
-- 	, cPar41      varchar(50)         NULL
-- 	, cPar42      varchar(50)         NULL
-- 	, cPar43      varchar(50)         NULL
-- 	, cPar44      varchar(50)         NULL
-- 	, cPar45      varchar(50)         NULL
-- 	, cPar46      varchar(50)         NULL
-- 	, cPar47      varchar(50)         NULL
-- 	, cPar48      varchar(50)         NULL
-- 	, cPar49      varchar(50)         NULL
-- 	, cPar50      varchar(50)         NULL
-- 	, cPar51      varchar(50)         NULL
-- 	, cPar52      varchar(50)         NULL
-- 	, cPar53      varchar(50)         NULL
-- 	, cPar54      varchar(50)         NULL
-- 	, cPar55      varchar(50)         NULL
-- 	, cPar56      varchar(50)         NULL
-- 	, cPar57      varchar(50)         NULL
-- 	, cPar58      varchar(50)         NULL
-- 	, cPar59      varchar(50)         NULL
-- 	, cPar60      varchar(50)         NULL
-- 	, cPar61      varchar(50)         NULL
-- 	, cPar62      varchar(50)         NULL
-- 	, cPar63      varchar(50)         NULL
-- 	, cPar64      varchar(50)         NULL
-- 	, cPar65      varchar(50)         NULL
-- 	, cPar66      varchar(50)         NULL
-- 	, cPar67      varchar(50)         NULL
-- 	, cPar68      varchar(50)         NULL
-- 	, cPar69      varchar(50)         NULL
-- 	, cPar70      varchar(50)         NULL
-- 	, cPar71      varchar(50)         NULL
-- 	, cPar72      varchar(50)         NULL
-- 	, cPar73      varchar(50)         NULL
-- 	, cPar74      varchar(50)         NULL
-- 	, cPar75      varchar(50)         NULL
-- 	, cPar76      varchar(50)         NULL
-- 	, cPar77      varchar(50)         NULL
-- 	, cPar78      varchar(50)         NULL
-- 	, cPar79      varchar(50)         NULL
-- 	, cPar80      varchar(50)         NULL
-- 	, cPar81      varchar(50)         NULL
-- 	, cPar82      varchar(50)         NULL
-- 	, cPar83      varchar(50)         NULL
-- 	, cPar84      varchar(50)         NULL
-- 	, cPar85      varchar(50)         NULL
-- 	, cPar86      varchar(50)         NULL
-- 	, cPar87      varchar(50)         NULL
-- 	, cPar88      varchar(50)         NULL
-- 	, cPar89      varchar(50)         NULL
-- 	, cPar90      varchar(50)         NULL
-- 	, cPar91      varchar(50)         NULL
-- 	, cPar92      varchar(50)         NULL
-- 	, cPar93      varchar(50)         NULL
-- 	, cPar94      varchar(50)         NULL
-- 	, cPar95      varchar(50)         NULL
-- 	, cPar96      varchar(50)         NULL
-- 	, cPar97      varchar(50)         NULL
-- 	, cPar98      varchar(50)         NULL
-- 	, cPar99      varchar(50)         NULL
-- 	, cPar100     varchar(50)         NULL
-- 	, dFchControl datetime            NULL
-- 	)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TTraficoODS' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TTraficoODS'. */

-- CREATE TABLE dbo.TTraficoODS
-- 	( cNombreFichero nvarchar(100)   NOT NULL
-- 	, nFechaHora     float           NOT NULL
-- 	, cTipo          nvarchar(100)   NOT NULL
-- 	, cDescripcion   nvarchar(100)   NOT NULL
-- 	, cLinea         nvarchar(100)   NOT NULL
-- 	, cDestino       nvarchar(100)   NOT NULL
-- 	, cFechaHora     nvarchar(100)   NOT NULL
-- 	, nDuracion      bigint          NOT NULL
-- 	, nPrecio        float           NOT NULL
-- 	, cCodigo        nvarchar(100)       NULL
-- 	, cLote          nvarchar(100)   NOT NULL
-- 	, dFchControl    datetime        NOT NULL
-- 	)

-- CREATE  nonclustered INDEX IX_TTraficoODS_cCodigo on dbo.TTraficoODS(cCodigo)

-- CREATE  nonclustered INDEX IX_TTraficoODS_cFechaHora on dbo.TTraficoODS(cFechaHora)

-- CREATE  nonclustered INDEX IX_TTraficoODS_cLinea on dbo.TTraficoODS(cLinea)

-- CREATE  nonclustered INDEX IX_TTraficoODS_NombreFichero on dbo.TTraficoODS(cNombreFichero)

-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TTTiposUbicacion'. */

-- CREATE TABLE dbo.TTTiposUbicacion
-- 	( id           int             NOT NULL
-- 	, cDescripcion varchar(50)     NOT NULL
-- 	, cTipo        varchar(5)          NULL
-- 	)

-- ALTER TABLE dbo.TTTiposUbicacion ADD CONSTRAINT PK_TTtiposubicacion PRIMARY KEY clustered (id)

	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TUnidades'. */

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

-- 	/* El objeto 'dbo.TUnidades_Organizativas' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.TUnidades_Organizativas' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TUnidades_Organizativas' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TUnidades_Organizativas'. */

-- CREATE TABLE dbo.TUnidades_Organizativas
-- 	( nCodUni        int             NOT NULL
-- 	, nCodUniPadre   int                 NULL
-- 	, cDescBreve     varchar(12)         NULL
-- 	, cDenominacion  varchar(40)         NULL
-- 	, cDescAdicional varchar(80)         NULL
-- 	, nProfundidad   smallint            NULL
-- 	, cPrioridad     varchar(2)          NULL
-- 	, cCodTipUni     varchar(2)          NULL
-- 	, cCodSubTpUni   varchar(1)          NULL
-- 	, cCodCentro     varchar(16)         NULL
-- 	, cCodClasFunc   varchar(10)         NULL
-- 	, cDir           varchar(120)        NULL
-- 	, cMunicipio     varchar(20)         NULL
-- 	, cCodPostal     varchar(10)         NULL
-- 	, nNodeOrder     int                 NULL
-- 	)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TUnidadesHijos' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TUnidadesHijos'. */

-- CREATE TABLE dbo.TUnidadesHijos
-- 	( nCodUni     int             NOT NULL
-- 	, cUniHijos   varchar(-1)         NULL
-- 	, dFchControl datetime        NOT NULL
-- 	)

-- ALTER TABLE dbo.TUnidadesHijos ADD CONSTRAINT PK_TUnidadesHijos PRIMARY KEY clustered (nCodUni)

-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TUsos'. */

-- CREATE TABLE dbo.TUsos
-- 	( nCodUso      smallint        NOT NULL
-- 	, cDescripcion varchar(40)     NOT NULL
-- 	)

-- ALTER TABLE dbo.TUsos ADD CONSTRAINT PK_TUsos PRIMARY KEY clustered (nCodUso)

	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TUsuarios'. */

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

-- 	/* El objeto 'dbo.TUsuariosGeslicoUsers' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TUsuariosGeslicoUsers' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TUsuariosGeslicoUsers'. */

-- CREATE TABLE dbo.TUsuariosGeslicoUsers
-- 	( cSAMID      varchar(25)         NULL
-- 	, cNombre     varchar(50)         NULL
-- 	, cApellidos  varchar(50)         NULL
-- 	, dFchControl datetime            NULL
-- 	)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TUsuariosProgramas' o el usuario no tiene permisos para hacer referencia a tablas. */

CREATE TABLE dbo.TUsuariosProgramas
	( id           varchar(10)         NULL
	, nIdUsuario   int             NOT NULL
	, nCodPrograma int             NOT NULL
	, sPermiso     char(1)         NOT NULL
	, cCodUsuario  varchar(20)         NULL
	)

ALTER TABLE dbo.TUsuariosProgramas ADD CONSTRAINT PK_TUsuariosProgramas PRIMARY KEY clustered (nIdUsuario, nCodPrograma)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TUsuariosUITEL' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TUsuariosUITEL'. */

-- CREATE TABLE dbo.TUsuariosUITEL
-- 	( cDNI        varchar(9)      NOT NULL
-- 	, nCodUni     int             NOT NULL
-- 	, dFchControl datetime        NOT NULL
-- 	)

-- ALTER TABLE dbo.TUsuariosUITEL ADD CONSTRAINT PK_TUsuariosUITEL PRIMARY KEY clustered (cDNI, nCodUni)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TVariableFacturacion' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TVariableFacturacion'. */

-- CREATE TABLE dbo.TVariableFacturacion
-- 	( nIdFacturacion       int             NOT NULL
-- 	, dFchPeriodo          datetime        NOT NULL
-- 	, nUnidades            numeric(18,2)   NOT NULL
-- 	, cUsuarioAlta         varchar(25)     NOT NULL
-- 	, dFchAlta             datetime        NOT NULL
-- 	, cUsuarioModificacion varchar(25)         NULL
-- 	, dFchModificacion     datetime            NULL
-- 	)

-- ALTER TABLE dbo.TVariableFacturacion ADD CONSTRAINT PK_TVariableFacturacion PRIMARY KEY clustered (nIdFacturacion, dFchPeriodo)

-- 	/* El objeto 'dbo.TVariableFacturacionL5DIC15' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.TVariableFacturacionL5DIC15' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TVariableFacturacionL5DIC15' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TVariableFacturacionL5DIC15'. */

-- CREATE TABLE dbo.TVariableFacturacionL5DIC15
-- 	( nIdFacturacion       int             NOT NULL
-- 	, dFchPeriodo          datetime        NOT NULL
-- 	, nUnidades            numeric(18,2)   NOT NULL
-- 	, cUsuarioAlta         varchar(25)     NOT NULL
-- 	, dFchAlta             datetime        NOT NULL
-- 	, cUsuarioModificacion varchar(25)         NULL
-- 	, dFchModificacion     datetime            NULL
-- 	)

-- 	/* El objeto 'dbo.TVariableFacturacionL5NOV15' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.TVariableFacturacionL5NOV15' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TVariableFacturacionL5NOV15' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TVariableFacturacionL5NOV15'. */

-- CREATE TABLE dbo.TVariableFacturacionL5NOV15
-- 	( nIdFacturacion       int             NOT NULL
-- 	, dFchPeriodo          datetime        NOT NULL
-- 	, nUnidades            numeric(18,2)   NOT NULL
-- 	, cUsuarioAlta         varchar(25)     NOT NULL
-- 	, dFchAlta             datetime        NOT NULL
-- 	, cUsuarioModificacion varchar(25)         NULL
-- 	, dFchModificacion     datetime            NULL
-- 	)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.TVLanes' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TVLanes'. */

-- CREATE TABLE dbo.TVLanes
-- 	( nCodElectronicaRed   int             NOT NULL
-- 	, nCodVLAN             int             NOT NULL
-- 	, cNombreVLAN          varchar(30)     NOT NULL
-- 	, cDireccionIP         nvarchar(30)    NOT NULL
-- 	, cMascara             nvarchar(30)    NOT NULL
-- 	, cCIDR000             nvarchar(40)    NOT NULL
-- 	, bUsada               bit                 NULL
-- 	, dFchControl          datetime        NOT NULL
-- 	, cUsuarioAlta         varchar(10)     NOT NULL
-- 	, dFchAlta             datetime        NOT NULL
-- 	, cUsuarioModificacion nvarchar(20)        NULL
-- 	, dFchModificacion     datetime            NULL
-- 	)

-- ALTER TABLE dbo.TVLanes ADD CONSTRAINT PK_TVLanes PRIMARY KEY clustered (nCodElectronicaRed, nCodVLAN)

-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TVPNVLan'. */

-- CREATE TABLE dbo.TVPNVLan
-- 	( nIdVPN             int             NOT NULL
-- 	, nIdVLan            int             NOT NULL
-- 	, cDenominacionVPN   nvarchar(100)       NULL
-- 	, nNumAdministrativo nvarchar(40)        NULL
-- 	, cDenominacionVLan  nvarchar(100)       NULL
-- 	, cIPVLan            varchar(20)         NULL
-- 	, cUsuarioAlta       varchar(20)     NOT NULL
-- 	, dFchAlta           datetime        NOT NULL
-- 	)

-- ALTER TABLE dbo.TVPNVLan ADD CONSTRAINT PK_TVPNVLan PRIMARY KEY clustered (nIdVLan, nIdVPN)

	/* Ninguna clave externa hace referencia a la tabla 'dbo.TZonasSICAM' o el usuario no tiene permisos para hacer referencia a tablas. */
	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.TZonasSICAM'. */

CREATE TABLE dbo.TZonasSICAM
	( nCodZona smallint        NOT NULL
	, cZona    varchar(50)     NOT NULL
	, cGrupo   varchar(50)     NOT NULL
	)

ALTER TABLE dbo.TZonasSICAM ADD CONSTRAINT PK_TZonasSICAM PRIMARY KEY clustered (nCodZona)

-- 	/* El objeto 'dbo.XCO_Chassis' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.XCO_Chassis' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.XCO_Chassis'. */

-- CREATE TABLE dbo.XCO_Chassis
-- 	( cDeviceName          varchar(75)         NULL
-- 	, cIndex               varchar(75)         NULL
-- 	, cChassisModelName    varchar(75)         NULL
-- 	, cChassisSerialNumber varchar(75)         NULL
-- 	, cChassisVendorType   varchar(75)         NULL
-- 	, cChassisVersion      varchar(75)         NULL
-- 	, cDescription         varchar(255)        NULL
-- 	, cFreeSlots           varchar(75)         NULL
-- 	, cManufacturerName    varchar(75)         NULL
-- 	, cNumberofSlots       varchar(75)         NULL
-- 	, cPhysicalEntityName  varchar(75)         NULL
-- 	, cPortCount           varchar(75)         NULL
-- 	, cPowerAvailableW     varchar(75)         NULL
-- 	, cPowerConsumption    varchar(75)         NULL
-- 	, cPowerConsumptionW   varchar(75)         NULL
-- 	, cPowerRemainingW     varchar(75)         NULL
-- 	, cReportPublished     varchar(75)         NULL
-- 	, cSlotConfiguration   varchar(75)         NULL
-- 	, dFchControl          datetime            NULL
-- 	)

-- 	/* El objeto 'dbo.XCO_Device_Credential_Status' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.XCO_Device_Credential_Status' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.XCO_Device_Credential_Status'. */

-- CREATE TABLE dbo.XCO_Device_Credential_Status
-- 	( DEVICE_ID                     int             NOT NULL
-- 	, DEVICE_DISPLAY_NAME           varchar(128)        NULL
-- 	, CREDENTIAL_TYPE               smallint        NOT NULL
-- 	, CREDENTIAL_TYPE_DESCRIPTION   varchar(64)     NOT NULL
-- 	, CREDENTIAL_STATUS             smallint        NOT NULL
-- 	, CREDENTIAL_STATUS_DESCRIPTION varchar(64)     NOT NULL
-- 	, CREDENTIAL_STATUS_REASON      varchar(1024)       NULL
-- 	, STATUS_UPDATE_TIME            varchar(60)         NULL
-- 	, dFchDescarga                  datetime        NOT NULL
-- 	)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.XCO_Device_Inventory' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.XCO_Device_Inventory'. */

-- CREATE TABLE dbo.XCO_Device_Inventory
-- 	( Device_Id                  int             NOT NULL
-- 	, Device_Display_Name        varchar(256)        NULL
-- 	, Device_Description         varchar(1025)       NULL
-- 	, Device_Location            varchar(255)        NULL
-- 	, Device_Contact             varchar(255)        NULL
-- 	, Device_Sw_Version          varchar(64)         NULL
-- 	, User_Defined_Serial_Number varchar(255)        NULL
-- 	, dFchControl                datetime        NOT NULL
-- 	)

-- CREATE  nonclustered INDEX IX_XCO_Device_Inventory_Device_Id on dbo.XCO_Device_Inventory(Device_Id)

-- 	/* El objeto 'dbo.XCO_Device_Inventory_Collection_Status' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.XCO_Device_Inventory_Collection_Status' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.XCO_Device_Inventory_Collection_Status' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.XCO_Device_Inventory_Collection_Status'. */

-- CREATE TABLE dbo.XCO_Device_Inventory_Collection_Status
-- 	( DEVICE_ID                   int             NOT NULL
-- 	, DEVICE_DISPLAY_NAME         varchar(128)        NULL
-- 	, INVENTORY_COLLECTION_STATUS int                 NULL
-- 	, FAILURE_REASON              varchar(255)        NULL
-- 	, INVENTORY_UPDATED_AT        datetime            NULL
-- 	)

-- 	/* El objeto 'dbo.XCO_DeviceEnergyWise' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.XCO_DeviceEnergyWise' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.XCO_DeviceEnergyWise'. */

-- CREATE TABLE dbo.XCO_DeviceEnergyWise
-- 	( nDeviceId          int             NOT NULL
-- 	, cDeviceDisplayName varchar(256)        NULL
-- 	, cDomainName        varchar(255)        NULL
-- 	, cKeyword           varchar(255)        NULL
-- 	, cRole              varchar(255)        NULL
-- 	, nImportane         smallint            NULL
-- 	, nEnergyWiseStatus  smallint            NULL
-- 	, cMinSupportedos    varchar(50)         NULL
-- 	, dFchControl        datetime            NULL
-- 	)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.XCO_End_Hosts' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.XCO_End_Hosts'. */

-- CREATE TABLE dbo.XCO_End_Hosts
-- 	( HostName          varchar(64)     NOT NULL
-- 	, UserName          varchar(64)     NOT NULL
-- 	, IPAddress         varchar(15)     NOT NULL
-- 	, SubnetMask        varchar(15)     NOT NULL
-- 	, MACAddress        varchar(17)     NOT NULL
-- 	, DeviceName        varchar(64)     NOT NULL
-- 	, Device            varchar(15)     NOT NULL
-- 	, LastSeen          varchar(32)         NULL
-- 	, Port              varchar(32)     NOT NULL
-- 	, VLAN              varchar(32)     NOT NULL
-- 	, Subnet            varchar(15)     NOT NULL
-- 	, Notes             varchar(255)    NOT NULL
-- 	, PrefixLength      int             NOT NULL
-- 	, PortDuplex        varchar(32)     NOT NULL
-- 	, VTPDomain         varchar(32)     NOT NULL
-- 	, VlanId            int             NOT NULL
-- 	, PortName          varchar(255)    NOT NULL
-- 	, IPv6Address       varchar(150)    NOT NULL
-- 	, dot1xEnabled      varchar(15)     NOT NULL
-- 	, associatedRouters varchar(250)    NOT NULL
-- 	, dFchDescarga      datetime        NOT NULL
-- 	)

-- CREATE  nonclustered INDEX IX_XCO_End_Hosts_Device_Port on dbo.XCO_End_Hosts(DeviceName, Port)

-- CREATE  nonclustered INDEX IX_XCO_End_Hosts_LastSeen on dbo.XCO_End_Hosts(LastSeen)

-- CREATE  nonclustered INDEX IX_XCO_End_Hosts_Subred on dbo.XCO_End_Hosts(IPAddress, SubnetMask)

-- 	/* El objeto 'dbo.XCO_EquiposCW' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.XCO_EquiposCW' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.XCO_EquiposCW' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.XCO_EquiposCW'. */

-- CREATE TABLE dbo.XCO_EquiposCW
-- 	( cMAC        nvarchar(4000)      NULL
-- 	, cIDR        varchar(18)         NULL
-- 	, nIDVlan     smallint        NOT NULL
-- 	, nCodSedeLAN int                 NULL
-- 	, cIPEDR      nvarchar(30)    NOT NULL
-- 	)

-- 	/* El objeto 'dbo.XCO_InventarioModulos' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.XCO_InventarioModulos' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.XCO_InventarioModulos' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.XCO_InventarioModulos'. */

-- CREATE TABLE dbo.XCO_InventarioModulos
-- 	( cDevice  nvarchar(100)       NULL
-- 	, cNum     nvarchar(100)       NULL
-- 	, cSerie   nvarchar(100)       NULL
-- 	, cModelo  nvarchar(100)       NULL
-- 	, cPuertos nvarchar(100)       NULL
-- 	)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.XCO_Module_Inventory' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.XCO_Module_Inventory'. */

-- CREATE TABLE dbo.XCO_Module_Inventory
-- 	( Device_Id           int                 NULL
-- 	, Device_Display_Name varchar(256)        NULL
-- 	, Module_Name         varchar(255)        NULL
-- 	, Vendor_Type         varchar(255)        NULL
-- 	, SW_Version          varchar(255)        NULL
-- 	, FW_Version          varchar(255)        NULL
-- 	, Slot_Number         int                 NULL
-- 	, Oper_Status         smallint            NULL
-- 	, Admin_Status        smallint            NULL
-- 	, dFchDescarga        datetime        NOT NULL
-- 	)

-- CREATE  nonclustered INDEX IX_XCO_Module_Inventory_Device_Display_Name on dbo.XCO_Module_Inventory(Device_Display_Name)

-- CREATE  nonclustered INDEX IX_XCO_Module_Inventory_Device_Id on dbo.XCO_Module_Inventory(Device_Id)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.XCO_Network_Devices' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.XCO_Network_Devices'. */

-- CREATE TABLE dbo.XCO_Network_Devices
-- 	( Device_Id            int             NOT NULL
-- 	, Device_Display_Name  varchar(256)        NULL
-- 	, Management_IPAddress varchar(128)        NULL
-- 	, Host_Name            varchar(128)        NULL
-- 	, Domain_Name          varchar(128)        NULL
-- 	, sysObjectID          varchar(128)        NULL
-- 	, Device_Category      varchar(512)        NULL
-- 	, Device_Series        varchar(512)        NULL
-- 	, Device_Model         varchar(512)        NULL
-- 	, UDF0                 varchar(128)        NULL
-- 	, UDF1                 varchar(128)        NULL
-- 	, UDF2                 varchar(128)        NULL
-- 	, UDF3                 varchar(128)        NULL
-- 	, UDF4                 varchar(128)        NULL
-- 	, UDF5                 varchar(128)        NULL
-- 	, UDF6                 varchar(128)        NULL
-- 	, UDF7                 varchar(128)        NULL
-- 	, UDF8                 varchar(128)        NULL
-- 	, UDF9                 varchar(128)        NULL
-- 	, UDF10                varchar(128)        NULL
-- 	, UDF11                varchar(128)        NULL
-- 	, UDF12                varchar(128)        NULL
-- 	, UDF13                varchar(128)        NULL
-- 	, UDF14                varchar(128)        NULL
-- 	, UDF15                varchar(128)        NULL
-- 	, dFchDescarga         datetime            NULL
-- 	)

-- CREATE  nonclustered INDEX IX_XCO_Network_Devices_Device_Display_Name_Management_IPAddress on dbo.XCO_Network_Devices(Device_Display_Name, Management_IPAddress)

-- CREATE  nonclustered INDEX IX_XCO_Network_Devices_Device_Id on dbo.XCO_Network_Devices(Device_Id)

-- 	/* El objeto 'dbo.XCO_Port_Inventory' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.XCO_Port_Inventory' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.XCO_Port_Inventory'. */

-- CREATE TABLE dbo.XCO_Port_Inventory
-- 	( DEVICE_ID           int             NOT NULL
-- 	, DEVICE_DISPLAY_NAME varchar(128)        NULL
-- 	, PORT_NAME           varchar(50)         NULL
-- 	, PORT_DESC           varchar(255)        NULL
-- 	, PORT_TYPE           smallint            NULL
-- 	, PORT_ADMIN_STATUS   smallint            NULL
-- 	, PORT_OPER_STATUS    smallint            NULL
-- 	, PORT_SPEED          real                NULL
-- 	, PORT_DUPLEX_MODE    varchar(50)         NULL
-- 	, IS_LINK_PORT        smallint            NULL
-- 	, IS_ACCESS_PORT      smallint            NULL
-- 	, IS_TRUNK_PORT       smallint            NULL
-- 	, IS_PORT_CHANNEL     smallint            NULL
-- 	, VLAN_NAME           varchar(50)         NULL
-- 	, VLANID              int                 NULL
-- 	, VTPDOMAIN           varchar(64)         NULL
-- 	, NEIGHBOUR_TYPE      varchar(50)         NULL
-- 	, dFchDescarga        datetime            NULL
-- 	)

-- 	/* El objeto 'dbo.XCO_PortEnergyWise' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.XCO_PortEnergyWise' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.XCO_PortEnergyWise'. */

-- CREATE TABLE dbo.XCO_PortEnergyWise
-- 	( nDeviceId          int             NOT NULL
-- 	, cDeviceDisplayName varchar(256)        NULL
-- 	, cPortName          varchar(255)        NULL
-- 	, cKeyWord           varchar(255)        NULL
-- 	, cRole              varchar(255)        NULL
-- 	, nImportane         smallint            NULL
-- 	, dFchControl        datetime            NULL
-- 	)

-- 	/* El objeto 'dbo.XCO_PowerSupply' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.XCO_PowerSupply' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.XCO_PowerSupply'. */

-- CREATE TABLE dbo.XCO_PowerSupply
-- 	( cDeviceName              varchar(75)         NULL
-- 	, cDescription             varchar(75)         NULL
-- 	, cManufacturerName        varchar(75)         NULL
-- 	, cPhysicalEntityName      varchar(75)         NULL
-- 	, cPowerSupplyModelName    varchar(75)         NULL
-- 	, cPowerSupplySerialNumber varchar(75)         NULL
-- 	, cPowerSupplyVendorType   varchar(75)         NULL
-- 	, cSlotConfiguration       varchar(75)         NULL
-- 	, dFchControl              datetime            NULL
-- 	)

-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.XCO_VTPDomainPorts' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.XCO_VTPDomainPorts'. */

-- CREATE TABLE dbo.XCO_VTPDomainPorts
-- 	( isLink          varchar(5)      NOT NULL
-- 	, PortDescription varchar(255)        NULL
-- 	, PortName        varchar(255)        NULL
-- 	, DeviceName      varchar(64)     NOT NULL
-- 	, DeviceIPAddress varchar(40)     NOT NULL
-- 	, PortStatus      varchar(4)      NOT NULL
-- 	, isTrunk         varchar(5)          NULL
-- 	, Vlan            varchar(128)    NOT NULL
-- 	, AssosiationType varchar(9)      NOT NULL
-- 	, PortMode        varchar(11)         NULL
-- 	, Domain          varchar(64)     NOT NULL
-- 	, dbId            int             NOT NULL
-- 	, dFchControl     datetime        NOT NULL
-- 	)

-- CREATE  nonclustered INDEX IX_XCO_VTPDomainPorts_Device_Port on dbo.XCO_VTPDomainPorts(DeviceName, DeviceIPAddress, PortName)

-- 	/* El objeto 'dbo.XCO2_VTPDomainPorts' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.XCO2_VTPDomainPorts' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.XCO2_VTPDomainPorts' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.XCO2_VTPDomainPorts'. */

-- CREATE TABLE dbo.XCO2_VTPDomainPorts
-- 	( isLink           varchar(5)      NOT NULL
-- 	, PortDescription  varchar(255)        NULL
-- 	, PortName         varchar(254)        NULL
-- 	, Device Name      varchar(64)     NOT NULL
-- 	, Device IPAddress varchar(40)     NOT NULL
-- 	, PortStatus       varchar(4)      NOT NULL
-- 	, isTrunk          varchar(5)          NULL
-- 	, Vlan             varchar(128)    NOT NULL
-- 	, Assosiation Type varchar(9)      NOT NULL
-- 	, Port Mode        varchar(11)         NULL
-- 	, Domain           varchar(64)     NOT NULL
-- 	, dbId             int             NOT NULL
-- 	)

-- 	/* El objeto 'dbo.Z8consolas' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.Z8consolas' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.Z8consolas' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.Z8consolas'. */

-- CREATE TABLE dbo.Z8consolas
-- 	( CONSOLA nvarchar(510)       NULL
-- 	, ISSI1   float               NULL
-- 	, ISSI2   float               NULL
-- 	, ISSI3   float               NULL
-- 	, ISSI4   float               NULL
-- 	, ISSI5   nvarchar(510)       NULL
-- 	, ISSI6   nvarchar(510)       NULL
-- 	, ISSI7   float               NULL
-- 	, ISSI8   float               NULL
-- 	, ISSI9   float               NULL
-- 	, ISSI10  float               NULL
-- 	, ISSI11  float               NULL
-- 	, ISSI12  float               NULL
-- 	, ISSI13  float               NULL
-- 	, ISSI14  float               NULL
-- 	, ISSI15  float               NULL
-- 	, ISSI16  float               NULL
-- 	, ISSI17  float               NULL
-- 	, ISSI18  float               NULL
-- 	, ISSI19  float               NULL
-- 	, ISSI20  float               NULL
-- 	, ISSI21  float               NULL
-- 	, ISSI22  float               NULL
-- 	, ISSI23  float               NULL
-- 	, ISSI24  float               NULL
-- 	, ISSI25  float               NULL
-- 	, ISSI26  float               NULL
-- 	, ISSI27  float               NULL
-- 	, ISSI28  float               NULL
-- 	, ISSI29  float               NULL
-- 	, ISSI30  float               NULL
-- 	, ISSI31  float               NULL
-- 	, ISSI32  float               NULL
-- 	, ISSI33  float               NULL
-- 	, ISSI34  float               NULL
-- 	, ISSI35  float               NULL
-- 	, ISSI36  float               NULL
-- 	, ISSI37  float               NULL
-- 	, ISSI38  float               NULL
-- 	, ISSI39  float               NULL
-- 	, ISSI40  float               NULL
-- 	, ISSI41  nvarchar(510)       NULL
-- 	, ISSI42  nvarchar(510)       NULL
-- 	, ISSI43  nvarchar(510)       NULL
-- 	, ISSI44  nvarchar(510)       NULL
-- 	, ISSI45  nvarchar(510)       NULL
-- 	, ISSI46  nvarchar(510)       NULL
-- 	, ISSI47  nvarchar(510)       NULL
-- 	, ISSI48  nvarchar(510)       NULL
-- 	, ISSI49  nvarchar(510)       NULL
-- 	, ISSI50  nvarchar(510)       NULL
-- 	, ISSI51  nvarchar(510)       NULL
-- 	, ISSI52  nvarchar(510)       NULL
-- 	, ISSI53  nvarchar(510)       NULL
-- 	, ISSI54  nvarchar(510)       NULL
-- 	, ISSI55  nvarchar(510)       NULL
-- 	, ISSI56  nvarchar(510)       NULL
-- 	, ISSI57  float               NULL
-- 	, ISSI58  float               NULL
-- 	, ISSI59  float               NULL
-- 	, ISSI60  float               NULL
-- 	, ISSI61  nvarchar(510)       NULL
-- 	, ISSI62  nvarchar(510)       NULL
-- 	, ISSI63  nvarchar(510)       NULL
-- 	, ISSI64  nvarchar(510)       NULL
-- 	, ISSI65  nvarchar(510)       NULL
-- 	, ISSI66  nvarchar(510)       NULL
-- 	, ISSI67  float               NULL
-- 	, ISSI68  float               NULL
-- 	, ISSI69  float               NULL
-- 	, ISSI70  float               NULL
-- 	, ISSI71  float               NULL
-- 	, ISSI72  float               NULL
-- 	, ISSI73  float               NULL
-- 	, ISSI74  float               NULL
-- 	, ISSI75  float               NULL
-- 	, ISSI76  float               NULL
-- 	, ISSI77  float               NULL
-- 	, ISSI78  float               NULL
-- 	, ISSI79  float               NULL
-- 	, ISSI80  float               NULL
-- 	, ISSI81  float               NULL
-- 	, ISSI82  float               NULL
-- 	, ISSI83  float               NULL
-- 	, ISSI84  float               NULL
-- 	, ISSI85  float               NULL
-- 	, ISSI86  float               NULL
-- 	, ISSI87  float               NULL
-- 	, ISSI88  float               NULL
-- 	, ISSI89  float               NULL
-- 	, ISSI90  float               NULL
-- 	, ISSI91  float               NULL
-- 	, ISSI92  float               NULL
-- 	, ISSI93  float               NULL
-- 	, ISSI94  float               NULL
-- 	, ISSI95  float               NULL
-- 	, ISSI96  float               NULL
-- 	, ISSI97  float               NULL
-- 	, ISSI98  float               NULL
-- 	, ISSI99  float               NULL
-- 	, ISSI100 float               NULL
-- 	, ISSI101 float               NULL
-- 	, ISSI102 float               NULL
-- 	, ISSI103 float               NULL
-- 	, ISSI104 float               NULL
-- 	, ISSI105 float               NULL
-- 	, ISSI106 float               NULL
-- 	, ISSI107 float               NULL
-- 	, ISSI108 float               NULL
-- 	, ISSI109 float               NULL
-- 	, ISSI110 float               NULL
-- 	, ISSI111 float               NULL
-- 	, ISSI112 float               NULL
-- 	, ISSI113 float               NULL
-- 	, ISSI114 float               NULL
-- 	, ISSI115 float               NULL
-- 	, ISSI116 float               NULL
-- 	, ISSI117 float               NULL
-- 	, ISSI118 float               NULL
-- 	, ISSI119 float               NULL
-- 	, ISSI120 float               NULL
-- 	, ISSI121 nvarchar(510)       NULL
-- 	, ISSI122 nvarchar(510)       NULL
-- 	, ISSI123 float               NULL
-- 	, ISSI124 float               NULL
-- 	, ISSI125 float               NULL
-- 	, ISSI126 float               NULL
-- 	, ISSI127 float               NULL
-- 	, ISSI128 float               NULL
-- 	, ISSI129 float               NULL
-- 	, ISSI130 float               NULL
-- 	, ISSI131 float               NULL
-- 	, ISSI132 nvarchar(510)       NULL
-- 	, ISSI133 nvarchar(510)       NULL
-- 	, ISSI134 float               NULL
-- 	, ISSI135 float               NULL
-- 	, ISSI136 float               NULL
-- 	, ISSI137 float               NULL
-- 	, ISSI138 float               NULL
-- 	, ISSI139 float               NULL
-- 	, ISSI140 nvarchar(510)       NULL
-- 	, ISSI141 nvarchar(510)       NULL
-- 	, ISSI142 nvarchar(510)       NULL
-- 	, ISSI143 nvarchar(510)       NULL
-- 	, ISSI144 nvarchar(510)       NULL
-- 	, ISSI145 float               NULL
-- 	, ISSI146 float               NULL
-- 	, ISSI147 float               NULL
-- 	, ISSI148 float               NULL
-- 	, ISSI149 float               NULL
-- 	, ISSI150 float               NULL
-- 	, ISSI151 float               NULL
-- 	, ISSI152 float               NULL
-- 	, ISSI153 float               NULL
-- 	, ISSI154 float               NULL
-- 	, ISSI155 float               NULL
-- 	, ISSI156 float               NULL
-- 	, ISSI157 float               NULL
-- 	, ISSI158 float               NULL
-- 	, ISSI159 float               NULL
-- 	, ISSI160 float               NULL
-- 	, ISSI161 float               NULL
-- 	, ISSI162 float               NULL
-- 	, ISSI163 float               NULL
-- 	, ISSI164 float               NULL
-- 	, ISSI165 float               NULL
-- 	, ISSI166 float               NULL
-- 	, ISSI167 float               NULL
-- 	, ISSI168 float               NULL
-- 	, ISSI169 float               NULL
-- 	, ISSI170 float               NULL
-- 	, ISSI171 float               NULL
-- 	, ISSI172 float               NULL
-- 	, ISSI173 float               NULL
-- 	, ISSI174 float               NULL
-- 	, ISSI175 float               NULL
-- 	, ISSI176 float               NULL
-- 	, ISSI177 float               NULL
-- 	, ISSI178 float               NULL
-- 	, ISSI179 float               NULL
-- 	, ISSI180 float               NULL
-- 	, ISSI181 float               NULL
-- 	, ISSI182 float               NULL
-- 	, ISSI183 float               NULL
-- 	, ISSI184 float               NULL
-- 	, ISSI185 float               NULL
-- 	, ISSI186 float               NULL
-- 	)

-- 	/* El objeto 'dbo.Z8gssi' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.Z8gssi' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.Z8gssi' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.Z8gssi'. */

-- CREATE TABLE dbo.Z8gssi
-- 	( GSSI float               NULL
-- 	, 1    float               NULL
-- 	, 2    float               NULL
-- 	, 3    float               NULL
-- 	, 4    float               NULL
-- 	, 5    float               NULL
-- 	, 6    float               NULL
-- 	, 7    float               NULL
-- 	, 8    float               NULL
-- 	, 9    float               NULL
-- 	, 10   float               NULL
-- 	, 11   float               NULL
-- 	, 12   float               NULL
-- 	, 13   float               NULL
-- 	, 14   float               NULL
-- 	, 15   float               NULL
-- 	, 16   float               NULL
-- 	, 17   float               NULL
-- 	, 18   float               NULL
-- 	, 19   float               NULL
-- 	, 20   float               NULL
-- 	, 21   float               NULL
-- 	, 22   float               NULL
-- 	, 23   float               NULL
-- 	, 24   float               NULL
-- 	, 25   float               NULL
-- 	, 26   float               NULL
-- 	, 27   float               NULL
-- 	, 28   float               NULL
-- 	, 29   float               NULL
-- 	, 30   float               NULL
-- 	, 31   float               NULL
-- 	, 32   float               NULL
-- 	)

-- 	/* El objeto 'dbo.z9consolas' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.z9consolas' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.z9consolas' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.z9consolas'. */

-- CREATE TABLE dbo.z9consolas
-- 	( consola nvarchar(510)       NULL
-- 	, F2      float               NULL
-- 	, F3      float               NULL
-- 	, F4      float               NULL
-- 	, F5      float               NULL
-- 	, F6      float               NULL
-- 	, F7      float               NULL
-- 	, F8      float               NULL
-- 	, F9      float               NULL
-- 	, F10     float               NULL
-- 	, F11     float               NULL
-- 	, F12     float               NULL
-- 	, F13     float               NULL
-- 	, F14     float               NULL
-- 	, F15     float               NULL
-- 	, F16     float               NULL
-- 	, F17     float               NULL
-- 	, F18     float               NULL
-- 	, F19     float               NULL
-- 	, F20     float               NULL
-- 	, F21     float               NULL
-- 	, F22     float               NULL
-- 	, F23     float               NULL
-- 	, F24     float               NULL
-- 	, F25     float               NULL
-- 	, F26     float               NULL
-- 	, F27     float               NULL
-- 	, F28     float               NULL
-- 	, F29     float               NULL
-- 	, F30     float               NULL
-- 	, F31     float               NULL
-- 	, F32     float               NULL
-- 	, F33     float               NULL
-- 	, F34     float               NULL
-- 	, F35     float               NULL
-- 	, F36     float               NULL
-- 	, F37     float               NULL
-- 	, F38     float               NULL
-- 	, F39     nvarchar(510)       NULL
-- 	, F40     nvarchar(510)       NULL
-- 	, F41     nvarchar(510)       NULL
-- 	, F42     nvarchar(510)       NULL
-- 	, F43     nvarchar(510)       NULL
-- 	, F44     float               NULL
-- 	, F45     float               NULL
-- 	, F46     float               NULL
-- 	, F47     float               NULL
-- 	, F48     float               NULL
-- 	, F49     float               NULL
-- 	, F50     float               NULL
-- 	, F51     float               NULL
-- 	, F52     float               NULL
-- 	, F53     float               NULL
-- 	, F54     float               NULL
-- 	, F55     float               NULL
-- 	, F56     float               NULL
-- 	, F57     float               NULL
-- 	, F58     float               NULL
-- 	, F59     float               NULL
-- 	, F60     float               NULL
-- 	, F61     float               NULL
-- 	, F62     float               NULL
-- 	, F63     float               NULL
-- 	, F64     float               NULL
-- 	, F65     float               NULL
-- 	, F66     float               NULL
-- 	, F67     float               NULL
-- 	, F68     float               NULL
-- 	, F69     float               NULL
-- 	, F70     float               NULL
-- 	, F71     float               NULL
-- 	, F72     float               NULL
-- 	, F73     float               NULL
-- 	, F74     float               NULL
-- 	, F75     float               NULL
-- 	, F76     float               NULL
-- 	, F77     float               NULL
-- 	, F78     float               NULL
-- 	, F79     float               NULL
-- 	, F80     float               NULL
-- 	, F81     float               NULL
-- 	, F82     float               NULL
-- 	, F83     float               NULL
-- 	, F84     float               NULL
-- 	, F85     float               NULL
-- 	, F86     float               NULL
-- 	, F87     float               NULL
-- 	, F88     float               NULL
-- 	, F89     float               NULL
-- 	, F90     float               NULL
-- 	, F91     float               NULL
-- 	, F92     float               NULL
-- 	, F93     float               NULL
-- 	, F94     float               NULL
-- 	, F95     float               NULL
-- 	, F96     float               NULL
-- 	, F97     float               NULL
-- 	, F98     float               NULL
-- 	, F99     float               NULL
-- 	, F100    float               NULL
-- 	, F101    float               NULL
-- 	, F102    float               NULL
-- 	, F103    float               NULL
-- 	, F104    float               NULL
-- 	, F105    float               NULL
-- 	, F106    float               NULL
-- 	, F107    float               NULL
-- 	, F108    float               NULL
-- 	, F109    float               NULL
-- 	, F110    float               NULL
-- 	, F111    float               NULL
-- 	, F112    nvarchar(510)       NULL
-- 	, F113    float               NULL
-- 	, F114    float               NULL
-- 	, F115    float               NULL
-- 	, F116    float               NULL
-- 	, F117    float               NULL
-- 	, F118    float               NULL
-- 	, F119    float               NULL
-- 	, F120    float               NULL
-- 	, F121    float               NULL
-- 	, F122    float               NULL
-- 	, F123    float               NULL
-- 	, F124    float               NULL
-- 	, F125    float               NULL
-- 	, F126    float               NULL
-- 	, F127    float               NULL
-- 	, F128    float               NULL
-- 	, F129    float               NULL
-- 	, F130    float               NULL
-- 	, F131    float               NULL
-- 	, F132    float               NULL
-- 	, F133    float               NULL
-- 	, F134    float               NULL
-- 	, F135    float               NULL
-- 	, F136    float               NULL
-- 	, F137    float               NULL
-- 	, F138    float               NULL
-- 	, F139    float               NULL
-- 	, F140    float               NULL
-- 	, F141    float               NULL
-- 	, F142    float               NULL
-- 	, F143    float               NULL
-- 	, F144    float               NULL
-- 	, F145    float               NULL
-- 	, F146    float               NULL
-- 	, F147    float               NULL
-- 	, F148    float               NULL
-- 	, F149    float               NULL
-- 	, F150    float               NULL
-- 	, F151    float               NULL
-- 	, F152    float               NULL
-- 	, F153    float               NULL
-- 	, F154    float               NULL
-- 	, F155    float               NULL
-- 	)

-- 	/* El objeto 'dbo.z9gssi' no tiene ningún índice o el usuario no tiene permisos. */
-- 	/* No hay ninguna restricción definida en el objeto 'dbo.z9gssi' o el usuario no tiene permisos. */
-- 	/* Ninguna clave externa hace referencia a la tabla 'dbo.z9gssi' o el usuario no tiene permisos para hacer referencia a tablas. */
-- 	/* No hay ninguna vista con la tabla de referencia de enlace de esquema 'dbo.z9gssi'. */

-- CREATE TABLE dbo.z9gssi
-- 	( gssi float               NULL
-- 	, 33   float               NULL
-- 	, 34   float               NULL
-- 	, 35   float               NULL
-- 	, 36   float               NULL
-- 	, 37   float               NULL
-- 	, 48   float               NULL
-- 	, 49   float               NULL
-- 	, 50   float               NULL
-- 	, 38   float               NULL
-- 	, 39   float               NULL
-- 	, 40   float               NULL
-- 	, 41   float               NULL
-- 	, 42   float               NULL
-- 	, 43   float               NULL
-- 	, 44   float               NULL
-- 	, 45   float               NULL
-- 	, 46   float               NULL
-- 	, 47   float               NULL
-- 	)

