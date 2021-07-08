class Review < ApplicationRecord
  belongs_to :user

  with_options presence: true do
    validates :review_text, length: { maximum: 75 }
  end
end
