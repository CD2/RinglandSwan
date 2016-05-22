class GalleryImage < ApplicationRecord

  mount_uploader :image, GalleryUploader

end
