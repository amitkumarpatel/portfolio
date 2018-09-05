FactoryBot.define do
  factory :contact do
    first_name     { Faker::Name.first_name }
    last_name     { Faker::Name.last_name }
    email         { Faker::Internet.email }
    subject       { Faker::Lorem.sentence(3, false, 4) }
    comment       { Faker::Lorem.paragraph }
  end
end