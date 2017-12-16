class Event < ApplicationRecord
  mount_uploader :cover, CoverUploader

  belongs_to :place
  belongs_to :organizer
  has_many :subscribers
  accepts_nested_attributes_for :place

  scope :ordered_by_date, -> { order(created_at: :desc) }

  validates :title, presence: true
  validates :description, presence: true
  validates :started_at, presence: true

  def google_map(location)
    "https://maps.googleapis.com/maps/api/staticmap?center=#{location}&size=300x300&zoom=17&markers=color:blue%7Clabel:S%7C{#{location}}"
  end
end
