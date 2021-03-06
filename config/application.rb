require_relative 'boot'

require 'rails/all'
require 'carrierwave'
require 'carrierwave/orm/activerecord'
# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)


module Caulion
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    #
    config.time_zone = 'Seoul'
config.active_record.default_timezone = :utc
    config.load_defaults 5.1
    config.assets.paths << "#{Rails}/vendor/assets/fonts"
    config.autoload_paths += %W(#{config.root}/lib)
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
