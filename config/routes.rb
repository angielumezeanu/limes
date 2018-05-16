Rails.application.routes.draw do
  devise_for :users, :skip => [:sessions]
  as :user do
    get 'sign_in' => 'devise/sessions#new', :as => :new_user_session
    post 'sign_in' => 'devise/sessions#create', :as => :user_session
    delete 'sign_out' => 'devise/sessions#destroy', :as => :destroy_user_session
  end
  resources :users
  resources :photos
  resources :saccesses
  resources :lands
  resources :monuments
  resources :preservations
  resources :scategories
  resources :sector_bibliographies
  resources :sectors
  resources :bibliographies
  resources :components
  resources :coordinates
  resources :counties
  get 'home/index'
  root 'sectors#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
