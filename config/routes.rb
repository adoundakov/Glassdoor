Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api, defaults: {format: :json} do
    resources :users, only: [:create, :show] #will add update/destroy at later time
    resource :session, only: [:create, :destroy]
  end
  root to: "static_pages#show"
end
