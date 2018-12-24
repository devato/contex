# frozen_string_literal: true

module Contex
  class Repo
    def self.call(*args)
      new(*args).call
    end
  end
end
