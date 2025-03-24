# frozen_string_literal: true

require_relative "rails_location_header/version"
require "created_entity_header/railtie" if defined?(Rails)
require "created_entity_header/controller_extension"

module RailsLocationHeader
  class Middleware
    def initialize(app)
      @app = app
    end

    def call(env)
      status, headers, response = @app.call(env)
      [status, headers, response]
    end
  end
end
