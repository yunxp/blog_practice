Rails.application.routes.draw do
	mount Bootsy::Engine => '/bootsy', as: 'bootsy'
	
  devise_for :system_users, path: 'account', :controllers => { registrations: 'registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'home#index'
  get 'about', to: 'home#about'

  resources :system_users, only: [:show, :edit, :update]
  resources :travels
end
