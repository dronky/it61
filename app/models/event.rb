class Event < ApplicationRecord
  mount_uploader :cover, CoverUploader

  belongs_to :place
  belongs_to :organizer
  accepts_nested_attributes_for :place

  validates :title, presence: true
  validates :description, presence: true
  validates :started_at, presence: true

end
