FactoryBot.define do
  factory :a_task do
    failure_flow { Faker::Number.between(from: 0, to: 100) }
    incident_handover_material { Faker::Number.between(from: 0, to: 100) }
    operation_handover_material { Faker::Number.between(from: 0, to: 100) }
    a_certification_id { Faker::Number.between(from: 1, to: 3) }
    association :user
  end
end
