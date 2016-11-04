Rails.application.routes.draw do
  resources :vendas
  resources :enderecos
  resources :compradores
  resources :fornecedores
end
