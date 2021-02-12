FactoryBot.define do
  factory :author do
    name { FFaker::NameBR.name }
    email { FFaker::Internet.email }

    trait :whit_books do
      before(:create) do
        create_list(:book, 5)
      end
    end
  end
end
