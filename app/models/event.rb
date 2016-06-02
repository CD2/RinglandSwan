class Event < ApplicationRecord

  default_scope -> { order created_at: :desc }
  mount_uploader :banner, ImageUploader
  mount_uploader :attachment, FileUploader

end
