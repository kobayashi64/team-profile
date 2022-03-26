FactoryBot.define do
  factory :c_task do
    card_lending { Faker::Number.between(from: 0, to: 100) }
    get_log { Faker::Number.between(from: 0, to: 100) }
    surveillance_monitor { Faker::Number.between(from: 0, to: 100) }
    check_the_log { Faker::Number.between(from: 0, to: 100) }
    job_confirmation { Faker::Number.between(from: 0, to: 100) }
    c_certification_id { Faker::Number.between(from: 1, to: 3) }
    association :user
  end
end
