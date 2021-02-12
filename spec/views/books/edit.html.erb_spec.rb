# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'books/edit', type: :view do
  before(:each) do
    @book = assign(:book, Book.create!(
                            title: 'MyString',
                            description: 'MyText',
                            active: false,
                            author: FactoryBot.create(:author)
                          ))
  end

  it 'renders the edit book form' do
    render

    assert_select 'form[action=?][method=?]', book_path(@book), 'post' do
      assert_select 'input[name=?]', 'book[title]'

      assert_select 'textarea[name=?]', 'book[description]'

      assert_select 'input[name=?]', 'book[active]'
    end
  end
end