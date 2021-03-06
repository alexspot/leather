require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Leather
  class Application < Rails::Application
    config.serve_static_assets = true
    config.assets.enabled = true
    config.assets.precompile += ['rails_admin/rails_admin.css', 'rails_admin/rails_admin.js']
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
