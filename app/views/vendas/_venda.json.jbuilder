json.extract! venda, :id, :cliente_id, :fornecedor_id, :created_at, :updated_at
json.url venda_url(venda, format: :json)