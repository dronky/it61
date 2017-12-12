class Organizer < ApplicationRecord
  has_many :events

  validates :name, precence: true
end
