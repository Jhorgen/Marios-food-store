require 'rails_helper'

RSpec.describe "Products", type: :feature do

  it "verifies the home page" do
    visit('/')
  expect(page).to have_content 'Most Reviewed Products'
  expect(page).to have_content 'Recently Reviewed'
  expect(page).to have_content 'American made products'
  end

  it "adds a new product" do
  visit '/'
  click_link 'View all Products'
  click_link 'Add a product'
  fill_in 'Name', :with => 'tester'
  fill_in 'Cost', :with => '16'
  fill_in 'Country of origin', :with => 'Guam'
  click_on 'Create Product'
  expect(page).to have_content 'Product successfully added!'
  expect(page).to have_content 'Tester'
  expect(page).to have_content '$16'
  expect(page).to have_content 'Guam'
end

  it "edits a products' details" do
    visit '/'
    click_link 'View all Products'
    click_link 'Add a product'
    fill_in 'Name', :with => 'tester'
    fill_in 'Cost', :with => '16'
    fill_in 'Country of origin', :with => 'Guam'
    click_on 'Create Product'
    click_on 'Edit'
    fill_in 'Name', :with => 'newtest'
    fill_in 'Cost', :with => '5'
    click_on 'Update Product'
    expect(page).to have_content 'Newtest'
    expect(page).to have_content '$5'
    expect(page).to have_content 'Guam'
  end

    it "deletes a product" do
  visit '/'
  click_link 'View all Products'
  click_link 'Add a product'
  fill_in 'Name', :with => 'tester'
  fill_in 'Cost', :with => '16'
  fill_in 'Country of origin', :with => 'Guam'
  click_on 'Create Product'
  click_link 'Delete product'
  expect(page).to_not have_content 'Tester'
  end
end
