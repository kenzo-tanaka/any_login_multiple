FactoryBot.define do
  factory :staff do
    sequence(:email) { |n| "example-staff#{n}@example.com" }
    password { '123456' }
  end
end
