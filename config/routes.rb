Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  namespace :api, defaults: { format: :json } do
    resources :vtubers, only: [:index, :show]
  end

  #config/routes.rb

  get "*path", to: "static_pages#frontend_index"
end
