class Place < ApplicationRecord
  has_many :events

  validates :address, prsence: true
  validates :city, prsence: true

  geocoded_by :full_address
  after_validation :geocode

  def full_address
    "#{city} #{address}"
  end
end
