Rails.application.routes.draw do
  root :to => 'paintings#index'
  namespace :api do
    namespace :v1 do
      resources :paintings
      resources :artists
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
