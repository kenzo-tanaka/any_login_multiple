AnyLoginMultiple::Engine.routes.draw do
  post '/any_login_multiple/sign_in', to: 'application#any_login_multiple', as: :sign_in
end

Rails.application.routes.draw do
  mount_routes
end
