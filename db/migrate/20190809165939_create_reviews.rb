class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :author
      t.string :content_body
      t.interger :rating
    end
  end
end
