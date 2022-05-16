Rails.application.routes.draw do
  
  get 'recipes/new'
  get 'recipes/index'
  get 'recipes/show'
  root 'home#top'
  get 'procedures/index',         to: 'procedures#index',     as: 'procedures_index'
  get 'procedures/:id/show',      to: 'procedures#show',      as: 'procedures_show'
  get 'procedures/new',           to: 'procedures#new',       as: 'procedures_new'
  post 'procedures/create',       to: 'procedures#create',    as: 'procedure_create'
  get 'procedures/:id/edit',      to: 'procedures#edit',      as: 'procedure_edit'
  patch 'procedures/:id/update',  to: 'procedures#update',    as: 'procedure_update'
  delete 'procedures/destroy',    to: 'procedures#destroy',   as: 'procedure_destroy'
  
  get 'posts/index'
  get 'search_result',            to: 'posts#search_result',  as: 'result'
  
  get 'signup',                   to: 'users#new',            as: 'signup'
  post'user/create',              to: 'users#create',         as: 'user_create'
  get 'users/index',              to: 'users#index',          as: 'index'
  get 'users/:id',                to: 'users#show',           as: 'show'
  get 'users/:id/edit',           to: 'users#edit',           as: 'edit'
  patch 'users/:id/update',       to: 'users#update',         as: 'update'
  get 'login',                    to: 'sessions#new'
  post'login',                    to: 'sessions#create'
  delete'logout',                 to: 'sessions#destroy',     as: 'logout'
  
  resources :users
end
