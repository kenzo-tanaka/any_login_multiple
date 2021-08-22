FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "example-user#{n}@example.com" }
    password { '123456' }
  end
end
