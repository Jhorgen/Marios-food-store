require 'rails_helper'

RSpec.describe "Products", type: :feature do

  it "verifies the home page" do
    visit('/')
  expect(page).to have_content 'Most Reviewed Products'
  expect(page).to have_content 'Recently Reviewed'
  expect(page).to have_content 'American made products'

  end
end
