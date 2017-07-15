Rails.application.routes.draw do
  resources :static_pages
  resources :posts
  devise_for :admins
  root 'static_pages#index'
 #get  'static_pages/home'
  get  'static_pages/only_view_show_all'
  get  'static_pages/about'
 #get  'static_pages/only_view_show_one/:id'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #root 'users#index'




end
