class CreateProdutos < ActiveRecord::Migration
  def change
    create_table :produtos do |t|
      t.string :descricao
      t.decimal :preco, :precision => 10, :scale => 2
      t.integer :quantidade

      t.timestamps null: false
    end
  end
end
