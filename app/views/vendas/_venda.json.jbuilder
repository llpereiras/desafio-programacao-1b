json.extract! venda, :id, :comprador_id, :fornecedor_id, :created_at, :updated_at
json.url vendas_url(venda, format: :json)
