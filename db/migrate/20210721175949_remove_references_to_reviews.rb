class RemoveReferencesToReviews < ActiveRecord::Migration[6.0]
  def change
    remove_reference :reviews, :song, null: false, foreign_key: true
  end
end