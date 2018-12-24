# frozen_string_literal: true

module Contex
  class RailtiePostload < Rails::Railtie
    initializer 'rails_context.postload' do |app|
      path_rejector = lambda { |s| s == Rails.root.join('app', 'contexts').to_s }
      app.config.eager_load_paths = app.config.eager_load_paths.reject(&path_rejector)
      ActiveSupport::Dependencies.autoload_paths.reject!(&path_rejector)
    end
  end
end

