class Venda < ActiveRecord::Base
  belongs_to :cliente
  belongs_to :fornecedor
  belongs_to :produto

  def self.criar(data)

    Venda.
    # TODO Criar adapter
    # TODO Verificar tratamentos a fazer
    # TODO Criar documentacao
    # TODO crair home

    puts "Criar registros"
  end
end
