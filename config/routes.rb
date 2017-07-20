Rails.application.routes.draw do

  resources :posts
  devise_for :admins
  root 'posts#index'
  get  'static_pages/home' => 'posts#show_current_admin'
  get  'static_pages/about'
  #get  'posts#show_current_admin'
  #get 'show_self_posts' => 'posts#show_current_admin'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #root 'users#index'




end
