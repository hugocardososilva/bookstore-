if Rails.env.development?
  4.times do |t|
    FactoryBot.create(:author, :whit_books)
  end
  FactoryBot.create(:user)
end