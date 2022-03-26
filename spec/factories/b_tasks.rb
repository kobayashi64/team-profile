FactoryBot.define do
  factory :b_task do
    failure_contact{ Faker::Number.between(from: 0, to: 100) }
    alarm_support { Faker::Number.between(from: 0, to: 100) }
    status_change { Faker::Number.between(from: 0, to: 100) }
    sending_media { Faker::Number.between(from: 0, to: 100) }
    job_start { Faker::Number.between(from: 0, to: 100) }
    b_certification_id { Faker::Number.between(from: 1, to: 3) }
    association :user
  end
end
