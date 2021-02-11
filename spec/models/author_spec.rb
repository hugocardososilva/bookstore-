require 'rails_helper'

RSpec.describe Author, type: :model do
  context 'associations ' do
    it { is_expected.to be_mongoid_document }
    #FIXME: FIX ACTIVE RECORD CALL IN MONGOID
    xit { is_expected.to have_many(:books) }
  end
end
