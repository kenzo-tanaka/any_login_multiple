module ActionDispatch::Routing
  class Mapper
    def mount_routes
      mount AnyLoginMultiple::Engine => '/any_login_multiple', as: 'any_login_multiple'
    end
  end
end
