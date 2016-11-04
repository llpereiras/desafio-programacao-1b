class Venda < ActiveRecord::Base
  belongs_to :cliente
  belongs_to :fornecedor
  belongs_to :produto

  def self.criar(data)
    puts "Criar registros"
  end
end
