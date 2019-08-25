require 'rails_helper'

describe(Review) do
  it { should validate_presence_of :author }
  it { should validate_presence_of :content_body}
  it { should validate_presence_of :rating}
end

describe(Review)do
it("should create a review for a product") do
  product = Product.create({name: "green beans", cost: 5.00, country_of_origin: "USA"})
  product.save!
  review = product.reviews.create({author: "hunter s. thompson", content_body: "Lorem ipsum dolar", rating: 3})
  review.save!
  expect(review).to(eq(review))
  end

  it("should edit a review") do
    product = Product.create({name: "green beans", cost: 5.00, country_of_origin: "USA"})
    product.save!
    review = product.reviews.create({author: "hunter s. thompson", content_body: "Lorem ipsum dolar", rating: 3})
    review.save!
    review.update!({author: "Josh"})
    expect(review.author).to(eq("Josh"))
  end
end
