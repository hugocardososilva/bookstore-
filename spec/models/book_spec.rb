require 'rails_helper'

RSpec.describe Book do
  context 'validations ' do
    it { should validate_presence_of(:title) }
  end
  context 'associations ' do
    it { is_expected.to be_mongoid_document }
    it { is_expected.to belong_to(:author) }
    it { is_expected.to have_many(:images) }
  end
end
