class CreateMyItemsPhotos < ActiveRecord::Migration
  def change
    create_table :my_items_photos do |t|
      t.integer :my_item_id
      t.string :image_file_name
      t.string :image_content_type
      t.integer :image_file_size
      t.timestamps
    end
  end
end
