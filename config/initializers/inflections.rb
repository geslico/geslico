# Be sure to restart your server when you modify this file.

# Add new inflection rules using the following format. Inflections
# are locale specific, and you may define rules for as many different
# locales as you wish. All of these examples are active by default:
# ActiveSupport::Inflector.inflections(:en) do |inflect|
#   inflect.plural /^(ox)$/i, '\1en'
#   inflect.singular /^(ox)en/i, '\1'
#   inflect.irregular 'person', 'people'
#   inflect.uncountable %w( fish sheep )
# end

# These inflection rules are supported but not enabled by default:
# ActiveSupport::Inflector.inflections(:en) do |inflect|
#   inflect.acronym 'RESTful'
# end


ActiveSupport::Inflector.inflections(:en) do |inflect|
	inflect.irregular 'Unidad', 'Unidades'
	inflect.irregular 'vtetraplan', 'vtetraplanes'
	inflect.irregular 'vtetraplanissi', 'vtetraplanissis'
	inflect.irregular 'vtetraplangssi', 'vtetraplangssis'
	inflect.irregular 'lin_movil', 'lin_moviles'
	inflect.irregular 'LinMovil', 'LinMoviles'
	inflect.irregular 'ModelosTerminal', 'ModelosTerminales'
	inflect.irregular 'modelos_terminal', 'modelos_terminales'
	inflect.irregular 'CategoriaTerminal', 'CategoriaTerminales'
	inflect.irregular 'categoria_terminal', 'categoria_terminales'
	inflect.irregular 'PedidosMovil', 'PedidosMoviles'
	inflect.irregular 'pedido_movil', 'pedidos_moviles'	
	inflect.irregular 'lin_dato', 'lin_datos'
	inflect.irregular 'LinDato', 'LinDatos'
	inflect.irregular 'tipo_lin_dato', 'tipo_lin_datos'
	inflect.irregular 'TipoLinDato', 'TipoLinDatos'
	inflect.irregular 'lote', 'lotes'
	inflect.irregular 'Lote', 'Lotes'
	inflect.irregular 'lin_fijo', 'lin_fijos'
	inflect.irregular 'LinFijo', 'LinFijos'
	inflect.irregular 'lin_datos_vpn_vlan', 'lin_datos_vpn_vlanes'
	inflect.irregular 'LinDatosVpnVlan', 'LinDatosVpnVlanes'
	inflect.irregular 'vpn_vlan', 'vpn_vlanes'
	inflect.irregular 'VpnVlan', 'VpnVlanes'	
	inflect.irregular 'radio_site_ups', 'radio_site_upses'
	inflect.irregular 'RadioSiteUps', 'RadioSiteUpses'
	inflect.irregular 'radio_site_rectificador', 'radio_site_rectificadores'
	inflect.irregular 'RadioSiteRectificador', 'RadioSiteRectificadores'
	inflect.irregular 'radio_site_estacion_base', 'radio_site_estaciones_base'
	inflect.irregular 'RadioSiteEstacionBase', 'RadioSiteEstacionesBase'
	inflect.irregular 'radio_site_extensor', 'radio_site_extensores'
	inflect.irregular 'RadioSiteExtension', 'RadioSiteExtensiones'
	
end

