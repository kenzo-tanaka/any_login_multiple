module EasyLogin
  class Engine < ::Rails::Engine
    isolate_namespace EasyLogin

    initializer 'easy_login.helpers' do
      ActiveSupport.on_load :action_view do
        include EasyLogin::Helpers
      end
    end
  end
end
