require 'rails_helper'

describe (Product) do
  it { should validate_presence_of :name }
  it { should validate_presence_of :cost }
  it { should validate_presence_of :country_of_origin }
end

describe (Product) do
  it("should create a product") do
    product = Product.create({name: "rama agnecy", cost: 15.00, country_of_origin: "USA"})
    product.save!
    expect(Product.all).to(eq([product]))
  end

  it("should titalize a product") do
    product = Product.create({name: "green beans", cost: 5.00, country_of_origin: "USA"})
    product.save!
    expect(product.name).to(eq("Green Beans"))
  end

  it("should edit a product") do
    product = Product.create({name: "green beans", cost: 5.00, country_of_origin: "USA"})
    product.save!
    product.update!({name: "Green Beans Yo"})
    expect(product.name).to(eq("Green Beans Yo"))
  end

  it("should delete a product") do
    product1 = Product.create({name: "green beans", cost: 5.00, country_of_origin: "USA"})
    product2 = Product.create({name: "green beans yo", cost: 5.00, country_of_origin: "USA"})
    product1.destroy
    expect(Product.all).to(eq([product2]))
  end
end
