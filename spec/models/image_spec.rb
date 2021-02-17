require 'rails_helper'

RSpec.describe Image, type: :model do
  context 'associations ' do
    it { is_expected.to be_mongoid_document }
    it { is_expected.to belong_to(:book) }
  end
end
