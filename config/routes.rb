Rails.application.routes.draw do
  resources :produtos
  resources :vendas
  resources :enderecos
  resources :compradores
  resources :fornecedores
end
