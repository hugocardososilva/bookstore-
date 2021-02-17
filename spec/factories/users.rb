FactoryBot.define do
  factory :user do
    email { "admin@example.com" }
    password { "12345"}
    password_confirmation { "12345" }
  end
end
