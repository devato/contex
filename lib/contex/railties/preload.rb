# frozen_string_literal: true

module Contex
  class RailtieAutoload < Rails::Railtie
    initializer 'rails_context.autoload', before: :set_autoload_paths do |app|
      contexts = Dir[Rails.root.join("app/contexts/*").to_s]
      contexts.each do |context|
        services = Dir["#{context}/services/*"]
        app.config.paths.add "#{context}/controllers", eager_load: true
        app.config.paths.add "#{context}/views", eager_load: true
        app.config.paths.add "#{context}/repo", eager_load: true
        app.config.paths.add "#{context}/view_models/decorators/", eager_load: true
        app.config.paths.add "#{context}/view_models/presentors", eager_load: true
        services.each do |service|
          app.config.paths.add "#{context}/services/#{service}", eager_load: true
        end
        app.config.paths["app/views"].unshift("#{context}/views")
      end
      rails_root = Rails.root.join('app')
      app.config.paths.add "#{rails_root}/view_models/decorators", eager_load: true
      app.config.paths.add "#{rails_root}/view_models/presenters", eager_load: true
    end
  end
end
