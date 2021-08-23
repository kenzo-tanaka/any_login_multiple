Rails.application.routes.draw do
  devise_for :staffs
  devise_for :users
  root to: 'welcome#index'

  mount AnyLoginMultiple::Engine => '/any_login'
end
