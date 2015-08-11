class CreateManufactureItems < ActiveRecord::Migration
  def change
    create_table :manufacture_items do |t|
  t.belongs_to :manufacture, index: true
  t.belongs_to :item, index: true
  t.text :link
    end
  end
end
