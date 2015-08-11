class CreateManufacture < ActiveRecord::Migration
  def change
    create_table :manufactures do |t|
      t.text :name
      t.text :description
      t.text :link
      t.string :image_file_name
      t.string :image_content_type
      t.integer :image_file_size
    end
  end
end
