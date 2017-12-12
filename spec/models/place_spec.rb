require 'rails_helper'

RSpec.describe Place, type: :model do
  it { should have_many :events }
  it { should validate_presence_of :address }
  it { should validate_presence_of :city }
end

