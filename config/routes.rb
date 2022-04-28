Rails.application.routes.draw do
  
  root 'home#logged_in_top'
  get 'signup',             to: 'users#new',        as: 'signup'
  post'user/create',        to: 'users#create',     as: 'user_create'
  get 'users/index',        to: 'users#index',      as: 'index'
  get 'users/:id',          to: 'users#show',       as: 'show'
  get 'users/:id/edit',     to: 'users#edit',       as: 'edit'
  patch 'users/:id/update', to: 'users#update',     as: 'update'
  get 'login',              to: 'sessions#new'
  post'login',              to: 'sessions#create'
  delete'logout',           to: 'sessions#destroy', as: 'logout'
  

end
