Rails.application.routes.draw do

  resources :uploads
  get "vendas/upload" => "vendas#upload"

  resources :produtos
  resources :vendas
  resources :enderecos
  resources :compradores
  resources :fornecedores
end
