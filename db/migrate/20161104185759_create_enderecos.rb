class CreateEnderecos < ActiveRecord::Migration
  def change
    create_table :enderecos do |t|
      t.references :cliente, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
