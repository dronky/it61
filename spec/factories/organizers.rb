FactoryGirl.define do
  factory :organizer do
    name "Vasya"
  end

  factory :organizer2, class: 'Organizer' do
    name "Petya"
  end
end
