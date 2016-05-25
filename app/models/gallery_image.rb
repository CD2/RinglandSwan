class GalleryImage < ApplicationRecord

  attr_accessor :tags

  mount_uploader :image, GalleryUploader

  has_many :gallery_tags
  has_many :tags, through: :gallery_tags

end
