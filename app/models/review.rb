class Review < ApplicationRecord
  belongs_to :user

  with_options presence: true do
    validates :review_text, length: { maximum: 75 }
    validates :rate,numericality: {
      less_than_or_equal_to: 5,
      greater_than_or_equal_to: 1}
  end
end
