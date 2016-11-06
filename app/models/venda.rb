class Venda < ActiveRecord::Base
  belongs_to :comprador
  belongs_to :fornecedor
  belongs_to :produto

  def self.criar(data)
    begin
      comprador = Comprador.busca_cadastra(data[0], data[4])
      produto = Produto.busca_cadastra(data[1], data[2], data[3])
      fornecedor = Fornecedor.busca_cadastra(data[5])
      Venda.create({comprador: comprador, produto: produto, fornecedor: fornecedor})
    rescue
      raise "Impossível criar vendas"
    end
  end
end
