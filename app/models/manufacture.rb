class Manufacture < ActiveRecord::Base
  attr_accessible :name,:description,:link,:image
  has_many :manufacture_items
  has_many :items, through: :manufacture_items


  has_attached_file :image,
                    :styles => {
                        :thumb=> "100x100",
                        :small  => "250x250",
                        :large => "600x600>"
                    }

end