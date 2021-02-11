# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'books/index', type: :view do
  before(:each) do
    assign(:books, [
             Book.create!(
               title: 'Title',
               description: 'MyText',
               active: false,
               author: FactoryBot.create(:author)
             ),
             Book.create!(
               title: 'Title',
               description: 'MyText',
               active: false,
               author: FactoryBot.create(:author)
             )
           ])
  end

  it 'renders a list of books' do
    render
    assert_select 'tr>td', text: 'Title'.to_s, count: 2
    assert_select 'tr>td', text: 'MyText'.to_s, count: 2
    assert_select 'tr>td', text: false.to_s, count: 2
  end
end
