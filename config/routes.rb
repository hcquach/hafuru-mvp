Rails.application.routes.draw do
  devise_for :users, controllers: {
        sessions: 'users/sessions',
        registrations: 'users/registrations'
      }

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :gratitudes  do
    resources :matches, only: [ :index, :create, :destroy ]
  end
  resources :matches, only: [:show]

  resources :collaborations, only: [ :index, :show, :create, :destroy ] do
    resources :collaboration_items
  end

  resources :chat_rooms, only: [ :show ] do
    resources :messages, only: [ :create ]
  end

  post 'collaboration_items/:collaboration_item_id/gratitudes', to: 'collaboration_gratitudes#create', as: :collaboration_item_gratitudes
  get 'credits', to: 'pages#credits', as: :credits
  get 'shop', to: 'pages#shop', as: :shop
  get 'about', to: 'pages#about', as: :about

  mount ActionCable.server => "/cable"

end
