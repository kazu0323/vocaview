class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.text :review_text, null: false
      t.string :review_title, null: false
      t.references :user,  null: false,foreign_key: true
      t.references :song,  null: false,foreign_key: true
      t.timestamps
    end
  end
end