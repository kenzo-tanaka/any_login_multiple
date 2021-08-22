module ActionDispatch::Routing
  class Mapper
    def mount_routes
      mount AnyLoginMultiple::Engine => '/easy_login', as: 'easy_login'
    end
  end
end
