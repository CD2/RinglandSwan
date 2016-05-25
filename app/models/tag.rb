class Tag < ApplicationRecord

  has_many :gallery_tags
  has_many :gallery_images, through: :gallery_tags

end
