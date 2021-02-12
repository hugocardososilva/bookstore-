FactoryBot.define do
  factory :image do
    title { FFaker::NameBR.name }
    upload { "MyString" }
  end
end
