FactoryGirl.define do
  factory :event do
    title "Ruby MeetUp"
    description "Best RoR meetup"
    started_at "2017-12-13 00:00:00.000000"
    association :organizer
    association :place
  end
end
