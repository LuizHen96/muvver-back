Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users do
        resources :travels
      end
      get 'travels', to: 'travels#index'
      get 'suggestion', to: 'suggestion#index'
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end