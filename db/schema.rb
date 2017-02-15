# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 0) do

  # create_table "AFARIA_APP_BLACK_LIST", id: false, force: :cascade do |t|
  # end
  #
  # create_table "AFARIA_APP_INSTALADAS", id: false, force: :cascade do |t|
  # end
  #
  # create_table "AFARIA_APP_WHITE_LIST", id: false, force: :cascade do |t|
  # end
  #
  # create_table "AFARIA_BLUETOOTH", id: false, force: :cascade do |t|
  # end
  #
  # add_index "AFARIA_BLUETOOTH", ["cIMEI"], name: "IX_AFARIA_BLUETOOTH"
  #
  # create_table "AFARIA_ENVIO_INVENTARIO", id: false, force: :cascade do |t|
  # end
  #
  # create_table "AFARIA_LOCALIZACION", id: false, force: :cascade do |t|
  # end
  #
  # create_table "AFARIA_RESTRICCIONES", id: false, force: :cascade do |t|
  # end
  #
  # create_table "AFARIA_ROAMING", id: false, force: :cascade do |t|
  # end
  #
  # create_table "AFARIA_SECURITY_PWD", id: false, force: :cascade do |t|
  # end
  #
  # add_index "AFARIA_SECURITY_PWD", ["cClientFriendlyName"], name: "IX_AFARIA_SECURITY_PWD_IMEI_cClientFriendlyName"
  #
  # create_table "AFARIA_TENANT", id: false, force: :cascade do |t|
  # end
  #
  # create_table "AFARIA_V_ALL_CLIENTS", id: false, force: :cascade do |t|
  # end
  #
  # add_index "AFARIA_V_ALL_CLIENTS", ["ClientUID"], name: "IX_A_V_ALL_CLIENTS_ClientUID"
  # add_index "AFARIA_V_ALL_CLIENTS", ["IMEI"], name: "IX_A_V_ALL_CLIENTS_IMEI"
  #
  # create_table "AFARIA_V_ALL_CLIENTS_BCK151105", id: false, force: :cascade do |t|
  # end
  #
  # create_table "AFARIA_V_ALL_GROUPS", id: false, force: :cascade do |t|
  # end
  #
  # add_index "AFARIA_V_ALL_GROUPS", ["TenantId"], name: "IX_AFARIA_V_ALL_GROUPS_TenantId"
  #
  # create_table "AFARIA_V_ALL_GROUPS_ALL_MEMBERS", id: false, force: :cascade do |t|
  # end
  #
  # create_table "AFARIA_WIFI", id: false, force: :cascade do |t|
  # end
  #
  # create_table "AFARIA_WIFI_INFO", id: false, force: :cascade do |t|
  # end
  #
  # create_table "ATS_AddressBook", id: false, force: :cascade do |t|
  # end
  #
  # create_table "ATS_SentRecvedMessages", id: false, force: :cascade do |t|
  # end
  #
  # create_table "AUX_16132", id: false, force: :cascade do |t|
  # end
  #
  # create_table "AUX_16133", id: false, force: :cascade do |t|
  # end
  #
  # create_table "AUX_ALBARAN_TOTAL_CISCO", id: false, force: :cascade do |t|
  # end
  #
  # create_table "AUX_AccesosIntranet", id: false, force: :cascade do |t|
  # end
  #
  # add_index "AUX_AccesosIntranet", ["CallerID"], name: "IX_AUX_AccesosIntranet_Callerid"
  # add_index "AUX_AccesosIntranet", ["Date", "Time"], name: "IX_AUX_AccesosIntranet_datetime"
  # add_index "AUX_AccesosIntranet", ["UserName"], name: "IX_AUX_AccesosIntranet_user"
  #
  # create_table "AUX_Afaria_Directorios", id: false, force: :cascade do |t|
  # end
  #
  # create_table "AUX_BP_Categorias", id: false, force: :cascade do |t|
  # end
  #
  # create_table "AUX_BP_Centralitas", id: false, force: :cascade do |t|
  # end
  #
  # create_table "AUX_BP_IDQ", id: false, force: :cascade do |t|
  # end
  #
  # create_table "AUX_BP_Posiciones", id: false, force: :cascade do |t|
  # end
  #
  # add_index "AUX_BP_Posiciones", ["nLinea"], name: "IX_AuxBpPosLinea"
  # add_index "AUX_BP_Posiciones", ["nNumCorto"], name: "IX_AuxBpPosCorto"
  #
  # create_table "AUX_BP_THardware", id: false, force: :cascade do |t|
  # end
  #
  # create_table "AUX_CMR", id: false, force: :cascade do |t|
  # end
  #
  # create_table "AUX_CoberturasIbercom", id: false, force: :cascade do |t|
  # end
  #
  # add_index "AUX_CoberturasIbercom", ["nLinea"], name: "IX_nLinea_CoberturasIbercom"
  # add_index "AUX_CoberturasIbercom", ["nNumCorto"], name: "IX_nNumCorto_CoberturasIbercom"
  #
  # create_table "AUX_EMailUGD", id: false, force: :cascade do |t|
  # end
  #
  # create_table "AUX_ElectronicaTACACS", id: false, force: :cascade do |t|
  # end
  #
  # add_index "AUX_ElectronicaTACACS", ["cEquipo", "cIPGestion"], name: "IX_AUX_ElectronicaTACACS"
  #
  # create_table "AUX_EntradaTerminalesNuevos", id: false, force: :cascade do |t|
  # end
  #
  # create_table "AUX_EnvioUGD", id: false, force: :cascade do |t|
  # end
  #
  # create_table "AUX_FACILIDADES_MOVISTAR", id: false, force: :cascade do |t|
  # end
  #
  # create_table "AUX_GASTEL_RESUMEN_1", id: false, force: :cascade do |t|
  # end
  #
  # create_table "AUX_GRUPOS_CAPTURA", id: false, force: :cascade do |t|
  # end
  #
  # create_table "AUX_GruposIbercom", id: false, force: :cascade do |t|
  # end
  #
  # create_table "AUX_HISTORICO_FACILIDADES_MOVISTAR", id: false, force: :cascade do |t|
  # end
  #
  # create_table "AUX_Ibercom", id: false, force: :cascade do |t|
  # end
  #
  # create_table "AUX_InformeHacienda", id: false, force: :cascade do |t|
  # end
  #
  # create_table "AUX_InformeHaciendaLiteral", id: false, force: :cascade do |t|
  # end
  #
  # create_table "AUX_LinIbercom", id: false, force: :cascade do |t|
  # end
  #
  # add_index "AUX_LinIbercom", ["nAdicionalDe"], name: "IX_AUX_LinIbercom"
  # add_index "AUX_LinIbercom", ["nLinea"], name: "IX_nLinea_LinIbercom"
  # add_index "AUX_LinIbercom", ["nNumCorto"], name: "IX_nNumCorto_LinIbercom"
  #
  # create_table "AUX_LogRadiusFailedAuthentications", id: false, force: :cascade do |t|
  # end
  #
  # add_index "AUX_LogRadiusFailedAuthentications", ["cCallerID"], name: "IX_CallerId_LogRadiusFailedAuthentications"
  # add_index "AUX_LogRadiusFailedAuthentications", ["cGroupName", "cUserName"], name: "IX_UserName_LogRadiusFailedAuthentications"
  # add_index "AUX_LogRadiusFailedAuthentications", ["dDateTime"], name: "IX_DateTime_LogRadiusFailedAuthentications"
  #
  # create_table "AUX_LogRadiusPassedAuthentications", id: false, force: :cascade do |t|
  # end
  #
  # add_index "AUX_LogRadiusPassedAuthentications", ["cCallerID"], name: "IX_CallerId_LogRadiusPassedAuthentications"
  # add_index "AUX_LogRadiusPassedAuthentications", ["cUserName", "cGroupName"], name: "IX_UserName_LogRadiusPassedAuthentications"
  # add_index "AUX_LogRadiusPassedAuthentications", ["dDateTime"], name: "IX_DateTime_LogRadiusPassedAuthentications"
  #
  # create_table "AUX_MODELOSIP", id: false, force: :cascade do |t|
  # end
  #
  # create_table "AUX_MOVILESSEDES", id: false, force: :cascade do |t|
  # end
  #
  # create_table "AUX_MacAddressTableDynamic", id: false, force: :cascade do |t|
  # end
  #
  # create_table "AUX_OperadorAnexoLote2", id: false, force: :cascade do |t|
  # end
  #
  # create_table "AUX_Prime_APsSSID", id: false, force: :cascade do |t|
  # end
  #
  # create_table "AUX_SOFIA_RESUMEN", id: false, force: :cascade do |t|
  # end
  #
  # create_table "AUX_Supervision", id: false, force: :cascade do |t|
  # end
  #
  # create_table "AUX_TCCoste", id: false, force: :cascade do |t|
  # end
  #
  # create_table "AUX_TCategoriaRestringida", id: false, force: :cascade do |t|
  # end
  #
  # create_table "AUX_TDeviceNeighbour", id: false, force: :cascade do |t|
  # end
  #
  # create_table "AUX_TDiscoveryVLan", id: false, force: :cascade do |t|
  # end
  #
  # add_index "AUX_TDiscoveryVLan", ["cDevice"], name: "IX_AUX_TDiscoveryVLan"
  #
  # create_table "AUX_TEdificios", id: false, force: :cascade do |t|
  # end
  #
  # create_table "AUX_TFacturasMovil", id: false, force: :cascade do |t|
  # end
  #
  # create_table "AUX_TJefesUnidad", id: false, force: :cascade do |t|
  # end
  #
  # create_table "AUX_TJefesUnidad_copia", id: false, force: :cascade do |t|
  # end
  #
  # create_table "AUX_TLINFIJOSDISPOSITIVOSIP", id: false, force: :cascade do |t|
  # end
  #
  # create_table "AUX_TLINMOVILESTARIFAS", id: false, force: :cascade do |t|
  # end
  #
  # create_table "AUX_TLinFijos", id: false, force: :cascade do |t|
  # end
  #
  # create_table "AUX_TLinFijosPuestos", id: false, force: :cascade do |t|
  # end
  #
  # create_table "AUX_TLinFijosUnidades", id: false, force: :cascade do |t|
  # end
  #
  # create_table "AUX_TLinMoviles", id: false, force: :cascade do |t|
  # end
  #
  # create_table "AUX_TLineas", id: false, force: :cascade do |t|
  # end
  #
  # create_table "AUX_TPersonas", id: false, force: :cascade do |t|
  # end
  #
  # create_table "AUX_TPuestos", id: false, force: :cascade do |t|
  # end
  #
  # create_table "AUX_TPuestos_411", id: false, force: :cascade do |t|
  # end
  #
  # create_table "AUX_TRangoIPdisp", id: false, force: :cascade do |t|
  # end
  #
  # create_table "AUX_TSedes", id: false, force: :cascade do |t|
  # end
  #
  # create_table "AUX_TTarjetasMovil", id: false, force: :cascade do |t|
  # end
  #
  # create_table "AUX_TTerminalesMovil", id: false, force: :cascade do |t|
  # end
  #
  # create_table "AUX_TUnidades", id: false, force: :cascade do |t|
  # end
  #
  # create_table "AUX_TUsuariosUITEL", id: false, force: :cascade do |t|
  # end
  #
  # create_table "AUX_T_ELEMENTO_TARIFICAR", id: false, force: :cascade do |t|
  # end
  #
  # add_index "AUX_T_ELEMENTO_TARIFICAR", ["ELEMENTO"], name: "IX_AUX_T_ELEMENTO_TARIFICAR"
  #
  # create_table "AUX_Teclas", id: false, force: :cascade do |t|
  # end
  #
  # create_table "AUX_TraficoFactura", id: false, force: :cascade do |t|
  # end
  #
  # create_table "AUX_UAF_Telefonos", id: false, force: :cascade do |t|
  # end
  #
  # create_table "AUX_vAlgoritmoDeviceEndUser", id: false, force: :cascade do |t|
  # end
  #
  # create_table "AUX_vAlgoritmoLabels", id: false, force: :cascade do |t|
  # end
  #
  # create_table "AUX_vAlgoritmoLabels2", id: false, force: :cascade do |t|
  # end
  #
  # create_table "AUX_vEndUserExtension", id: false, force: :cascade do |t|
  # end
  #
  # create_table "AUX_vistaalerting", id: false, force: :cascade do |t|
  # end
  #
  # create_table "AUX_vistaconsumo", id: false, force: :cascade do |t|
  # end
  #
  # create_table "AUX_vistalabels", id: false, force: :cascade do |t|
  # end
  #
  # create_table "AUX_vmultisededatos", id: false, force: :cascade do |t|
  # end
  #
  # create_table "AUX_vprioridadsede", id: false, force: :cascade do |t|
  # end
  #
  # create_table "AXL_CallingSearchSpace", id: false, force: :cascade do |t|
  # end
  #
  # create_table "AXL_DeviceOptions", id: false, force: :cascade do |t|
  # end
  #
  # create_table "AXL_DevicePool", id: false, force: :cascade do |t|
  # end
  #
  # create_table "AXL_DevicePool_bck160211", id: false, force: :cascade do |t|
  # end
  #
  # create_table "AXL_Devices", id: false, force: :cascade do |t|
  # end
  #
  # create_table "AXL_DevicesDialRules", id: false, force: :cascade do |t|
  # end
  #
  # create_table "AXL_EndPoints", id: false, force: :cascade do |t|
  # end
  #
  # add_index "AXL_EndPoints", ["cExt"], name: "IX_AXL_Ext"
  #
  # create_table "AXL_EndUser", id: false, force: :cascade do |t|
  # end
  #
  # create_table "AXL_EndUserDevice", id: false, force: :cascade do |t|
  # end
  #
  # create_table "AXL_EndUserNumplan", id: false, force: :cascade do |t|
  # end
  #
  # create_table "AXL_EndUserNumplanDevice", id: false, force: :cascade do |t|
  # end
  #
  # create_table "AXL_ForwardAll", id: false, force: :cascade do |t|
  # end
  #
  # add_index "AXL_ForwardAll", ["cNumCorto", "cNumDesvio"], name: "IX_AXL_ForwardAll"
  #
  # create_table "AXL_ForwardBusy", id: false, force: :cascade do |t|
  # end
  #
  # add_index "AXL_ForwardBusy", ["cNumCorto", "cBusyInternal"], name: "IX_AXL_ForwardBusy"
  #
  # create_table "AXL_JTapiCandadoControlledDevices", id: false, force: :cascade do |t|
  # end
  #
  # create_table "AXL_LineGroup", id: false, force: :cascade do |t|
  # end
  #
  # create_table "AXL_Modules", id: false, force: :cascade do |t|
  # end
  #
  # create_table "AXL_NumPlan", id: false, force: :cascade do |t|
  # end
  #
  # add_index "AXL_NumPlan", ["cDeviceName"], name: "IX_AXL_NumPlan_Device"
  # add_index "AXL_NumPlan", ["cExt"], name: "IX_AXL_NumPlan_Ext"
  #
  # create_table "AXL_NumPlan2", id: false, force: :cascade do |t|
  # end
  #
  # create_table "AXL_NumplanDevice", id: false, force: :cascade do |t|
  # end
  #
  # add_index "AXL_NumplanDevice", ["cDeviceName"], name: "IX_AXL_NumplanDevice_DeviceName"
  # add_index "AXL_NumplanDevice", ["cExt"], name: "IX_AXL_NumplanDevice_Ext"
  #
  # create_table "AXL_PickupGroups", id: false, force: :cascade do |t|
  # end
  #
  # add_index "AXL_PickupGroups", ["nNumCorto"], name: "IX_AXL_PickupGroups_nNumCorto"
  #
  # create_table "AXL_RoutePlan", id: false, force: :cascade do |t|
  # end
  #
  # add_index "AXL_RoutePlan", ["cExt"], name: "IX_AXL_RoutePlan"
  #
  # create_table "AXL_UnassignedDNs", id: false, force: :cascade do |t|
  # end
  #
  # create_table "AuxDiscoveredEDR", id: false, force: :cascade do |t|
  # end
  #
  # add_index "AuxDiscoveredEDR", ["cDeviceID"], name: "IX_AuxDiscoveredEDR_DeviceId"
  # add_index "AuxDiscoveredEDR", ["cNombre"], name: "IX_AuxDiscoveredEDR_Nombre"
  #
  # create_table "BCK_AltaLineasFacturacion", id: false, force: :cascade do |t|
  # end
  #
  # create_table "CATEGORIAS_AHORRO", id: false, force: :cascade do |t|
  # end
  #
  # create_table "COM_AUTORIZACION", id: false, force: :cascade do |t|
  # end
  #
  # create_table "COM_AUTORIZADOS_cuarentena", id: false, force: :cascade do |t|
  # end
  #
  # create_table "COM_CENTROSCOSTE", id: false, force: :cascade do |t|
  # end
  #
  # create_table "COM_CENTRO_TRABAJO", id: false, force: :cascade do |t|
  # end
  #
  # add_index "COM_CENTRO_TRABAJO", ["CENTRO_TRABAJO"], name: "IX_COM_CENTRO_TRABAJO_CENTRO_TRABAJO"
  #
  # create_table "COM_DEPENDENCIAS", id: false, force: :cascade do |t|
  # end
  #
  # create_table "COM_DNI_INEX", id: false, force: :cascade do |t|
  # end
  #
  # create_table "COM_ICC_IMEI", id: false, force: :cascade do |t|
  # end
  #
  # create_table "COM_IDENTIDY", id: false, force: :cascade do |t|
  # end
  #
  # create_table "COM_IDENTIDY_JMGB5", id: false, force: :cascade do |t|
  # end
  #
  # create_table "COM_IMEI_ICC", id: false, force: :cascade do |t|
  # end
  #
  # create_table "COM_PLANTILLA", id: false, force: :cascade do |t|
  # end
  #
  # create_table "COM_RPV", id: false, force: :cascade do |t|
  # end
  #
  # create_table "COM_SUBTIPOS", id: false, force: :cascade do |t|
  # end
  #
  # create_table "COM_TELEFONOS_PERSONAS", id: false, force: :cascade do |t|
  # end
  #
  # create_table "COM_TELEFONOS_PLANTILLA", id: false, force: :cascade do |t|
  # end
  #
  # add_index "COM_TELEFONOS_PLANTILLA", ["DISPOSITIVO", "ID_UNIDAD", "TIP_DISPOSITIVO"], name: "_dta_index_COM_TELEFONOS_PLANTILLA_17_2032114380__K4_K1_K5_3"
  # add_index "COM_TELEFONOS_PLANTILLA", ["DISPOSITIVO"], name: "_dta_index_COM_TELEFONOS_PLANTILLA_17_2032114380__K4"
  # add_index "COM_TELEFONOS_PLANTILLA", ["ID_PUESTO"], name: "IX_COM_TELEFONOS_PLANTILLA_id_puesto"
  # add_index "COM_TELEFONOS_PLANTILLA", ["NUMPER", "ID_PUESTO", "DISPOSITIVO"], name: "IX_COM_TELEFONOS_PLANTILLA"
  #
  # create_table "COM_TELEFONOS_UNIDADES", id: false, force: :cascade do |t|
  # end
  #
  # add_index "COM_TELEFONOS_UNIDADES", ["DISPOSITIVO"], name: "_dta_index_COM_TELEFONOS_UNIDADES_17_2048114437__K2"
  # add_index "COM_TELEFONOS_UNIDADES", ["ID_UNIDAD", "TIP_DISPOSITIVO"], name: "_dta_index_COM_TELEFONOS_UNIDADES_17_2048114437__K1_K3_2"
  #
  # create_table "COM_TERMINALES", id: false, force: :cascade do |t|
  # end
  #
  # create_table "COM_USUARIOS_AYRE", id: false, force: :cascade do |t|
  # end
  #
  # add_index "COM_USUARIOS_AYRE", ["NUMPER"], name: "ABD_IX1"
  #
  # create_table "COM_User_sistemas", id: false, force: :cascade do |t|
  # end
  #
  # create_table "CSQ_DetailedCallAgent", id: false, force: :cascade do |t|
  # end
  #
  # create_table "CSQ_DetailedCallAgent_tmp", id: false, force: :cascade do |t|
  # end
  #
  # create_table "CSQ_Festivos", id: false, force: :cascade do |t|
  # end
  #
  # create_table "CSQ_SicamVip", id: false, force: :cascade do |t|
  # end
  #
  # create_table "CUOMUnknownRejected", id: false, force: :cascade do |t|
  # end
  #
  # create_table "CUOM_AllPhonesReport", id: false, force: :cascade do |t|
  # end
  #
  # add_index "CUOM_AllPhonesReport", ["Extn"], name: "IX_CUOM_AllPhonesReport_ext"
  # add_index "CUOM_AllPhonesReport", ["MACAddress"], name: "IX_CUOM_AllPhonesReport_mac"
  #
  # create_table "CactiUrls", id: false, force: :cascade do |t|
  # end
  #
  # create_table "Checklico_10025", id: false, force: :cascade do |t|
  # end
  #
  # create_table "DML_LOG", id: false, force: :cascade do |t|
  # end
  #
  # add_index "DML_LOG", ["App"], name: "IX_BY_APP"
  # add_index "DML_LOG", ["DB_User"], name: "IX_BY_USER"
  # add_index "DML_LOG", ["PostTime"], name: "IX_BY_TIME"
  #
  # create_table "DefragmentIndexes", id: false, force: :cascade do |t|
  # end
  #
  # create_table "GraficasCentralitas", id: false, force: :cascade do |t|
  # end
  #
  # create_table "GraficasChecklico", id: false, force: :cascade do |t|
  # end
  #
  # create_table "GraficasDispositivosAtributos", id: false, force: :cascade do |t|
  # end
  #
  # create_table "GraficasLinDatosTipo", id: false, force: :cascade do |t|
  # end
  #
  # create_table "GraficasLineas", id: false, force: :cascade do |t|
  # end
  #
  # create_table "GraficasLineasSalidaExt", id: false, force: :cascade do |t|
  # end
  #
  # create_table "GraficasModelos", id: false, force: :cascade do |t|
  # end
  #
  # create_table "GraficasVLAN", id: false, force: :cascade do |t|
  # end
  #
  # create_table "HDeviceCUCM", id: false, force: :cascade do |t|
  # end
  #
  # create_table "HLinFijosPuestos", id: false, force: :cascade do |t|
  # end
  #
  # create_table "HLinFijosUnidades", id: false, force: :cascade do |t|
  # end
  #
  # create_table "IP_VoiceQoS", id: false, force: :cascade do |t|
  # end
  #
  # add_index "IP_VoiceQoS", ["dFechaInicio", "sIP", "sTipo", "cMAC", "nNumCorto"], name: "IX_LlamadaUnica", unique: true
  #
  # create_table "IdentificadoresLibres4Lineas", id: false, force: :cascade do |t|
  # end
  #
  # create_table "Informes001", id: false, force: :cascade do |t|
  # end
  #
  # create_table "Informes002", id: false, force: :cascade do |t|
  # end
  #
  # add_index "Informes002", ["COD_AREA"], name: "IX_Informes002_Area"
  # add_index "Informes002", ["COD_UNIDAD"], name: "IX_Informes002_Unidad"
  # add_index "Informes002", ["LINEA"], name: "IX_Informes002_Linea"
  # add_index "Informes002", ["nOrder"], name: "IX_Informes002_Orden"
  #
  # create_table "MAX_CONSUMO_MENSUAL", id: false, force: :cascade do |t|
  # end
  #
  # create_table "MonitorCandado", id: false, force: :cascade do |t|
  # end
  #
  # create_table "NET_CatalogoRed", id: false, force: :cascade do |t|
  # end
  #
  # create_table "NET_Componentes", id: false, force: :cascade do |t|
  # end
  #
  # create_table "NET_DescargaEDR", id: false, force: :cascade do |t|
  # end
  #
  # create_table "NET_ElectronicaRed", id: false, force: :cascade do |t|
  # end
  #
  # create_table "NET_InterfaceStatus", id: false, force: :cascade do |t|
  # end
  #
  # add_index "NET_InterfaceStatus", ["cDireccionIP"], name: "IX_NET_Istatus_DirIP"
  # add_index "NET_InterfaceStatus", ["dFchControl"], name: "IX_NET_Istatus_FchControl"
  #
  # create_table "NET_Inventario", id: false, force: :cascade do |t|
  # end
  #
  # create_table "NET_PuertosVlanes", id: false, force: :cascade do |t|
  # end
  #
  # create_table "NET_VersionesEDR", id: false, force: :cascade do |t|
  # end
  #
  # create_table "NET_VlanBrief", id: false, force: :cascade do |t|
  # end
  #
  # create_table "OLD_TModelosTerminales", id: false, force: :cascade do |t|
  # end
  #
  # add_index "OLD_TModelosTerminales", ["Modelo"], name: "IX_TModelosTerminales", unique: true
  #
  # create_table "OLD_TTerminalesMovil", id: false, force: :cascade do |t|
  # end
  #
  # create_table "ObjetosBDBackup", id: false, force: :cascade do |t|
  # end
  #
  # create_table "PLAN_DEPENDENCIAS", id: false, force: :cascade do |t|
  # end
  #
  # add_index "PLAN_DEPENDENCIAS", ["ID_UNIDAD"], name: "IX_PLAN_DEPENDENCIAS_ID_UNIDAD"
  #
  # create_table "PLAN_PLANTILLA", id: false, force: :cascade do |t|
  # end
  #
  # add_index "PLAN_PLANTILLA", ["NUMPER"], name: "IX_PLAN_PLANTILLA_NUMPER"
  # add_index "PLAN_PLANTILLA", ["NUM_DOCUMEN_PER"], name: "IX_PLAN_PLANTILLA_NUM_DOCUMEN_PER"
  #
  # create_table "PlanTMP", id: false, force: :cascade do |t|
  # end
  #
  # create_table "Query", id: false, force: :cascade do |t|
  # end
  #
  # create_table "RangosGrandes", id: false, force: :cascade do |t|
  # end
  #
  # create_table "Rel_Usuarios", id: false, force: :cascade do |t|
  # end
  #
  # create_table "SD_TiposAcometidas", id: false, force: :cascade do |t|
  # end
  #
  # create_table "SD_TiposCableadoV", id: false, force: :cascade do |t|
  # end
  #
  # create_table "SD_Ubicaciones", id: false, force: :cascade do |t|
  # end
  #
  # create_table "SD_Visitas", id: false, force: :cascade do |t|
  # end
  #
  # create_table "SICAM_DIRECCIONES", id: false, force: :cascade do |t|
  # end
  #
  # create_table "SICAM_GESLICO_LISTA_SERVICIO_EXTENDIDO", id: false, force: :cascade do |t|
  # end
  #
  # create_table "SICAM_GESLICO_TICKET_ACTUACIONES", id: false, force: :cascade do |t|
  # end
  #
  # create_table "SICAM_PERSONAS_GRUPOS", id: false, force: :cascade do |t|
  # end
  #
  # create_table "SMS", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TAcronimosSedeEDR", id: false, force: :cascade do |t|
  # end
  #
  # add_index "TAcronimosSedeEDR", ["cCodigo"], name: "IX_TAcronimosSedeEDR", unique: true
  #
  # create_table "TAfariaAplicacionesInstaladas", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TAfariaAplicacionesInstaladasBackup", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TAfariaAplicaciones_old", id: false, force: :cascade do |t|
  # end
  #
  # add_index "TAfariaAplicaciones_old", ["cSwName", "cSwVersion"], name: "IX_TAfariaAplicaciones", unique: true
  #
  # create_table "TAfariaAppBlackList", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TAfariaAppWhiteList", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TAfariaBluetooth", id: false, force: :cascade do |t|
  # end
  #
  # add_index "TAfariaBluetooth", ["nIdEntorno", "nIdGrupo"], name: "IX_TAfariaBluetooth", unique: true
  #
  # create_table "TAfariaCanales", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TAfariaEntornos", id: false, force: :cascade do |t|
  # end
  #
  # add_index "TAfariaEntornos", ["cEntorno"], name: "IX_TAfariaEntornos", unique: true
  #
  # create_table "TAfariaGrupoAplicacion", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TAfariaGrupos", id: false, force: :cascade do |t|
  # end
  #
  # add_index "TAfariaGrupos", ["cGrupo"], name: "IX_TAfariaGrupos", unique: true
  #
  # create_table "TAfariaLocalizacion", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TAfariaRestricciones", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TAfariaRoaming", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TAfariaSecurityPwd", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TAfariaWifi", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TAfariaWifiInfo", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TAlbaranMoviles", id: false, force: :cascade do |t|
  # end
  #
  # add_index "TAlbaranMoviles", ["nCodActuacion"], name: "IX_CodActuacion"
  #
  # create_table "TAlbaranesDigitalizacion", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TAlbaranesDigitalizados", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TAlmacenMoviles", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TAlmacenTerminalesMovil_sinUso", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TAnchoBanda", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TAnillosONO", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TBL_SHOWCONTIG", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TBajasDePersonas", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TBajasDePuestos", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TBajasDeUnidades", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TCCoste", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TCDR", id: false, force: :cascade do |t|
  # end
  #
  # add_index "TCDR", ["pkId", "IdCall", "IdCallManager"], name: "IX_TCDR"
  #
  # create_table "TCDR_bck160114", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TCMDB_TLinMoviles", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TCMR", id: false, force: :cascade do |t|
  # end
  #
  # add_index "TCMR", ["pkId", "dFecha"], name: "IDX_TCMR"
  #
  # create_table "TCMR_bck160114", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TCapability_CallManager", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TCatalogoFacturacion", id: false, force: :cascade do |t|
  # end
  #
  # add_index "TCatalogoFacturacion", ["cCodigo"], name: "IX_TCatalogoFacturacion", unique: true
  #
  # create_table "TCatalogoRed", id: false, force: :cascade do |t|
  # end
  #
  # add_index "TCatalogoRed", ["cFabricante", "cModelo"], name: "IX_FabricanteModelo", unique: true
  #
  # create_table "TCatalogoSLAs", id: false, force: :cascade do |t|
  # end
  #
  # add_index "TCatalogoSLAs", ["cCodigo"], name: "IX_TCatalogoSLAs", unique: true
  #
  # create_table "TCategoriaRestringida", id: false, force: :cascade do |t|
  # end
  #
  # add_index "TCategoriaRestringida", ["dFechaEnvioCGP", "nLinea", "nNumCorto", "nRai", "dFechaAviso"], name: "_dta_index_TCategoriaRestringida_17_1299587768__K8_K1_K2_K6_K7_4_5_11"
  #
  # create_table "TCategoriaRestringida_aux", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TCategoriaTerminales", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TCentralitas", id: false, force: :cascade do |t|
  # end
  #
  # add_index "TCentralitas", ["nCodCentralita", "nCodSede"], name: "_dta_index_TCentralitas_17_142675606__K1_K2"
  # add_index "TCentralitas", ["nCodSede"], name: "IX_TCentralitas_CodSede"
  # add_index "TCentralitas", ["nCodTipoCentralita"], name: "IX_TCentralitas_nCodTipoCentralita"
  #
  # create_table "TChecklico", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TCiscoVLanes", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TClasesTarjetas", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TCoberturasTeoricas", id: false, force: :cascade do |t|
  # end
  #
  # add_index "TCoberturasTeoricas", ["Asignacion", "VIP", "nCodUso"], name: "IX_TCoberturasTeoricas"
  # add_index "TCoberturasTeoricas", ["nCodUso"], name: "IX_TCoberturasTeoricas_1"
  #
  # create_table "TColectorTACACS", id: false, force: :cascade do |t|
  # end
  #
  # add_index "TColectorTACACS", ["cIP"], name: "IX_TColectorTACACS_IP"
  # add_index "TColectorTACACS", ["dFchControl"], name: "IX_TColectorTACACS_FchControl"
  #
  # create_table "TColectorTACACS_bck160212", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TComponentesRed", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TComponentesRedFacturacion", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TComponentesRedFacturacionVersiones", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TConceptosFacturas", id: false, force: :cascade do |t|
  # end
  #
  # add_index "TConceptosFacturas", ["cDenominacion"], name: "IX_TConceptosFacturas"
  #
  # create_table "TConsumosFijosAYRE", id: false, force: :cascade do |t|
  # end
  #
  # add_index "TConsumosFijosAYRE", ["nLinea", "cApellido1", "cApellido2", "cDNI", "cNombre", "nCodUni", "dFecha", "nEmpNumPer", "nCodUniPadre"], name: "IX_TConsumosFijosAYRE"
  #
  # create_table "TConsumosMovilesAYRE", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TContajes", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TCorreosUGD", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TDatosDetalleLineaFacturaVersiones", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TDatosFacturaDetalleVersiones", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TDatosFacturaVersiones", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TDeviceNeighbour", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TDeviceProfile", id: false, force: :cascade do |t|
  # end
  #
  # add_index "TDeviceProfile", ["cDeviceName"], name: "IX_TDeviceProfile", unique: true
  #
  # create_table "TDispositivosIP", id: false, force: :cascade do |t|
  # end
  #
  # add_index "TDispositivosIP", ["cIP"], name: "IX_TDispositivosIP_IP"
  # add_index "TDispositivosIP", ["cMAC"], name: "IX_TDispositivosIP_MAC", unique: true
  # add_index "TDispositivosIP", ["cSerie"], name: "IX_cSerie"
  # add_index "TDispositivosIP", ["nCodEstado"], name: "IX_TDispositivosIP_249370"
  # add_index "TDispositivosIP", ["nCodEstado"], name: "IX_TDispositivosIP_317333"
  #
  # create_table "TDispositivosIPFacturacion", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TDispositivosIPFacturacionVersiones", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TDispositivosIPPuestosPersonasHistorico", id: false, force: :cascade do |t|
  # end
  #
  # add_index "TDispositivosIPPuestosPersonasHistorico", ["cDNI"], name: "IX_TDispositivosIPPuestosPersonasHistorico_DNI"
  # add_index "TDispositivosIPPuestosPersonasHistorico", ["cMAC"], name: "IX_TDispositivosIPPuestosPersonasHistorico_MAC"
  # add_index "TDispositivosIPPuestosPersonasHistorico", ["nNumPer"], name: "IX_TDispositivosIPPuestosPersonasHistorico_NumPer"
  # add_index "TDispositivosIPPuestosPersonasHistorico", ["nNumPuesto"], name: "IX_TDispositivosIPPuestosPersonasHistorico_NumPuesto"
  #
  # create_table "TDispositivosResumen", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TDistritos", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TEDRVLAN", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TEdificios", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TElectronicaRed", id: false, force: :cascade do |t|
  # end
  #
  # add_index "TElectronicaRed", ["cIPGestion"], name: "IX_TElectronicaRed_IpGestion"
  # add_index "TElectronicaRed", ["cNombre"], name: "IX_TElectronicaRed_Nombre", unique: true
  #
  # create_table "TEndPoints", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TEnlaces", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TEnviosCorreo", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TEstadisticaProyectoIP", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TEstadisticasSedeProyectoIP", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TEstadoDispositivosIP", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TEstadoTarificador", id: false, force: :cascade do |t|
  # end
  #
  # add_index "TEstadoTarificador", ["dFchControl"], name: "IX_TEstadoTarificador_FchControl", unique: true
  #
  # create_table "TEstadoTerminalesMovil", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TEstadosCentralita", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TEstadosLinea", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TEstadosSedes", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TFactelResumen1", id: false, force: :cascade do |t|
  # end
  #
  # add_index "TFactelResumen1", ["nLinea", "dFecha"], name: "IX_TFactelResumen1_32070"
  # add_index "TFactelResumen1", ["nNumCorto"], name: "IX_TFactelResumen_nNumCorto"
  #
  # create_table "TFactelResumen2", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TFactelResumenDetalle", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TFactelResumenTrafico", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TFacturacion2015", id: false, force: :cascade do |t|
  # end
  #
  # add_index "TFacturacion2015", ["CODUNI", "IDAREA"], name: "IX_TFacturacion2015_AREA_UNIDAD"
  # add_index "TFacturacion2015", ["LINEA"], name: "IX_TFacturacion2015_LINEA"
  # add_index "TFacturacion2015", ["MAC"], name: "IX_TFacturacion2015_MAC"
  # add_index "TFacturacion2015", ["SEDE", "CAMPUS"], name: "IX_TFacturacion2015_CAMPUS_SEDE"
  #
  # create_table "TFacturacionFactel2015", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TFacturacionSofia2015", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TFacturasMovilesConsumos", id: false, force: :cascade do |t|
  # end
  #
  # add_index "TFacturasMovilesConsumos", ["dFecha"], name: "IX_TFacturasMovilesConsumos_dFecha"
  # add_index "TFacturasMovilesConsumos", ["nLinea", "nNumCorto", "cTipoContrato"], name: "IX_TFacturasMovilesConsumos_122236"
  # add_index "TFacturasMovilesConsumos", ["nLinea", "nNumCorto", "cTipoContrato"], name: "IX_TFacturasMovilesConsumos_43210"
  #
  # create_table "TFacturasMovilesConsumosEditadas", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TFacturasMovilesConsumosRegular", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TFacturasMovilesCuotas", id: false, force: :cascade do |t|
  # end
  #
  # add_index "TFacturasMovilesCuotas", ["nLinea", "dFechaFactura"], name: "IX_TFacturasMovilesCuotas_42510"
  #
  # create_table "TFacturasMovilesCuotas201303", id: false, force: :cascade do |t|
  # end
  #
  # add_index "TFacturasMovilesCuotas201303", ["nLinea"], name: "IX_TFacturasMovilesCuotas201303_418700"
  #
  # create_table "TFacturasMovilesDescuentos", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TFacturasMovilesIbercom", id: false, force: :cascade do |t|
  # end
  #
  # add_index "TFacturasMovilesIbercom", ["nLinea", "dFecha"], name: "IX_TFacturasMovilesIbercom_82419"
  #
  # create_table "TFacturasMovilesResumen", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TFacturasMovilesTarifas", id: false, force: :cascade do |t|
  # end
  #
  # add_index "TFacturasMovilesTarifas", ["cCodOperador"], name: "IX_CodOperador", unique: true
  #
  # create_table "TFacturasMovilesVarios", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TFechasCargas", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TGSalto", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TGastelBpTrunk", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TGastelResumen1", id: false, force: :cascade do |t|
  # end
  #
  # add_index "TGastelResumen1", ["nLinea", "dFecha"], name: "IX_TGastelResumen1_47306"
  #
  # create_table "TGastelResumen2", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TGastelTrunking", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TGeslicoHistoricos", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TGraficasControlAlmacenTOIP", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TGruposPares", id: false, force: :cascade do |t|
  # end
  #
  # add_index "TGruposPares", ["nEquipo", "nPosicion", "nMagazin", "nLIM", "nCodCentralita"], name: "_dta_index_TGruposPares_17_1181247263__K7_K6_K5_K4_K3_2"
  #
  # create_table "TGruposTACACS", id: false, force: :cascade do |t|
  # end
  #
  # add_index "TGruposTACACS", ["nId"], name: "IX_TGruposTACACS", unique: true
  #
  # create_table "THardware", id: false, force: :cascade do |t|
  # end
  #
  # add_index "THardware", ["cHW", "cROF"], name: "IX_HW_ROF"
  # add_index "THardware", ["cNombre"], name: "IX_NombreHW", unique: true
  #
  # create_table "THistoricoActuaciones", id: false, force: :cascade do |t|
  # end
  #
  # add_index "THistoricoActuaciones", ["cUsuarioAlta", "dFchAlta", "nCodCentralita"], name: "IX_THistoricoActuaciones", unique: true
  #
  # create_table "THistoricoActuacionesLineas", id: false, force: :cascade do |t|
  # end
  #
  # add_index "THistoricoActuacionesLineas", ["cUsuarioAlta"], name: "IX_THistoricoActuacionesLineas_58663"
  # add_index "THistoricoActuacionesLineas", ["nLinea"], name: "IX_THistoricoActuacionesLineas_Linea"
  #
  # create_table "THistoricoAsignaciones", id: false, force: :cascade do |t|
  # end
  #
  # add_index "THistoricoAsignaciones", ["nLinea", "nCodUni", "dFchBajaDir"], name: "IX_THistoricoAsignaciones"
  #
  # create_table "THistoricoDispositivosIP", id: false, force: :cascade do |t|
  # end
  #
  # add_index "THistoricoDispositivosIP", ["cMAC"], name: "IX_THistoricoDispositivosIP_cMAC"
  #
  # create_table "THistoricoFicheroMovistar", id: false, force: :cascade do |t|
  # end
  #
  # add_index "THistoricoFicheroMovistar", ["cICC"], name: "IX_THistoricoFicheroMovistar_ICC"
  # add_index "THistoricoFicheroMovistar", ["cICC1"], name: "IX_THistoricoFicheroMovistar_ICC1"
  # add_index "THistoricoFicheroMovistar", ["cICC2"], name: "IX_THistoricoFicheroMovistar_ICC2"
  # add_index "THistoricoFicheroMovistar", ["cICC3"], name: "IX_THistoricoFicheroMovistar_ICC3"
  #
  # create_table "THistoricoListasBlancas", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TIPs_TEORICAS", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TInformeAsignacion_v1", id: false, force: :cascade do |t|
  # end
  #
  # add_index "TInformeAsignacion_v1", ["cDNI"], name: "IX_TInformeAsignacion_v1_DNI"
  #
  # create_table "TInformesSQL", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TInformesSQLSolicitudes", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TIntentosColectorCDP", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TJefeSecretaria", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TJefes", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TJefesUnidad", id: false, force: :cascade do |t|
  # end
  #
  # add_index "TJefesUnidad", ["nJefe"], name: "IX_nJefe"
  #
  # create_table "TLinDatos", id: false, force: :cascade do |t|
  # end
  #
  # add_index "TLinDatos", ["nLinea", "nCodLinDatos"], name: "IX_TLinDatos_nLinea_nCodLinDatos"
  # add_index "TLinDatos", ["nLinea"], name: "IX_TLinDatos_nLinea"
  #
  # create_table "TLinDatosVPNVLan", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TLinFijos", id: false, force: :cascade do |t|
  # end
  #
  # add_index "TLinFijos", ["nLinea", "nCodCoberturaAutorizada"], name: "_dta_index_TLinFijos_17_136439610__K1_K9"
  # add_index "TLinFijos", ["nLineaPrincipal"], name: "IX_nLineaPrincipal"
  #
  # create_table "TLinFijosDeviceProfile", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TLinFijosDispositivosIP", id: false, force: :cascade do |t|
  # end
  #
  # add_index "TLinFijosDispositivosIP", ["nCodDispositivosIP", "nTecla"], name: "IX_TLinFijosDispositivosIP_3397"
  #
  # create_table "TLinFijosPuestos", id: false, force: :cascade do |t|
  # end
  #
  # add_index "TLinFijosPuestos", ["nCodPto"], name: "ind_puesto"
  # add_index "TLinFijosPuestos", ["nLineaFija", "nCodPto", "bPrincipal"], name: "_dta_index_TLinFijosPuestos_17_894626230__K1_K2_K3"
  # add_index "TLinFijosPuestos", ["nLineaFija"], name: "ind_linea"
  #
  # create_table "TLinFijosPuestosPersonasHistorico", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TLinFijosUnidades", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TLinMoviles", id: false, force: :cascade do |t|
  # end
  #
  # add_index "TLinMoviles", ["cDNI"], name: "Ind_dni"
  # add_index "TLinMoviles", ["nCodTipMovil"], name: "Ind_tipomov"
  #
  # create_table "TLinMovilesTarifas", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TLineas", id: false, force: :cascade do |t|
  # end
  #
  # add_index "TLineas", ["cCodTipLinea"], name: "IX_TipoLinea"
  # add_index "TLineas", ["cNumCorto"], name: "IX_TLineas_cNumCorto"
  # add_index "TLineas", ["cNumero"], name: "IX_TLineas_cNumero"
  # add_index "TLineas", ["nCodEstLin"], name: "IX_TLineas_1416391"
  # add_index "TLineas", ["nCodEstLin"], name: "IX_TLineas_2261479"
  # add_index "TLineas", ["nCodEstLin"], name: "IX_TLineas_631988"
  # add_index "TLineas", ["nCodUni"], name: "IX_TLineas_nCodUni"
  # add_index "TLineas", ["nNumCorto"], name: "IX_NumCorto"
  # add_index "TLineas", ["nullbusterCorto"], name: "IX_TLineas_nullbusterNumCorto", unique: true
  # add_index "TLineas", ["nullbusterNumero"], name: "IX_TLineas_nullbusterNumero", unique: true
  #
  # create_table "TLineasAccesos", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TLineasFacturacion", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TLineasFacturacionVersiones", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TListaAutorizados", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TListaAutorizadosPerfil", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TLiteralesAnexos", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TLog", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TLogCargas", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TLogErrores", id: false, force: :cascade do |t|
  # end
  #
  # add_index "TLogErrores", ["dFchControl"], name: "IX_TLogErroresFchControl"
  #
  # create_table "TLogSqlDetalleGastel", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TLog_bck2010", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TLog_bck2011", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TLog_bck2012", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TLog_bck2013", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TLog_bck2014", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TLotes", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TMDs", id: false, force: :cascade do |t|
  # end
  #
  # add_index "TMDs", ["nLIM"], name: "IX_TMDs_1034440"
  # add_index "TMDs", ["nLinea", "nEquipo", "nPosicion", "nMagazin", "nLIM", "nCodCentralita"], name: "_dta_index_TMDs_17_57103294__K13_K6_K5_K4_K3_K2"
  #
  # create_table "TMP_PERSONAS", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TMacsCiscoWork", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TMacs_Fabricantes", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TMensajesMentes", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TMensajesMentesExternos", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TMentesSMS", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TMenuDiscovery", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TModelosFijos", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TModelosTerminales", id: false, force: :cascade do |t|
  # end
  #
  # add_index "TModelosTerminales", ["cMarca", "cModelo"], name: "IX_TModelosTerminales_new", unique: true
  #
  # create_table "TMovalmacenmovil", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TMovilesSedes", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TMovimientoTerminalMovil", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TMovimientosEDR", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TMultisede", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TNOrder", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TOpenDataInternas1", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TPasosCarga", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TPedidosMoviles", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TPerfilesMovil", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TPersonas", id: false, force: :cascade do |t|
  # end
  #
  # add_index "TPersonas", ["nempnumper"], name: "Ind_numper"
  # add_index "TPersonas", ["nemppuesto", "cDNI", "nempnivel"], name: "_dta_index_TPersonas_17_1154103152__K17_K1_K19"
  # add_index "TPersonas", ["nemppuesto"], name: "IX_EmpNumPuesto"
  #
  # create_table "TPersonasHistorico", id: false, force: :cascade do |t|
  # end
  #
  # add_index "TPersonasHistorico", ["cDNI"], name: "IX_TPersonasHistorico_cDNI"
  #
  # create_table "TPersonasPuestosHistorico", id: false, force: :cascade do |t|
  # end
  #
  # add_index "TPersonasPuestosHistorico", ["cDNI"], name: "IX_TPersonasPuestosHistorico_DNI"
  #
  # create_table "TPlanIMEI", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TProgramas", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TPuertos", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TPuestos", id: false, force: :cascade do |t|
  # end
  #
  # add_index "TPuestos", ["cCodAdc"], name: "Ind_codadc"
  # add_index "TPuestos", ["nEmpPuesto", "CoTipoPto"], name: "_dta_index_TPuestos_17_1821249543__K1_K3"
  #
  # create_table "TPuestosHistorico", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TRack", id: false, force: :cascade do |t|
  # end
  #
  # add_index "TRack", ["nCodSede"], name: "IX_nCodSede"
  #
  # create_table "TRais", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TRangoIPdisp", id: false, force: :cascade do |t|
  # end
  #
  # add_index "TRangoIPdisp", ["RED_ANUNCIADA"], name: "IX_RedAnunciada", unique: true
  #
  # create_table "TRisport", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TRutasAdjuntos", id: false, force: :cascade do |t|
  # end
  #
  # add_index "TRutasAdjuntos", ["cRaiz", "cRuta"], name: "IX_TRutasAdjuntos", unique: true
  #
  # create_table "TSedes", id: false, force: :cascade do |t|
  # end
  #
  # add_index "TSedes", ["cCodPostal"], name: "IX_CodigoPostal"
  #
  # create_table "TSedesAdjuntos", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TSedesGeolocalizacion", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TSedesUGD", id: false, force: :cascade do |t|
  # end
  #
  # add_index "TSedesUGD", ["nCodSede"], name: "IX_TSedesUGD"
  #
  # create_table "TServiciosMoviles", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TSiteCanales", id: false, force: :cascade do |t|
  # end
  #
  # add_index "TSiteCanales", ["nRx", "nTx"], name: "IX_TSiteCanales", unique: true
  #
  # create_table "TSiteEstacionesBase", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TSitePropietarios", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TSiteRadio", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TSiteRadioFrecs", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TSiteRadioMuliplex", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TSiteRadioOtroseq", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TSiteRadioRenalce", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TSiteRadioSalAlarm", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TSiteRadioTerceros", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TSiteRadioUps", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TSiteRadioacc", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TSiteRadioextencor", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TSiteRadiorectif", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TSiteToSite", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TSiteZonaEstacion", id: false, force: :cascade do |t|
  # end
  #
  # add_index "TSiteZonaEstacion", ["nCodSite", "nZona"], name: "IX_TSiteZonaEstacion", unique: true
  #
  # create_table "TSiteradioEntralarm", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TSites", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TSlots", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TSubTipoLinFijos", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TSuperTipoComponentes", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TSupervisiones", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TTTiposUbicacion", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TTarjetasMovil", id: false, force: :cascade do |t|
  # end
  #
  # add_index "TTarjetasMovil", ["nCodTipTarj"], name: "IX_nCodTipTarj"
  # add_index "TTarjetasMovil", ["nLineaMovil", "cICC"], name: "Ind_Linea_ICC", unique: true
  #
  # create_table "TTeclas", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TTerminalMovilLinea", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TTerminalPlanIMEI", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TTerminalesEstadoAlmacen", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TTerminalesInventario", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TTerminalesMovil", id: false, force: :cascade do |t|
  # end
  #
  # add_index "TTerminalesMovil", ["cImei"], name: "IX_TTerminalesMovil_IMEI_Unique"
  # add_index "TTerminalesMovil", ["nLinea"], name: "IX_TTerminalesMovil_nLinea"
  # add_index "TTerminalesMovil", ["nLinea2"], name: "IX_TTerminalesMovil_nLinea2"
  #
  # create_table "TTerminalesMovil_bck160127", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TTerminalesOS", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TTipoLinDatos", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TTipoLinFijos", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TTipoLinMoviles", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TTiposCentralita", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TTiposCobertura", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TTiposDocumento", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TTiposEdR", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TTiposLinea", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TTiposPersonas", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TTiposPuestos", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TTiposRed", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TTiposSites", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TTiposTarjetas", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TTiposTerminales", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TTiposUnidad", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TTracksMK775", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TTracksMK775Data", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TTraficoODS", id: false, force: :cascade do |t|
  # end
  #
  # add_index "TTraficoODS", ["cCodigo"], name: "IX_TTraficoODS_cCodigo"
  # add_index "TTraficoODS", ["cFechaHora"], name: "IX_TTraficoODS_cFechaHora"
  # add_index "TTraficoODS", ["cLinea"], name: "IX_TTraficoODS_cLinea"
  # add_index "TTraficoODS", ["cNombreFichero"], name: "IX_TTraficoODS_NombreFichero"
  #
  # create_table "TUnidades", id: false, force: :cascade do |t|
  # end
  #
  # add_index "TUnidades", ["nCodUniPadre"], name: "IX_TUnidades_CodUniPadre"
  # add_index "TUnidades", ["nIdArea"], name: "IX_TUnidades_idArea"
  #
  # create_table "TUnidadesHijos", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TUnidades_Organizativas", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TUsos", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TUsuarios", id: false, force: :cascade do |t|
  # end
  #
  # add_index "TUsuarios", ["cCodUsuario"], name: "IX_TUsuarios_cCodUsuario", unique: true
  #
  # create_table "TUsuariosGeslicoUsers", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TUsuariosProgramas", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TUsuariosUITEL", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TVLanes", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TVPNVLan", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TVariableFacturacion", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TVariableFacturacionL5DIC15", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TVariableFacturacionL5NOV15", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TZonasSICAM", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TetraAgendaISSI", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TetraAuthenticationFailure", id: false, force: :cascade do |t|
  # end
  #
  # add_index "TetraAuthenticationFailure", ["cOperatingUnit"], name: "IX_TetraAuthenticationFailure_ISSI"
  # add_index "TetraAuthenticationFailure", ["dFecha"], name: "IX_TetraAuthenticationFailure_FECHA"
  #
  # create_table "TetraAuthenticationRejected", id: false, force: :cascade do |t|
  # end
  #
  # add_index "TetraAuthenticationRejected", ["cOperatingUnit"], name: "IX_TetraAuthenticationRejected_ISSI"
  # add_index "TetraAuthenticationRejected", ["dFecha"], name: "IX_TetraAuthenticationRejected_FECHA"
  #
  # create_table "TetraAuthenticationSuccess", id: false, force: :cascade do |t|
  # end
  #
  # add_index "TetraAuthenticationSuccess", ["cOperatingUnit"], name: "IX_TetraAuthenticationSuccess_ISSI"
  # add_index "TetraAuthenticationSuccess", ["dFecha"], name: "IX_TetraAuthenticationSuccess_Fecha"
  #
  # create_table "TetraAuthenticationTimeout", id: false, force: :cascade do |t|
  # end
  #
  # add_index "TetraAuthenticationTimeout", ["cOperatingUnit"], name: "IX_TetraAuthenticationTimeout_ISSI"
  # add_index "TetraAuthenticationTimeout", ["dFecha"], name: "IX_TetraAuthenticationTimeout_FECHA"
  #
  # create_table "TetraAuxGSSIs", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TetraAuxISSI_AUC", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TetraAuxISSIs", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TetraCalls", id: false, force: :cascade do |t|
  # end
  #
  # add_index "TetraCalls", ["dFecha"], name: "IX_TetraCalls_Fecha"
  # add_index "TetraCalls", ["nCallId"], name: "IX_TetraCalls_IdCall"
  # add_index "TetraCalls", ["nCaller"], name: "IX_TetraCalls_ISSI"
  # add_index "TetraCalls", ["nTarget"], name: "IX_TetraCalls_Target"
  #
  # create_table "TetraCalls1m", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TetraCalls24h", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TetraCalls7d", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TetraCallsGSSI1m", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TetraCallsGSSI24h", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TetraCallsGSSI7d", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TetraCallsTMP", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TetraCodesFAC", id: false, force: :cascade do |t|
  # end
  #
  # add_index "TetraCodesFAC", ["cBinCode"], name: "IX_TetraCodesFAC_BinCode", unique: true
  # add_index "TetraCodesFAC", ["cBinCode"], name: "IX_TetraCodesFAC_HexCode", unique: true
  #
  # create_table "TetraConsolaISSIGSSI", id: false, force: :cascade do |t|
  # end
  #
  # add_index "TetraConsolaISSIGSSI", ["nISSI"], name: "IX_TetraConsolaISSIGSSI_ISSI", unique: true
  # add_index "TetraConsolaISSIGSSI", ["nIdConsola", "nGSSI"], name: "IX_TetraConsolaISSIGSSI_ConsolaGSSI", unique: true
  #
  # create_table "TetraConsolaISSIGSSI_BCK160411", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TetraConsolaISSIGSSI_BCK160519", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TetraConsolas", id: false, force: :cascade do |t|
  # end
  #
  # add_index "TetraConsolas", ["cNombre", "cZona"], name: "IX_TetraConsolas", unique: true
  #
  # create_table "TetraConsolas_bck160413", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TetraFlotas", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TetraGSSI_borrar", id: false, force: :cascade do |t|
  # end
  #
  # add_index "TetraGSSI_borrar", ["cAlias"], name: "IX_TetraGSSI_TalkgroupAlias", unique: true
  # add_index "TetraGSSI_borrar", ["nId"], name: "IX_TetraGSSI_TalkgroupID", unique: true
  # add_index "TetraGSSI_borrar", ["nRestId"], name: "IX_TetraGSSI_nRestId"
  #
  # create_table "TetraHistoricoTerminalesRadio", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TetraLocationRegistration", id: false, force: :cascade do |t|
  # end
  #
  # add_index "TetraLocationRegistration", ["cOperatingUnit"], name: "IX_TetraLocationRegistration_ISSI"
  # add_index "TetraLocationRegistration", ["dFecha"], name: "IX_TetraLocationRegistration_Fecha"
  #
  # create_table "TetraModelosRadio", id: false, force: :cascade do |t|
  # end
  #
  # add_index "TetraModelosRadio", ["cMarca", "cModelo"], name: "IX_TetraModelosRadio", unique: true
  #
  # create_table "TetraPlanGSSIs", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TetraPlanGSSIsB", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TetraPlanISSIs", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TetraTerminalesRadio", id: false, force: :cascade do |t|
  # end
  #
  # add_index "TetraTerminalesRadio", ["cNumeroSerie"], name: "IX_TetraTerminalesRadioNumSerie", unique: true
  # add_index "TetraTerminalesRadio", ["cTEI"], name: "IX_TetraTerminalesRadio_TEI"
  # add_index "TetraTerminalesRadio", ["nId"], name: "IX_TetraTerminalesRadioISSI", unique: true
  # add_index "TetraTerminalesRadio", ["nullBusterISSI"], name: "IX_TetraTerminalesRadio_nullBusterISSI", unique: true
  # add_index "TetraTerminalesRadio", ["nullbusterTEI"], name: "IX_TetraTerminalesRadio_nullBusterTEI", unique: true
  #
  # create_table "TetraTipoISSI", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TetraTramasIgnorada", id: false, force: :cascade do |t|
  # end
  #
  # create_table "TetraUnitRegistration", id: false, force: :cascade do |t|
  # end
  #
  # add_index "TetraUnitRegistration", ["cOperatingUnit"], name: "IX_TetraUnitRegistration_ISSI"
  # add_index "TetraUnitRegistration", ["dFecha"], name: "IX_TetraUnitRegistration_FECHA"
  #
  # create_table "Tsgtidarea", id: false, force: :cascade do |t|
  # end
  #
  # create_table "XCO2_VTPDomainPorts", id: false, force: :cascade do |t|
  # end
  #
  # create_table "XCO_Chassis", id: false, force: :cascade do |t|
  # end
  #
  # create_table "XCO_DeviceEnergyWise", id: false, force: :cascade do |t|
  # end
  #
  # create_table "XCO_DeviceInventory", id: false, force: :cascade do |t|
  # end
  #
  # create_table "XCO_Device_Credential_Status", id: false, force: :cascade do |t|
  # end
  #
  # create_table "XCO_Device_Inventory_Collection_Status", id: false, force: :cascade do |t|
  # end
  #
  # create_table "XCO_End_Hosts", id: false, force: :cascade do |t|
  # end
  #
  # add_index "XCO_End_Hosts", ["Device", "Port"], name: "ABD_IX1"
  #
  # create_table "XCO_EquiposCW", id: false, force: :cascade do |t|
  # end
  #
  # create_table "XCO_InventarioModulos", id: false, force: :cascade do |t|
  # end
  #
  # create_table "XCO_Module_Inventory", id: false, force: :cascade do |t|
  # end
  #
  # create_table "XCO_Network_Devices", id: false, force: :cascade do |t|
  # end
  #
  # create_table "XCO_PortEnergyWise", id: false, force: :cascade do |t|
  # end
  #
  # create_table "XCO_Port_Inventory", id: false, force: :cascade do |t|
  # end
  #
  # create_table "XCO_PowerSupply", id: false, force: :cascade do |t|
  # end
  #
  # create_table "XCO_VTPDomainPorts", id: false, force: :cascade do |t|
  # end
  #
  # add_index "XCO_VTPDomainPorts", ["PortName", "DeviceIPAddress", "DeviceName"], name: "IX_XCO_VTPDomainPorts"
  #
  # create_table "Z8consolas", id: false, force: :cascade do |t|
  # end
  #
  # create_table "Z8gssi", id: false, force: :cascade do |t|
  # end
  #
  # create_table "amper_intentollamada", id: false, force: :cascade do |t|
  # end
  #
  # create_table "amper_vistaalerting", id: false, force: :cascade do |t|
  # end
  #
  # create_table "amper_vistaenduserdevicelines", id: false, force: :cascade do |t|
  # end
  #
  # create_table "amper_vistaerrorenduserdeviceline", id: false, force: :cascade do |t|
  # end
  #
  # create_table "amper_vistaextensionescandado", id: false, force: :cascade do |t|
  # end
  #
  # add_index "amper_vistaextensionescandado", ["extension", "particion"], name: "IX_amper_vistaextensionescandado"
  #
  # create_table "amper_vistajefesconsecretariasdegrupo", id: false, force: :cascade do |t|
  # end
  #
  # create_table "amper_vistajefescontiposecretariaydesvio", id: false, force: :cascade do |t|
  # end
  #
  # create_table "amper_vistalabels", id: false, force: :cascade do |t|
  # end
  #
  # create_table "amper_vistaregistrossincronizacion", id: false, force: :cascade do |t|
  # end
  #
  # create_table "amper_vistavalidacionenduserdeviceline", id: false, force: :cascade do |t|
  # end
  #
  # create_table "audit", id: false, force: :cascade do |t|
  # end
  #
  # create_table "aux_mov_con", id: false, force: :cascade do |t|
  # end
  #
  # create_table "aux_mov_con_uni", id: false, force: :cascade do |t|
  # end
  #
  # create_table "aux_mov_sin", id: false, force: :cascade do |t|
  # end
  #
  # create_table "bck_TChecklico", id: false, force: :cascade do |t|
  # end
  #
  # create_table "bck_TUsuarios", id: false, force: :cascade do |t|
  # end
  #
  # create_table "bck_TUsuariosProgramas", id: false, force: :cascade do |t|
  # end
  #
  # create_table "edgeEDR", id: false, force: :cascade do |t|
  # end
  #
  # create_table "edgeSite", id: false, force: :cascade do |t|
  # end
  #
  # create_table "nodeDetailEDR", id: false, force: :cascade do |t|
  # end
  #
  # add_index "nodeDetailEDR", ["Name"], name: "IX_nodeDetailEDR_NAME"
  #
  # create_table "nodeEDR", id: false, force: :cascade do |t|
  # end
  #
  # add_index "nodeEDR", ["Name"], name: "IX_nodeEDR_Name"
  #
  # create_table "nodeSite", id: false, force: :cascade do |t|
  # end
  #
  # create_table "shInternetProtocol", id: false, force: :cascade do |t|
  # end
  #
  # create_table "shIpInterfaces", id: false, force: :cascade do |t|
  # end
  #
  # create_table "svrAmper_vistaenduserdevicelines", id: false, force: :cascade do |t|
  # end
  #
  # create_table "sysdiagrams", id: false, force: :cascade do |t|
  # end
  #
  # add_index "sysdiagrams", ["principal_id", "name"], name: "UK_principal_name", unique: true
  #
  # create_table "tSiteRadioUps_backup11052016", id: false, force: :cascade do |t|
  # end
  #
  # create_table "tSiteRadio_backup11052016", id: false, force: :cascade do |t|
  # end
  #
  # create_table "tchecklicoBck160425", id: false, force: :cascade do |t|
  # end
  #
  # create_table "tmp_OrderInformePdf", id: false, force: :cascade do |t|
  # end
  #
  # create_table "tmp_TramitadoCuotas", id: false, force: :cascade do |t|
  # end
  #
  # create_table "tmp_costes", id: false, force: :cascade do |t|
  # end
  #
  # create_table "tmp_reparto", id: false, force: :cascade do |t|
  # end
  #
  # create_table "z9consolas", id: false, force: :cascade do |t|
  # end
  #
  # create_table "z9gssi", id: false, force: :cascade do |t|
  # end
  #
  # add_foreign_key "IP_VoiceQoS", "TSedes", column: "nCodSede", primary_key: "nCodSede", name: "FK_IP_VoiceQoS_TSedes"
  # add_foreign_key "OLD_TTerminalesMovil", "OLD_TModelosTerminales", column: "nCodModelo", name: "FK_TTerminalesMovil_TModelosTerminales"
  # add_foreign_key "OLD_TTerminalesMovil", "TTiposTerminales", column: "nCodTipTerm", primary_key: "nCodTipTerm", name: "FK_TTerminalesMovil_TTiposTerminales"
  # add_foreign_key "SD_Visitas", "SD_TiposAcometidas", column: "Acometida", primary_key: "IdAcometida", name: "FK_SD_Visitas_SD_TIPOSACOMETIDAS"
  # add_foreign_key "SD_Visitas", "SD_TiposCableadoV", column: "CableadoVertical", primary_key: "IdVertical", name: "FK_SD_Visitas_SD_TiposCableadoV"
  # add_foreign_key "SD_Visitas", "SD_Ubicaciones", column: "Ubicacion", primary_key: "IdUbicacion", name: "FK_SD_Visitas_SD_UBICACIONES"
  # add_foreign_key "SD_Visitas", "TSedes", column: "nCodSede", primary_key: "nCodSede", name: "FK_SD_Visitas_TSedes"
  # add_foreign_key "TAfariaAppBlackList", "TAfariaAppBlackList", column: "cPackageName", primary_key: "cPackageName", name: "FK_TAfariaAppBlackList_TAfariaAppBlackList"
  # add_foreign_key "TAfariaAppBlackList", "TAfariaAppBlackList", column: "nIdEntorno", primary_key: "nIdEntorno", name: "FK_TAfariaAppBlackList_TAfariaAppBlackList"
  # add_foreign_key "TAfariaAppBlackList", "TAfariaAppBlackList", column: "nIdGrupo", primary_key: "nIdGrupo", name: "FK_TAfariaAppBlackList_TAfariaAppBlackList"
  # add_foreign_key "TAfariaEntornos", "TAfariaEntornos", column: "nId", primary_key: "nId", name: "FK_TAfariaEntornos_TAfariaEntornos"
  # add_foreign_key "TAfariaGrupoAplicacion", "TAfariaAplicaciones_old", column: "nIdAplicacion", primary_key: "nId", name: "FK_TAfariaGrupoAplicacion_TAfariaAplicaciones"
  # add_foreign_key "TAfariaGrupos", "TAfariaEntornos", column: "nIdEntorno", primary_key: "nId", name: "FK_TAfariaGrupos_TAfariaEntornos"
  # add_foreign_key "TAlbaranMoviles", "THistoricoActuacionesLineas", column: "nCodActuacion", primary_key: "nCodActuacion", name: "FK_Talbaranmoviles_THistoricoActuacionesLineas"
  # add_foreign_key "TAlbaranMoviles", "TMovimientoTerminalMovil", column: "nIdMovimiento", primary_key: "nId", name: "FK_TAlbaranMoviles_TMovimientoTerminalMovil"
  # add_foreign_key "TAlmacenMoviles", "OLD_TModelosTerminales", column: "idModelo", name: "FK_TAlmacenMoviles_TModelosTerminales"
  # add_foreign_key "TAlmacenMoviles", "TTTiposUbicacion", column: "idUbicacion", name: "FK_TAlmacenMoviles_TTTiposUbicacion"
  # add_foreign_key "TAnillosONO", "TLinDatos", column: "nCodLinDatos", primary_key: "nCodLinDatos", name: "FK_TAnillosONO_TLinDatos"
  # add_foreign_key "TCatalogoFacturacion", "TCatalogoFacturacion", column: "nIdFacturacionAlta", primary_key: "nId", name: "FK_TCatalogoFacturacion_TCatalogoFacturacion"
  # add_foreign_key "TCatalogoRed", "TSuperTipoComponentes", column: "nCodSuperTipo", primary_key: "nCodSuperTipo", name: "FK_TCatalogoRed_TSuperTipoComponentes"
  # add_foreign_key "TCentralitas", "TEstadosCentralita", column: "nCodEstado", primary_key: "nCodEstado", name: "FK_TCentralitas_TEstadosCentralita"
  # add_foreign_key "TCentralitas", "TLinDatos", column: "nTrunkingIp", primary_key: "nCodLinDatos", name: "FK_TCentralitas_TLinDatos"
  # add_foreign_key "TCentralitas", "TLineas", column: "nCOMSAT", primary_key: "nLinea", name: "FK_COMSAT1"
  # add_foreign_key "TCentralitas", "TLineas", column: "nCOMSAT2", primary_key: "nLinea", name: "FK_COMSAT2"
  # add_foreign_key "TCentralitas", "TRais", column: "nRAI", primary_key: "nRAI", name: "FK_TCentralitas_TRais"
  # add_foreign_key "TCentralitas", "TSedes", column: "nCodSede", primary_key: "nCodSede", name: "FK_TSedes_TCentralitas"
  # add_foreign_key "TCentralitas", "TTiposCentralita", column: "nCodTipoCentralita", primary_key: "nCodTipoCentralita", name: "FK_TCentralitas_TTiposCentralita"
  # add_foreign_key "TChecklico", "TProgramas", column: "nTipoTarea", primary_key: "nCodPrograma", name: "FK_TChecklico_TProgramas1"
  # add_foreign_key "TChecklico", "TUsuarios", column: "nIdSupervisor", primary_key: "nIdUsuario", name: "FK_TChecklico_TUsuariosSupervisor"
  # add_foreign_key "TChecklico", "TUsuarios", column: "nIdUsuario", primary_key: "nIdUsuario", name: "FK_TChecklico_TUsuariosResponsable"
  # add_foreign_key "TCoberturasTeoricas", "TUsos", column: "nCodUso", primary_key: "nCodUso", name: "FK_TCoberturasTeoricas_TUsos"
  # add_foreign_key "TComponentesRed", "TCatalogoRed", column: "nCodTipoComponente", primary_key: "nCodTipoComponente", name: "FK_TComponentesRed_TCatalogoRed"
  # add_foreign_key "TComponentesRed", "TElectronicaRed", column: "nCodElectronicaRed", primary_key: "nCodElectronicaRed", name: "FK_TComponentesRed_TElectronicaRed"
  # add_foreign_key "TComponentesRed", "TSedes", column: "nCodSede", primary_key: "nCodSede", name: "FK_TComponentesRed_TSedes"
  # add_foreign_key "TComponentesRed", "TTTiposUbicacion", column: "nCodUbicacion", name: "FK_TComponentesRed_TTTiposUbicacion"
  # add_foreign_key "TComponentesRedFacturacion", "TCatalogoFacturacion", column: "nIdFacturacion", primary_key: "nId", name: "FK_TComponentesRedFacturacion_TCatalogoFacturacion"
  # add_foreign_key "TComponentesRedFacturacion", "TComponentesRed", column: "nCodComponente", primary_key: "nCodComponente", name: "FK_TComponentesRedFacturacion_TComponentesRed"
  # add_foreign_key "TDeviceProfile", "TDeviceProfile", column: "nCodDeviceProfile", primary_key: "nCodDeviceProfile", name: "FK_TDeviceProfile_TDeviceProfile"
  # add_foreign_key "TDeviceProfile", "TModelosFijos", column: "nCodModelo", primary_key: "nCodModelo", name: "FK_TDeviceProfile_TModelosFijos"
  # add_foreign_key "TDispositivosIP", "TElectronicaRed", column: "nCodElectronicaRed", primary_key: "nCodElectronicaRed", name: "FK_TDispositivosIP_TElectronicaRed"
  # add_foreign_key "TDispositivosIP", "TEstadoDispositivosIP", column: "nCodEstado", primary_key: "nCodEstado", name: "FK_TDispositivosIP_TEstadoDispositivosIP"
  # add_foreign_key "TDispositivosIP", "TSedes", column: "nCodAlmacen", primary_key: "nCodSede", name: "FK_TDispositivosIP_TSedes"
  # add_foreign_key "TDispositivosIPFacturacion", "TCatalogoFacturacion", column: "nIdFacturacion", primary_key: "nId", name: "FK_TDispositivosIPFacturacion_TCatalogoFacturacion"
  # add_foreign_key "TDispositivosIPFacturacion", "TDispositivosIP", column: "nCodDispositivosIP", primary_key: "nCodDispositivosIP", name: "FK_TDispositivosIPFacturacion_TDispositivosIP"
  # add_foreign_key "TElectronicaRed", "TGruposTACACS", column: "nIdGrTACACS", primary_key: "nId", name: "FK_TElectronicaRed_TGruposTACACS"
  # add_foreign_key "TElectronicaRed", "TRack", column: "nCodRack", primary_key: "nCodRack", name: "FK_TElectronicaRed_TRack"
  # add_foreign_key "TElectronicaRed", "TTiposEdR", column: "nCodTipoEDR", primary_key: "nCodTipoEdR", name: "FK_TElectronicaRed_TTiposEdR"
  # add_foreign_key "TEndPoints", "TElectronicaRed", column: "nCodElectronicaRed", primary_key: "nCodElectronicaRed", name: "FK_TEndPoints_TElectronicaRed"
  # add_foreign_key "TEnlaces", "TCentralitas", column: "nCodDestino", primary_key: "nCodCentralita", name: "FK_TEnlaces_TCentralitasDestino"
  # add_foreign_key "TEnlaces", "TCentralitas", column: "nCodOrigen", primary_key: "nCodCentralita", name: "FK_TEnlaces_TCentralitasOrigen"
  # add_foreign_key "TFacturasMovilesConsumos", "TConceptosFacturas", column: "nCodConcepto", primary_key: "nCodConcepto", name: "FK_TFacturasMovilesConsumos_TConceptosFacturas"
  # add_foreign_key "TGruposPares", "TEndPoints", column: "cEndPoint", primary_key: "cEndPoint", name: "FK_TGruposPares_TEndPoints"
  # add_foreign_key "TGruposPares", "TLinFijos", column: "nLinea", primary_key: "nLinea", name: "FK_TGruposPares_TLinFijos"
  # add_foreign_key "TGruposPares", "TMDs", column: "nCodCentralita", primary_key: "nCodCentralita", name: "FK_TGruposPares_TMDs"
  # add_foreign_key "TGruposPares", "TMDs", column: "nEquipo", primary_key: "nEquipo", name: "FK_TGruposPares_TMDs"
  # add_foreign_key "TGruposPares", "TMDs", column: "nLIM", primary_key: "nLIM", name: "FK_TGruposPares_TMDs"
  # add_foreign_key "TGruposPares", "TMDs", column: "nMagazin", primary_key: "nMagazin", name: "FK_TGruposPares_TMDs"
  # add_foreign_key "TGruposPares", "TMDs", column: "nPosicion", primary_key: "nPosicion", name: "FK_TGruposPares_TMDs"
  # add_foreign_key "TGruposPares", "TSedes", column: "nCodSede", primary_key: "nCodSede", name: "FK_TGruposPares_TSedes"
  # add_foreign_key "TGruposTACACS", "TGruposTACACS", column: "nId", primary_key: "nId", name: "FK_TGruposTACACS_TGruposTACACS"
  # add_foreign_key "THardware", "TTiposCentralita", column: "nCodTipoCentralita", primary_key: "nCodTipoCentralita", name: "FK_THardware_TTiposCentralita"
  # add_foreign_key "THistoricoActuaciones", "TCentralitas", column: "nCodCentralita", primary_key: "nCodCentralita", name: "FK_THistoricoActuaciones_TCentralitas"
  # add_foreign_key "THistoricoActuacionesLineas", "TLineas", column: "nLinea", primary_key: "nLinea", name: "FK_THistoricoActuacionesLineas_TLineas"
  # add_foreign_key "THistoricoAsignaciones", "TLineas", column: "nLinea", primary_key: "nLinea", name: "FK_THistoricoAsignaciones_TLineas"
  # add_foreign_key "THistoricoAsignaciones", "TTiposCobertura", column: "nCodCoberturaAnt", primary_key: "nCodCobertura", name: "FK_THistoricoAsignaciones_TTiposCobertura"
  # add_foreign_key "THistoricoDispositivosIP", "TDispositivosIP", column: "cMAC", primary_key: "cMAC", name: "FK_THistoricoDispositivosIP_TDispositivosIP"
  # add_foreign_key "TInformesSQLSolicitudes", "TInformesSQL", column: "nIdInforme", primary_key: "nId", name: "FK_TInformesSQLSolicitudes_TInformesSQL"
  # add_foreign_key "TJefesUnidad", "TPuestos", column: "nJefe", primary_key: "nEmpPuesto", name: "FK_TJefesUnidad_TPuestos"
  # add_foreign_key "TJefesUnidad", "TUnidades", column: "nCodUni", primary_key: "nCodUni", name: "FK_TJefesUnidad_TUnidades"
  # add_foreign_key "TLinDatos", "TElectronicaRed", column: "nCodElectronicaRedA", primary_key: "nCodElectronicaRed", name: "FK_TLinDatos_TElectronicaRedA"
  # add_foreign_key "TLinDatos", "TElectronicaRed", column: "nCodElectronicaRedB", primary_key: "nCodElectronicaRed", name: "FK_TLinDatos_TElectronicaRedB"
  # add_foreign_key "TLinDatos", "TLinDatos", column: "nNodoCabecera", primary_key: "nCodLinDatos", name: "FK_TLinDatos_TLinDatos"
  # add_foreign_key "TLinDatos", "TLinDatos", column: "nPrincipal", primary_key: "nCodLinDatos", name: "FK_TLinPrincipal_TLinBackup"
  # add_foreign_key "TLinDatos", "TLineas", column: "nCodLinDatos", primary_key: "nLinea", name: "FK_TLinDatos_TLineas_nCodLindatos"
  # add_foreign_key "TLinDatos", "TLineas", column: "nLinea", primary_key: "nLinea", name: "FK_TLinDatos_TLineas_nLinea"
  # add_foreign_key "TLinDatos", "TSedes", column: "nCodSedeA", primary_key: "nCodSede", name: "FK_TLinDatos_TSedesA"
  # add_foreign_key "TLinDatos", "TSedes", column: "nCodSedeB", primary_key: "nCodSede", name: "FK_TLinDatos_TSedesB"
  # add_foreign_key "TLinDatos", "TTipoLinDatos", column: "nCodTipDatos", primary_key: "nCodTipDatos", name: "FK_TLinDatos_TTipoLinDatos"
  # add_foreign_key "TLinDatosVPNVLan", "TLinDatos", column: "nCodLinDatos", primary_key: "nCodLinDatos", name: "FK_TLinDatosVPNVLan_TLinDatos"
  # add_foreign_key "TLinDatosVPNVLan", "TVPNVLan", column: "nIdVLan", primary_key: "nIdVLan", name: "FK_TLinDatosVPNVLan_TVPNVLan"
  # add_foreign_key "TLinDatosVPNVLan", "TVPNVLan", column: "nIdVPN", primary_key: "nIdVPN", name: "FK_TLinDatosVPNVLan_TVPNVLan"
  # add_foreign_key "TLinFijos", "TCentralitas", column: "nCodCentralita", primary_key: "nCodCentralita", name: "FK_TLinFijos_TCentralitas"
  # add_foreign_key "TLinFijos", "TLinFijos", column: "nLinea", primary_key: "nLinea", name: "FK_TLinFijos_TLinFijos"
  # add_foreign_key "TLinFijos", "TLinFijos", column: "nLineaCab", primary_key: "nLinea", name: "FK_Linea_LineaCab"
  # add_foreign_key "TLinFijos", "TLineas", column: "nLinea", primary_key: "nLinea", name: "FK_TLinFijos_TLineas"
  # add_foreign_key "TLinFijos", "TModelosFijos", column: "nCodModelo", primary_key: "nCodModelo", name: "FK_TLinFijos_TModelosFijos"
  # add_foreign_key "TLinFijos", "TModelosFijos", column: "nCodModeloCisco", primary_key: "nCodModelo", name: "FK_TLinFijos_TModelosFijos1"
  # add_foreign_key "TLinFijos", "TSedes", column: "nCodSede", primary_key: "nCodSede", name: "FK_TLinFijos_TSedes"
  # add_foreign_key "TLinFijos", "TSubTipoLinFijos", column: "nCodSubTipoFijo", primary_key: "nCodSubTipoFijo", name: "FK_TLinFijos_TSubTipoLinFijos"
  # add_foreign_key "TLinFijos", "TTiposCobertura", column: "nCodCobertura", primary_key: "nCodCobertura", name: "FK_TLinFijos_TTiposCobertura"
  # add_foreign_key "TLinFijos", "TUsos", column: "nCodUso", primary_key: "nCodUso", name: "FK_TLinFijos_TUsos"
  # add_foreign_key "TLinFijosDeviceProfile", "TLineas", column: "nLinea", primary_key: "nLinea", name: "FK_TLinFijosDeviceProfile_TLineas"
  # add_foreign_key "TLinFijosDispositivosIP", "TDispositivosIP", column: "nCodDispositivosIP", primary_key: "nCodDispositivosIP", name: "FK_TLinFijosDispositivosIP_TLinFijosDispositivosIP"
  # add_foreign_key "TLinFijosDispositivosIP", "TLinFijos", column: "nLinea", primary_key: "nLinea", name: "FK_TLinFijosDispositivosIP_TLinFijos"
  # add_foreign_key "TLinFijosPuestos", "TLineas", column: "nLineaFija", primary_key: "nLinea", name: "FK_TLinFijosPuestos_TLineas"
  # add_foreign_key "TLinFijosPuestos", "TPuestos", column: "nCodPto", primary_key: "nEmpPuesto", name: "FK_TLinFijosPuestos_TPuestos"
  # add_foreign_key "TLinMoviles", "TFacturasMovilesTarifas", column: "nCodTarifa", primary_key: "nCodTarifa", name: "FK_LinMoviles_Tarifas"
  # add_foreign_key "TLinMoviles", "TLineas", column: "nLinea", primary_key: "nLinea", name: "FK_TLinMoviles_TLineas"
  # add_foreign_key "TLinMoviles", "TPerfilesMovil", column: "cPerfil", primary_key: "cPerfil", name: "FK_TLinMoviles_TPerfilesMovil"
  # add_foreign_key "TLinMoviles", "TPersonas", column: "cDNI", primary_key: "cDNI", name: "FK_TLinMoviles_TPersonas"
  # add_foreign_key "TLinMoviles", "TSedes", column: "nCodSede", primary_key: "nCodSede", name: "FK_TLinMoviles_TSedes"
  # add_foreign_key "TLinMoviles", "TTipoLinMoviles", column: "nCodTipMovil", primary_key: "nCodTipMovil", name: "FK_TLinMoviles_TTipoLinMoviles"
  # add_foreign_key "TLinMovilesTarifas", "TLinMoviles", column: "nLinea", primary_key: "nLinea", name: "FK_TLinMovilesTarifas_TLinMoviles"
  # add_foreign_key "TLineas", "TEstadosLinea", column: "nCodEstLin", primary_key: "nCodEstLin", name: "FK_TLineas_TEstadosLinea"
  # add_foreign_key "TLineas", "TLotes", column: "nCodTipoLote", primary_key: "nCodTipoLote", name: "FK_TLotes_TLineas"
  # add_foreign_key "TLineas", "TTiposLinea", column: "cCodTipLinea", primary_key: "cCodTipLinea", name: "FK_TLineas_TTiposLinea"
  # add_foreign_key "TLineas", "TUnidades", column: "nCodUni", primary_key: "nCodUni", name: "FK_TLineas_TUnidades"
  # add_foreign_key "TLineasAccesos", "TLineas", column: "nLinea", primary_key: "nLinea", name: "FK_TLineasAccesos_TLineas"
  # add_foreign_key "TLineasFacturacion", "TCatalogoFacturacion", column: "nIdFacturacion", primary_key: "nId", name: "FK_TLineasFacturacion_TCatalogoFacturacion"
  # add_foreign_key "TLineasFacturacion", "TLineas", column: "nLinea", primary_key: "nLinea", name: "FK_TLineasFacturacion_TLineas"
  # add_foreign_key "TListaAutorizados", "TLineas", column: "nLinea", primary_key: "nLinea", name: "FK_TListaAutorizados_TLineas"
  # add_foreign_key "TListaAutorizadosPerfil", "TPerfilesMovil", column: "cPerfil", primary_key: "cPerfil", name: "FK_TListaAutorizadosPerfil_TPerfilesMovil"
  # add_foreign_key "TMDs", "TCentralitas", column: "nCodCentralita", primary_key: "nCodCentralita", name: "FK_TMDs_TCentralitas"
  # add_foreign_key "TMDs", "TLineas", column: "nLinea", primary_key: "nLinea", name: "FK_TMDs_TLineas"
  # add_foreign_key "TMensajesMentes", "TLineas", column: "nLinea", primary_key: "nLinea", name: "FK_TMensajesMentes_TLineas"
  # add_foreign_key "TMovilesSedes", "TLineas", column: "nLineaMovil", primary_key: "nLinea", name: "FK_TMovilesSedes_TLineas"
  # add_foreign_key "TMovilesSedes", "TSedes", column: "nCodSede", primary_key: "nCodSede", name: "FK_TMovilesSedes_TSedes"
  # add_foreign_key "TMovimientoTerminalMovil", "TTerminalesMovil", column: "nIdTerminal", primary_key: "nId", name: "FK_TMovimientoTerminalMovil_TTerminalesMovil"
  # add_foreign_key "TMovimientosEDR", "TComponentesRed", column: "nCodComponente", primary_key: "nCodComponente", name: "FK_TMovimientosEDR_TComponentesRed"
  # add_foreign_key "TMovimientosEDR", "TElectronicaRed", column: "nCodElectronicaRed", primary_key: "nCodElectronicaRed", name: "FK_TMovimientosEDR_TElectronicaRed"
  # add_foreign_key "TPedidosMoviles", "TModelosTerminales", column: "nCodModelo", primary_key: "nId", name: "FK_TPedidosMoviles_TModelosTerminales"
  # add_foreign_key "TPersonas", "TPuestos", column: "nemppuesto", primary_key: "nEmpPuesto", name: "FK_TPersonas_Tpuestos"
  # add_foreign_key "TPersonas", "TTiposDocumento", column: "ccodtipodoc", primary_key: "cCodTipoDoc", name: "FK_TPersonas_TTiposDocumento"
  # add_foreign_key "TPersonas", "TTiposPersonas", column: "ncodtipoper", primary_key: "nCodTipoPer", name: "FK_TPersonas_TTiposPersonas"
  # add_foreign_key "TProgramas", "TProgramas", column: "nCodPrograma", primary_key: "nCodPrograma", name: "FK_TProgramas_TProgramas"
  # add_foreign_key "TPuertos", "TElectronicaRed", column: "nCodElectronicaRed", primary_key: "nCodElectronicaRed", name: "FK_TPuertos_TElectronicaRed"
  # add_foreign_key "TPuestos", "TTiposPuestos", column: "CoTipoPto", primary_key: "cCodTipoPto", name: "FK_TPuestos_TTiposPuestos"
  # add_foreign_key "TPuestos", "TUnidades", column: "nCodUni", primary_key: "nCodUni", name: "FK_Tpuestos_TUnidades"
  # add_foreign_key "TPuestos", "TUnidades", column: "nCodUniFunc", primary_key: "nCodUni", name: "FK_TPuestos_TUnidadFuncional"
  # add_foreign_key "TRack", "TSedes", column: "nCodSede", primary_key: "nCodSede", name: "FK_TRack_TSedes"
  # add_foreign_key "TRais", "TLineas", column: "nNumCabecera", primary_key: "nLinea", name: "FK_CabeceraRAI"
  # add_foreign_key "TRangoIPdisp", "TSedes", column: "SEDE", primary_key: "nCodSede", name: "FK_TRangoIPdisp_TSedes"
  # add_foreign_key "TRangoIPdisp", "TSedes", column: "SEDE_ALTERNATIVA", primary_key: "nCodSede", name: "FK_TRangoIPdisp_TSedes1"
  # add_foreign_key "TRangoIPdisp", "TTiposRed", column: "TIPO", primary_key: "nCodTipo", name: "FK_TRangoIPdisp_TTiposRed"
  # add_foreign_key "TSedes", "TAcronimosSedeEDR", column: "nIdAcronimo", primary_key: "nId", name: "FK_TSedes_TAcronimosSedeEDR"
  # add_foreign_key "TSedes", "TGruposTACACS", column: "nIdGrTACACS", primary_key: "nId", name: "FK_TSedes_TGruposTACACS"
  # add_foreign_key "TSedes", "TUnidades", column: "nCodUni", primary_key: "nCodUni", name: "FK_TSedes_TUnidades"
  # add_foreign_key "TSedes", "TUnidades", column: "nDistrito", primary_key: "nCodUni", name: "FK_TSedes_TUnidades1"
  # add_foreign_key "TSedesUGD", "TSedes", column: "nCodSede", primary_key: "nCodSede", name: "FK_TSedesUGD_TSedes"
  # add_foreign_key "TSiteEstacionesBase", "TSiteCanales", column: "nCodCanal", primary_key: "nCodCanal", name: "FK_TSiteEstacionesBase_TSiteCanales"
  # add_foreign_key "TSiteEstacionesBase", "TSiteRadio", column: "nCodSite", primary_key: "nCodSite", name: "FK_TSiteEstacionesBase_TSiteRadio"
  # add_foreign_key "TSiteRadio", "TSedes", column: "nCodSede", primary_key: "nCodSede", name: "FK_TSiteRadio_TSedes"
  # add_foreign_key "TSiteRadio", "TTiposSites", column: "nCodTipo", primary_key: "nCodTipo", name: "FK_TSiteRadio_TTiposSites"
  # add_foreign_key "TSiteRadioFrecs", "TSiteRadio", column: "ncodsite", primary_key: "nCodSite", name: "FK_TSiteradiofrecs_TSiteRadio"
  # add_foreign_key "TSiteRadioMuliplex", "TSiteRadio", column: "ncodsite", primary_key: "nCodSite", name: "FK_TsiteRadioMuliplex_TSiteRadio"
  # add_foreign_key "TSiteRadioOtroseq", "TSiteRadio", column: "NcodSite", primary_key: "nCodSite", name: "FK_TsiteRadioOtroseq_TSiteRadio"
  # add_foreign_key "TSiteRadioRenalce", "TSiteRadio", column: "Ncodsite", primary_key: "nCodSite", name: "FK_TSiteRadioRenalce_TSiteRadio"
  # add_foreign_key "TSiteRadioSalAlarm", "TSiteRadio", column: "ncodsite", primary_key: "nCodSite", name: "FK_TsiteRadiosalalarm_TSiteRadio"
  # add_foreign_key "TSiteRadioTerceros", "TSiteRadio", column: "Ncodsite", primary_key: "nCodSite", name: "FK_TSiteRadioTerceros_TSiteRadio"
  # add_foreign_key "TSiteRadioUps", "TSiteRadio", column: "nCodSite", primary_key: "nCodSite", name: "FK_TSiteRadioUps_TSiteRadio"
  # add_foreign_key "TSiteRadioacc", "TSiteRadio", column: "Ncodsite", primary_key: "nCodSite", name: "FK_TSiteRadioacc_TSiteRadio"
  # add_foreign_key "TSiteRadioextencor", "TSiteRadio", column: "ncodsite", primary_key: "nCodSite", name: "FK_TSiteRadioextencor_TSiteRadio"
  # add_foreign_key "TSiteRadiorectif", "TSiteRadio", column: "NcodSite", primary_key: "nCodSite", name: "FK_TSiteRadiorectif_TSiteRadio"
  # add_foreign_key "TSiteToSite", "TSiteRadio", column: "nCodSiteA", primary_key: "nCodSite", name: "FK_TSiteToSite_TSiteRadioA"
  # add_foreign_key "TSiteToSite", "TSiteRadio", column: "nCodSiteB", primary_key: "nCodSite", name: "FK_TSiteToSite_TSiteToSiteB"
  # add_foreign_key "TSiteZonaEstacion", "TSiteRadio", column: "nCodSite", primary_key: "nCodSite", name: "FK_TSiteZonaEstacion_TSiteRadio"
  # add_foreign_key "TSiteradioEntralarm", "TSiteRadio", column: "ncodsite", primary_key: "nCodSite", name: "FK_TSiteradioEntralarm_TSiteRadio"
  # add_foreign_key "TSites", "TSedes", column: "nCodSede", primary_key: "nCodSede", name: "FK_TSites_TSedes"
  # add_foreign_key "TSlots", "TCentralitas", column: "nCodCentralita", primary_key: "nCodCentralita", name: "FK_TSlots_TCentralitas"
  # add_foreign_key "TSlots", "THardware", column: "nCodHardware", primary_key: "nCodHardware", name: "FK_TSlots_THardware"
  # add_foreign_key "TSubTipoLinFijos", "TTipoLinFijos", column: "nCodTipFijo", primary_key: "nCodTipFijo", name: "FK_TSubTipoLinFijos_TTipoLinFijos"
  # add_foreign_key "TTarjetasMovil", "TClasesTarjetas", column: "cCodClase", primary_key: "cCodClase", name: "FK_TTarjetasMovil_TClasesTarjetas"
  # add_foreign_key "TTarjetasMovil", "TLinMoviles", column: "nLineaMovil", primary_key: "nLinea", name: "FK_TTarjetasMovil_TLinMoviles"
  # add_foreign_key "TTarjetasMovil", "TTiposTarjetas", column: "nCodTipTarj", primary_key: "nCodTipTarj", name: "FK_TTarjetasMovil_TTiposTarjetas"
  # add_foreign_key "TTerminalMovilLinea", "TLineas", column: "nLinea", primary_key: "nLinea", name: "FK_TTerminalMovilLinea_TLineas"
  # add_foreign_key "TTerminalPlanIMEI", "TModelosTerminales", column: "nCodModelo", primary_key: "nId", name: "FK_TTerminalPlanIMEI_TModelosTerminales_new"
  # add_foreign_key "TTerminalPlanIMEI", "TPlanIMEI", column: "cTypeAllocationCode", primary_key: "cTypeAllocationCode", name: "FK_TTerminalPlanIMEI_TPlanIMEI"
  # add_foreign_key "TTerminalesEstadoAlmacen", "TTTiposUbicacion", column: "nCodAlmacen", name: "FK_TTerminalesEstadoAlmacen_TTTiposUbicacion"
  # add_foreign_key "TTerminalesMovil", "TAfariaGrupos", column: "nIdGrupo", primary_key: "nId", name: "FK_TTerminalesMovil_TAfariaGrupos"
  # add_foreign_key "TTerminalesMovil", "TEstadoTerminalesMovil", column: "nCodEstado", primary_key: "nCodEstado", name: "FK_TTerminalesMovil_TEstadoTerminalesMovil"
  # add_foreign_key "TTerminalesMovil", "TLineas", column: "nLinea", primary_key: "nLinea", name: "FK_TTerminalesMovil_TLineas"
  # add_foreign_key "TTerminalesMovil", "TLineas", column: "nLinea2", primary_key: "nLinea", name: "FK_TTerminalesMovil_TLineas1"
  # add_foreign_key "TTerminalesMovil", "TModelosTerminales", column: "nCodModelo", primary_key: "nId", name: "FK_TTerminalesMovil_TModelosTerminales1"
  # add_foreign_key "TTerminalesMovil", "TPedidosMoviles", column: "nIdPedido", primary_key: "nId", name: "FK_TTerminalesMovil_TPedidosMoviles"
  # add_foreign_key "TTerminalesMovil", "TPersonas", column: "cDNI", primary_key: "cDNI", name: "FK_TTerminalesMovil_TPersonas"
  # add_foreign_key "TTerminalesMovil", "TTTiposUbicacion", column: "nCodAlmacen", name: "FK_TTerminalesMovil_TTTiposUbicacion"
  # add_foreign_key "TTerminalesMovil", "TUnidades", column: "nCodUni", primary_key: "nCodUni", name: "FK_TTerminalesMovil_TUnidades"
  # add_foreign_key "TTerminalesOS", "TTerminalesMovil", column: "nId", primary_key: "nId", name: "FK_TTerminalesSW_TTerminalesMovil"
  # add_foreign_key "TTiposCobertura", "TTiposCentralita", column: "nCodTipoCentralita", primary_key: "nCodTipoCentralita", name: "FK_TTiposCobertura_nueva_TTiposCentralita"
  # add_foreign_key "TTiposUnidad", "TTiposUnidad", column: "cTipounidad", primary_key: "cTipounidad", name: "FK_TTiposUnidad_TTiposUnidad"
  # add_foreign_key "TTracksMK775", "TLineas", column: "nLinea", primary_key: "nLinea", name: "FK_TTracksMK775_TLineas"
  # add_foreign_key "TUnidades", "TTiposUnidad", column: "nOrderArea", primary_key: "cTipounidad", name: "FK_TUnidades_TTiposUnidad"
  # add_foreign_key "TUsuarios", "TUsuarios", column: "nIdUsuario", primary_key: "nIdUsuario", name: "FK_TUsuarios_TUsuarios"
  # add_foreign_key "TUsuariosProgramas", "TUsuarios", column: "nCodPrograma", primary_key: "nCodPrograma", name: "FK_TUsuariosProgramas_TProgramas"
  # add_foreign_key "TUsuariosProgramas", "TUsuarios", column: "nIdUsuario", primary_key: "nIdUsuario", name: "FK_TUsuariosProgramas_TUsuarios"
  # add_foreign_key "TVLanes", "TElectronicaRed", column: "nCodElectronicaRed", primary_key: "nCodElectronicaRed", name: "FK_TVLanes_TElectronicaRed"
  # add_foreign_key "TVariableFacturacion", "TCatalogoFacturacion", column: "nIdFacturacion", primary_key: "nId", name: "FK_TVariableFacturacion_TCatalogoFacturacion"
  # add_foreign_key "TetraConsolaISSIGSSI", "TetraConsolas", column: "nIdConsola", primary_key: "nId", name: "FK_TetraConsolaISSIGSSI_TetraConsolas"
  # add_foreign_key "TetraConsolaISSIGSSI", "TetraPlanGSSIs", column: "nGSSI", primary_key: "nGSSI", name: "FK_TetraConsolaISSIGSSI_TetraGSSI"
  # add_foreign_key "TetraConsolas", "TSedes", column: "nCodSede", primary_key: "nCodSede", name: "FK_TetraConsolas_TSedes"
  # add_foreign_key "TetraConsolas", "TetraFlotas", column: "nIdFlota", primary_key: "nId", name: "FK_TetraConsolas_TetraFlotas"
  # add_foreign_key "TetraGSSI_borrar", "TetraFlotas", column: "nIdFlota", primary_key: "nId", name: "FK_TetraGSSI_TetraFlotas"
  # add_foreign_key "TetraPlanISSIs", "TetraFlotas", column: "nIdFlota", primary_key: "nId", name: "FK_TetraPlanISSIs_TetraFlotas"
  # add_foreign_key "TetraPlanISSIs", "TetraTipoISSI", column: "nIdTipo", primary_key: "nId", name: "FK_TetraPlanISSIs_TetraTipoISSI"
  # add_foreign_key "TetraTerminalesRadio", "TetraFlotas", column: "nIdFlota", primary_key: "nId", name: "FK_TetraTerminalesRadio_TetraFlotas"
  # add_foreign_key "TetraTerminalesRadio", "TetraModelosRadio", column: "nIdModelo", primary_key: "nId", name: "FK_TetraTerminalesRadio_TetraModelosRadio"
  # add_foreign_key "TetraTerminalesRadio", "TetraPlanISSIs", column: "nISSI", primary_key: "nISSI", name: "FK_TetraTerminalesRadio_TetraPlanISSI"
  # add_foreign_key "edgeEDR", "nodeEDR", column: "FromNode", name: "FK_edgeEDR_nodeEDR_FromNode"
  # add_foreign_key "edgeEDR", "nodeEDR", column: "ToNode", name: "FK_edgeEDR_nodeEDR_ToNode"
end
