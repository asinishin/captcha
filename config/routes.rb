Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :registrations, only: [:new, :index]
  resources :users, controller: :registrations, only: :create

end
