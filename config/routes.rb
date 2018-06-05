Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :gratitudes  do
    resources :matches, only: [ :index, :show, :create, :destroy ]
  end
  resources :collaborations, only: [ :create, :destroy ] do
    resources :collaboration_items
  end

  get 'credits', to: 'pages#credits', as: :credits
  get 'shop', to: 'pages#shop', as: :shop
end
