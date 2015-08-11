class Item < ActiveRecord::Base
  self.inheritance_column = :foo
  attr_accessible :title,:description,:type,:assets_attributes
  has_many :manufacture_items
  has_many :manufactures, through: :manufacture_items
  has_many :assets, :dependent => :destroy
  accepts_nested_attributes_for :assets, :allow_destroy => true
end

