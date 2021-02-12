require 'rails_helper'

RSpec.describe Author, type: :model do
  context 'validations ' do
    it { should validate_presence_of(:name) }
  end
  context 'associations ' do
    it { is_expected.to be_mongoid_document }
    it { is_expected.to have_many(:books) }
  end
end
