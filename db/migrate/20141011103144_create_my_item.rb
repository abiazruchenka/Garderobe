class CreateMyItem < ActiveRecord::Migration
  def change
    create_table :my_items do |t|
      t.text :title
      t.text :description
      t.text :state
      t.text :price
      t.belongs_to :item, index: true
      t.belongs_to :'manufacture_item.rb', index: true

    end
  end
end
