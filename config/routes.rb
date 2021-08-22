AnyLoginMultiple::Engine.routes.draw do
  post '/any_login_multiple/sign_in', to: 'application#easy_login', as: :sign_in
end

Rails.application.routes.draw do
  mount_routes
end
