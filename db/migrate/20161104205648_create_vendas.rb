class CreateVendas < ActiveRecord::Migration
  def change
    create_table :vendas do |t|
      t.references :comprador, index: true, foreign_key: true
      t.references :fornecedor, index: true, foreign_key: true
      t.references :produto, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
