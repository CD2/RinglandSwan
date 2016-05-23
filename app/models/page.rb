class Page < ApplicationRecord

  has_many :banner_images

  scope :menu, -> { order(order: :asc).where(include_in_menu: true) }
  scope :featured, -> { where(featured: true) }

  enum sidebar: [:gallery, :in_menu]

  extend FriendlyId
  friendly_id :name, use: :slugged

end
