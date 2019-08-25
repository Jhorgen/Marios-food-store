class Review < ApplicationRecord
  before_save(:titleize_review)

  belongs_to :product
  validates :author, presence: true
  validates :content_body, presence: true
  validates :rating, presence: true

  private
  def titleize_review
    self.author = self.author.titleize
  end
end
