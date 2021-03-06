require File.expand_path('../boot', __FILE__)
require 'rails/all'

Bundler.require(*Rails.groups)

module Workspace
  class Application < Rails::Application
    config.time_zone = 'America/Sao_Paulo'
    config.i18n.default_locale = 'pt-BR'
    config.active_record.raise_in_transactional_callbacks = true
  end
end
