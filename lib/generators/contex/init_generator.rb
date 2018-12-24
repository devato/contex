# frozen_string_literal: true

# Creates the Contex initializer file for Rails apps.
#
# @example Invokation from terminal
#   rails generate contex:init
#
module Contex
  class InitGenerator < Rails::Generators::Base
    # Adds current directory to source paths, so we can find the template file.
    source_root File.expand_path(__dir__)

    # Makes the NAME option optional, which allows to subclass from Base, so we
    # can pass arguments to the ERB template.
    argument :name, type: :string, default: 'application'

    desc 'Configures the Contex Gem'
    def generate_layout
      template 'templates/contex_initializer.rb.erb', 'config/initializers/contex.rb'
    end
  end
end
