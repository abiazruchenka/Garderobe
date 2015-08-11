class ManufactureItem < ActiveRecord::Base
  attr_accessible :manufacture_id,:item_id,:link
  belongs_to :manufacture
  belongs_to :item
end