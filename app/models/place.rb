class Place < ApplicationRecord
  has_many :events

  validates :address, presence: true
  validates :city, presence: true

  geocoded_by :full_address
  after_validation :geocode

  def full_address
    "#{city} #{address}"
  end
end
