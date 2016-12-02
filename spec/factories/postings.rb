FactoryGirl.define do
  factory :posting do
    content { Faker::Lorem.sentence }
    user nil
  end
end
