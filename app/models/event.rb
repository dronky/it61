class Event < ApplicationRecord
  mount_uploader :cover, CoverUploader

  belongs_to :place
  belongs_to :organizer
  accepts_nested_attributes_for :place

  scope :ordered_by_date, -> { order(created_at: :desc) }

  validates :title, presence: true
  validates :description, presence: true
  validates :started_at, presence: true
end
