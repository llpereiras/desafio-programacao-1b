json.extract! comprador, :id, :nome, :created_at, :updated_at
json.url compradores_url(comprador, format: :json)
