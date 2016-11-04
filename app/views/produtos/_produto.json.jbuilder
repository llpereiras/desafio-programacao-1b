json.extract! produto, :id, :descricao, :preco, :quantidade, :created_at, :updated_at
json.url produto_url(produto, format: :json)