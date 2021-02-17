require 'rails_helper'

RSpec.describe Author, type: :model do
  context 'validations ' do
    it { should validate_presence_of(:name) }
  end

  context 'associations ' do
    it { is_expected.to be_mongoid_document }
    it { is_expected.to have_many(:books) }
  end

  context 'scope' do
    before do
      2.times do |t|
        FactoryBot.create(:author, name:"Joao")
      end
    end
    it 'by_name' do
      expect(Author.by_name("Joao").count).to eq(2)
      expect(Author.by_name("Jose").count).to eq(0)
    end
  end
end
