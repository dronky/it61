class Event < ApplicationRecord
  belongs_to :place
  belongs_to :organizer
  accepts_nested_attributes_for :place

  validates :title, precence: true
  validates :description, precence: true
  validates :started_at, precence: true

end
