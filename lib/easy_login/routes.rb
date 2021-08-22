module ActionDispatch::Routing
  class Mapper
    def mount_routes
      mount EasyLogin::Engine => '/easy_login', as: 'easy_login'
    end
  end
end
