module CreatedEntityHeader
  module ControllerExtension
    extend ActiveSupport::Concern

    included do
      after_action :add_location_header, only: [:create]
    end

    private

    def add_location_header
      return unless response.status == 201

      created_resource = instance_variable_get("@#{controller_name.singularize}")
      return unless created_resource.respond_to?(:id)

      response.headers["X-Entity-ID"] = created_resource.id.to_s

      response.headers["Location"] = url_for(created_resource)
    end

    def url_for(created_resource)
      url_helpers = Rails.application.routes.url_helpers
      url_helpers.url_for(
        controller: controller_name, action: :show,
        id: created_resource.id,
        only_path: false,
        host: request.host, port: request.port
      )
    rescue StandardError => e
      Rails.logger.warn "[RailsLocationHeader] Could not set Location Header: #{e.message}"
    end
  end
end
