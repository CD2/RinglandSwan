class GalleryTag < ApplicationRecord

  belongs_to :gallery_image
  belongs_to :tag

end
