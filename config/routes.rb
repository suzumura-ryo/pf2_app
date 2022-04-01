Rails.application.routes.draw do
  
  root 'home#logged_in_top'
  get 'signup',      to: 'users#new',        as: 'signup'
  post'user/create', to: 'users#create',     as: 'user_create'
  get 'users/index'
  get 'users/show'
  get 'users/edit'
  get 'users/update'
  get 'login',       to: 'sessions#new'
  post'login',       to: 'sessions#create'
  delete'logout',    to: 'sessions#destroy', as: 'logout'
  

end
