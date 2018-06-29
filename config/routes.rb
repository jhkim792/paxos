Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    namespace :messages do
      get :ping, to: "ping#show", as: :ping
      post "/messages", to: "messages#create", as: :messages
      get "/messages/:id", to: "messages#show", as: :message
    end
  end

  resources :questions
  
  root "landing#show"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
