Rails.application.routes.draw do

  get 'home/index'

  devise_for :users
	root to: "home#index"
	resources :images
	resources :users

   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
