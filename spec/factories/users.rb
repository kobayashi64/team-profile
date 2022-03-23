FactoryBot.define do
  factory :user do
    name { Faker::Name.last_name }
    email { Faker::Internet.free_email }
    introduction { Faker::Lorem.sentence }
    password { Faker::Internet.password(min_length: 6)}
    password_confirmation { password }
    group_id	{ Faker::Number.between(from: 1, to: 5) }
    prefecture_id{ Faker::Number.between(from: 1, to: 48) }
    birthday { '1980-01-01' }
    assignment_date { '2015-04-01' }

    after(:build) do |user|
      user.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
  end
end
