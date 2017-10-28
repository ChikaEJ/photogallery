Rails.application.routes.draw do

  root 'pictures#index'
  resources :pictures do
    resources :comments
  end
  ActiveAdmin.routes(self)
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
