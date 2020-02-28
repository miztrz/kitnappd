require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Kitnappd
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0

    ### The below config is to allow for multiple images to be uploaded
    # As per https://stackoverflow.com/questions/58282845/rails-6-active-storage-could-not-find-or-build-blob-expected-attachable-got
    config.active_storage.replace_on_assign_to_many = false

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end
