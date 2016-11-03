Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api, defaults: { format: :json } do
    resources :users, only: [:create, :show] do # will add update/destroy at later time
      resources :posting_saves, only: [:create, :index]
    end

    resources :posting_applications, only: [:index]
    resources :posting_saves, only: [:destroy]
    resources :companies, only: [:create, :index, :show] # will add update at later time
    resources :postings, only: [:create, :index, :show] do  # will add update / destroy at later time
      resources :posting_applications, only: [:create]
    end
    resource :session, only: [:create, :destroy]
  end
  root to: "static_pages#show"
end
