module Contex
  module Repo
    def call(*args)
      new(*args).call
    end
  end
end
