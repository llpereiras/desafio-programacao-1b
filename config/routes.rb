Rails.application.routes.draw do

  get "vendas/upload" => "vendas#upload"

  resources :produtos
  resources :vendas
  resources :enderecos
  resources :compradores
  resources :fornecedores
end
