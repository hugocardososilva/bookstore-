# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'books/show', type: :view do
  before(:each) do
    @book = assign(:book, Book.create!(
                            title: 'Title',
                            description: 'MyText',
                            active: false,
                            author: FactoryBot.create(:author)
                          ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/false/)
  end
end
