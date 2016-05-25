class Page < ApplicationRecord

  attr_accessor :images, :gallery_tags

  has_many :banner_images

  scope :menu, -> { order(order: :asc).where(include_in_menu: true) }
  scope :featured, -> { where(featured: true) }

  enum sidebar: [:gallery, :in_menu]

  extend FriendlyId
  friendly_id :name, use: :slugged

  has_many :page_tags
  has_many :tags, through: :page_tags
  has_many :gallery_images, through: :tags

end
