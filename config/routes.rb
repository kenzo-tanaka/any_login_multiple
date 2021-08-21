EasyLogin::Engine.routes.draw do
  post '/easy_login/sign_in', to: 'application#easy_login', as: :sign_in
end
