Rails.application.routes.draw do
  resources :prospect_characteristics
  resources :prospect_companies
  resources :prospects
  devise_for :users
  get 'pages/home'
  get 'dashboard/index'

  resources :client_companies
  resources :clients
  resources :campaigns
  resources :campaign_results

  authenticated :user do
    root 'dashboard#index', as: :authenticated_root
  end

  devise_scope :user do
    root 'devise/sessions#new'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
