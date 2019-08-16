class Review < ApplicationRecord
  belongs_to :product
  validates :author, presence: true
end
