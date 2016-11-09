Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api, defaults: { format: :json } do
    resources :users, only: [:create, :show]
    resources :posting_saves, only: [:destroy]
    resources :companies, only: [:index, :show] do
      resources :reviews, only: [:index, :create]
    end
    resources :postings, only: [:create, :index, :show] do
      resources :posting_applications, only: [:create]
      resources :posting_saves, only: [:create]
    end
    resource :session, only: [:create, :destroy]
  end
  root to: "static_pages#show"
end
