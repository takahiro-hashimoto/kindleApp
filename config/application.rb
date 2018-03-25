require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module KndleApp
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end

require 'amazon/ecs'
Amazon::Ecs.options = {
  :associate_tag =>     'kindle-sale-app-22',
  :AWS_access_key_id => 'AKIAID5BKZJDQ2CWMREQ',
  :AWS_secret_key =>    '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'
}
