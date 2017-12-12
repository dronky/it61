require 'rails_helper'

RSpec.describe Organizer, type: :model do
  it { should validate_presence_of :name }
  it { should have_many :events }
end

