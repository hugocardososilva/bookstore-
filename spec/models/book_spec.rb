require 'rails_helper'

RSpec.describe Book do
  context 'validations ' do
    it { should validate_presence_of(:title) }
  end
  context 'associations ' do
    xit { is_expected.to belong_to(:author) }
  end
end
