Rails.application.routes.draw do
  namespace :api, defaults: { format: :json} do
    namespace :v1 do
      resources :greetings, only: [:index] 
    end
  end

  root 'api/v1/greetings#index'
end
