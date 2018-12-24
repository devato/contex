# frozen_string_literal: true

module Contex
  class RailtieRoutes < Rails::Railtie
    initializer 'rails_context.routes', before: :set_autoload_paths do |app|
      routes =  Dir[Rails.root.join("app/contexts/**/config/routes.rb").to_s]
      app.routes_reloader.paths.unshift(*routes)
      app.config.paths["config/routes.rb"].concat(routes)
    end
  end
end
