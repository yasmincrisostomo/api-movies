Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :movies, only: [:index]
      resources :movies, only: [:index]
    end
  end
  root to: 'api/v1/movies#index', defaults: { format: :json }
end
