Rails.application.routes.draw do
  resources :users
  resources :direct_messages
  root "sessions#new"
  get 'login' => "sessions#new", as: 'new_session'
  post  'login' => 'sessions#create'
  get 'logout' => 'sessions#destroy'



  get 'direct_messages/:id' => 'direct_messages#show', as: 'specific_direct_message'
  get 'direct_messages/index' => 'direct_messages#index'
  get 'direct_messages/new' => "direct_messages#new", as: "new"
  post 'direct_messages' => "direct_messages#create"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
