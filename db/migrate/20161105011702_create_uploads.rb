class CreateUploads < ActiveRecord::Migration
  def change
    create_table :uploads do |t|
      t.string :arquivo
      t.integer :status, default: '0'

      t.timestamps null: false
    end
  end
end
