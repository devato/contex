# frozen_string_literal: true

# Creates a context inside a rails app/contexts directory.
#
# @example Invokation from terminal
#   rails generate contex:context CONTEXT_NAME
#
module Contex
  class ContextGenerator < Rails::Generators::Base
    class Error < Thor::Error # :nodoc:
    end

    source_root File.expand_path(__dir__)
    argument :name, type: :string

    desc 'Create contexts/NAME directory'
    def create_directory
      context = name.to_s.downcase
      directory "templates/context/controllers", "app/contexts/#{context}/controllers/#{context}"
      directory "templates/context/repo", "app/contexts/#{context}/repo/#{context}"
      template  "templates/context/config/routes.rb.erb", "app/contexts/#{context}/config/routes.rb"
    end

  end
end
