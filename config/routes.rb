Rails.application.routes.draw do
  
  root 'home#top'
  get 'signup', to: 'users#new', as: 'signup'
  get 'users/create'
  get 'users/index'
  get 'users/show'
  get 'users/edit'
  get 'users/update'

end
