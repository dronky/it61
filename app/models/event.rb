class Event < ApplicationRecord
  belongs_to :place
  belongs_to :organizer
  accepts_nested_attributes_for :place

end
