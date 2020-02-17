Rails.application.routes.draw do
  

  scope 'api/v1/' do
    resources :news, defaults: { format: 'json' }
    resources :authors, defaults: { format: 'json' }
    resources :categories, defaults: { format: 'json' }
  end
  
  devise_for :users
  namespace :admin do
      resources :categories
      resources :news
      resources :authors
      root to: "news#index"
    end
  # resources :categories
  # resources :news
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
