require 'rails_helper'

RSpec.describe Book do
  context 'validations ' do
    it { should validate_presence_of(:title) }
  end

  context 'scope' do
    before do
      2.times do |t|
        author = FactoryBot.create(:author, name:"Joao")
        FactoryBot.create(:book, title: "Book #{t}", author: author)
      end
    end
    it 'by_name' do
      expect(Book.by_title("Book").count).to eq(2)
      expect(Book.by_title("Test").count).to eq(0)
    end

    it 'by_author' do
      expect(Book.by_author("Joao").count).to eq(4)
      expect(Book.by_author("Jose").count).to eq(0)
    end
  end
  context 'search' do
    before do
      2.times do |t|
        author = FactoryBot.create(:author, name:"Joao")
        FactoryBot.create(:book, title: "Book #{t}", author: author)
      end
    end
    it { expect(Book.search("Book").count).to eq(2) }
    it { expect(Book.search("Test").count).to eq(0) }
    it { expect(Book.search("Joao").count).to eq(6) }
    it { expect(Book.search("Jose").count).to eq(0) }
  end

  context 'associations ' do
    it { is_expected.to be_mongoid_document }
    it { is_expected.to belong_to(:author) }
    it { is_expected.to have_many(:images) }
  end

end
