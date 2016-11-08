class Produto < ActiveRecord::Base
  
  def self.busca_cadastra(descricao, preco, quantidade)
    produto = Produto.where(descricao: descricao).first
    produto = Produto.create({descricao: descricao, preco: preco, quantidade: quantidade}) unless produto
    produto
  end
  
end
