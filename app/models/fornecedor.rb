class Fornecedor < ActiveRecord::Base

  def self.busca_cadastra(nome)
    fornecedor = Fornecedor.where(nome: nome).first
    fornecedor = Fornecedor.create({nome: nome}) unless fornecedor
    fornecedor
  end

end
