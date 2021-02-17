FactoryBot.define do
  factory :image do
    title { FFaker::NameBR.name }
    url { "https://i.pinimg.com/564x/88/6f/79/886f79ee47c2e51c4290eacafaa66fe1.jpg" }
  end
end
