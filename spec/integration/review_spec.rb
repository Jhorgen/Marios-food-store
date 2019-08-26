require 'rails_helper'

RSpec.describe "Products", type: :feature do

  it "adds a review to a product" do
    visit '/'
    click_link 'View all Products'
    click_link 'Add a product'
    fill_in 'Name', :with => 'tester'
    fill_in 'Cost', :with => '16'
    fill_in 'Country of origin', :with => 'Guam'
    click_on 'Create Product'
    click_on 'Add review'
    fill_in 'Author', :with => 'alex'
    fill_in 'Content body', :with => 'Lorem ipsum dolar'
    fill_in 'Rating', :with => '4'
    click_on 'Create Review'
    expect(page).to have_content 'Alex'
    expect(page).to have_content 'Lorem ipsum dolar'
    expect(page).to have_content '4 stars'
  end
end
