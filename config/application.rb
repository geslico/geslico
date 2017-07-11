require File.expand_path('../boot', __FILE__)

require 'rails/all'
require 'csv'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)
ActiveSupport.halt_callback_chains_on_return_false = false

module Geslico
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    config.time_zone = 'Madrid'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    config.i18n.default_locale = :es
    config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]

    config.generators do |g|
        g.orm               :active_record
        g.template_engine   :erb
        g.test_framework    :rspec, fixtures:  false, 
                                    view_specs: false, 
                                    helpers_specs: false, 
                                    routing_specs: false,
                                    controller_specs: false, 
                                    request_specs: false
        g.fixture_replacement   :factory_girl,  dir: "spec/factories"
        g.stylesheets     false
        g.javascripts     false
        g.helper          false
    end

  end
end

