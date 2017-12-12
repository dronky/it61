require 'rails_helper'

RSpec.describe Event, type: :model do
  it { should validate_presence_of :title }
  it { should validate_presence_of :description }
  it { should validate_presence_of :started_at }
  it { should belong_to :place }
  it { should belong_to :organizer }
  it { should accept_nested_attributes_for :place }
end
