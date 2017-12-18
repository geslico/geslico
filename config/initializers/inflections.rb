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
	inflect.irregular 'TUnidad', 'TUnidades'
	inflect.irregular 'vtetraplan', 'vtetraplanes'
	inflect.irregular 'vtetraplanissi', 'vtetraplanissis'
	inflect.irregular 'vtetraplangssi', 'vtetraplangssis'
	inflect.irregular 'ModelosTerminal', 'ModelosTerminales'
	inflect.irregular 'modelos_terminal', 'modelos_terminales'
	inflect.irregular 'CategoriaTerminal', 'CategoriaTerminales'
	inflect.irregular 'categoria_terminal', 'categoria_terminales'
	inflect.irregular 'PedidosMovil', 'PedidosMoviles'
	inflect.irregular 'pedido_movil', 'pedidos_moviles'	
end

