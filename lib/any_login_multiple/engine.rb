module AnyLoginMultiple
  class Engine < ::Rails::Engine
    isolate_namespace AnyLoginMultiple

    initializer 'any_login_multiple.helpers' do
      ActiveSupport.on_load :action_view do
        include AnyLoginMultiple::Helpers
      end
    end
  end
end
