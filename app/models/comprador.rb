class Comprador < ActiveRecord::Base
  has_one :endereco
  
  def self.busca_cadastra(nome, logradouro)
    comprador = Comprador.where(nome: nome).first
    comprador = Comprador.create({nome: nome}) unless comprador  
    Endereco.create({comprador: comprador,  logradouro: logradouro}) unless comprador.endereco
    comprador
  end
  
end
