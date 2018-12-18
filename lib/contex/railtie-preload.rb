module Contex
  class RailtieAutoload < Rails::Railtie
    initializer 'rails_context.autoload', before: :set_autoload_paths do |app|
      contexts = Dir[Rails.root.join("app/contexts/*").to_s]
      contexts.each do |context|
        app.config.paths.add "#{context}/controllers", eager_load: true
        app.config.paths.add "#{context}/services", eager_load: true
        app.config.paths.add "#{context}/views", eager_load: true
        app.config.paths.add "#{context}/repo", eager_load: true
        app.config.paths["app/views"].unshift("#{context}/views")
      end
    end
  end
end
