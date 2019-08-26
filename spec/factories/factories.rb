require 'rails_helper'

FactoryBot.define do

  factory :product do
    name {"green beans"}
    cost {5.00}
    country_of_origin {"USA"}
  end

  factory :review do
    author {"hunter s. thompson"}
    content_body {"Lorem ipsum dolor"}
    rating {3}
  end
end
#
