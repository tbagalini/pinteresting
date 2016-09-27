require_relative 'boot'
require 'csv'
require 'rails/all'
require 'active_record'


# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module InventoryTurbo
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
 config.assets.initialize_on_precompile = false
 config.serve_static_assets = true

 config.action_dispatch.default_headers = {
    'Access-Control-Allow-Origin' => '*',
    'Access-Control-Request-Method' => %w{GET POST OPTIONS}.join(",") # or whatever else you would like to allow
}

  end
end

