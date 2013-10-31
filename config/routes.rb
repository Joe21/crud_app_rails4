CrudRails4::Application.routes.draw do
  resources :customers
  resources :goods
  resources :stores

  root :to => 'customers#index'

end
