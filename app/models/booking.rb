class Booking < ApplicationRecord
  validates :name, :email, presence: true

  enum booking_type: [:table, :event]

end
