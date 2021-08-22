AnyLoginMultiple::Engine.routes.draw do
  post '/easy_login/sign_in', to: 'application#easy_login', as: :sign_in
end

Rails.application.routes.draw do
  mount_routes
end
