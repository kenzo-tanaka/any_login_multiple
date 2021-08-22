Rails.application.routes.draw do
  devise_for :staffs
  devise_for :users
  root to: 'welcome#index'

  #mount EasyLogin::Engine => '/easy_login', as: 'easylogin'
end
