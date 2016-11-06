Rails.application.routes.draw do

  resources :uploads, only: [:index, :show, :new]
  get "upload/reprocesssar" => "upload#reprocesssar"

  resources :produtos
  resources :vendas
  resources :enderecos
  resources :compradores
  resources :fornecedores
end
