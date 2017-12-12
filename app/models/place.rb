class Place < ApplicationRecord
  has_many :events

  geocoded_by :full_address
  after_validation :geocode

  def full_address
    "#{city} #{address}"
  end
end
