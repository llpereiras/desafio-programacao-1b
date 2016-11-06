Rails.application.routes.draw do

  root "home#index"
  resources :uploads, except: [:delete, :update]
  get "uploads/reprocessar/:id" => "uploads#reprocessar"

  resources :produtos
  resources :vendas
  resources :enderecos
  resources :compradores
  resources :fornecedores
end
