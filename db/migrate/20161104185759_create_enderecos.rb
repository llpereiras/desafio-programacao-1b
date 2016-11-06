class CreateEnderecos < ActiveRecord::Migration
  def change
    create_table :enderecos do |t|
      t.string :logradouro
      t.references :comprador, index: true, foreign_key: true

      t.timestamps null: false
    end

  end
end
