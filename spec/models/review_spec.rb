require 'rails_helper'
describe(Review) do
  it { should validate_presence_of :author }
end
