STARTER_PASSWORD ||= "secretpw"
FactoryGirl.define do
  factory :user do
    name      { Faker::Name.name }
    email     { Faker::Internet.email }
    password              STARTER_PASSWORD
    password_confirmation STARTER_PASSWORD
  end
end
