Rails.application.routes.draw do

  root "home#index"
  resources :uploads, except: [:delete, :update]
  get "uploads/reprocessar/:id" => "uploads#reprocessar"

  resources :produtos, only: [:index]
  resources :vendas, only: [:index]
  resources :enderecos, only: [:index]
  resources :compradores, only: [:index]
  resources :fornecedores, only: [:index]
end
