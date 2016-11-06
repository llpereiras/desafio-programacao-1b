class AddUploadsToVendas < ActiveRecord::Migration
  def change
    add_reference :vendas, :upload, index: true, foreign_key: true
  end
end
