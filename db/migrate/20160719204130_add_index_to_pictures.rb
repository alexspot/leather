class AddIndexToPictures < ActiveRecord::Migration[5.0]
  def change
    add_column :pictures, :product_id, :integer
    add_index :pictures, :product_id
  end
end
