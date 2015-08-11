class CreateManufactureItemsPhotos < ActiveRecord::Migration
  def change
    create_table :manufacture_items_photos do |t|
      t.integer :manufacture_item_id
      t.string :image_file_name
      t.string :image_content_type
      t.integer :image_file_size
      t.timestamps
    end
  end
end
