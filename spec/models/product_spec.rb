describe(Product) do
  
  it { should validate_length_of(:name).is_at_most(100) }
end
