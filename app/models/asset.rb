class Asset < ActiveRecord::Base
  attr_accessible :item_id, :image
  belongs_to :item
  has_attached_file :image,
                    :styles => {
                        :thumb=> "100x100#",
                        :small  => "250x250#",
                        :large => "600x600>"
                    }
end
