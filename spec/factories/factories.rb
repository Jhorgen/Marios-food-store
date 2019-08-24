require 'rails_helper'

FactoryBot.define do
   factory :product do
   name {"Rama Agency"}
   cost {15.00}
   country_of_origin {"USA"}
   end
end
