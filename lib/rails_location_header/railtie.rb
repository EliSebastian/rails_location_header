module CreatedEntityHeader
  class Railtie < Rails::Railtie
    initializer 'created_entity_header.configure_controller' do
      ActiveSupport.on_load :action_controller do
        include CreatedEntityHeader::ControllerExtension
      end
    end
  end
end
