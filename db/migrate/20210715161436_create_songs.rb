class CreateSongs < ActiveRecord::Migration[6.0]
  def change
    create_table :songs do |t|
      t.string :song_name,   null: false, default: "", unique: true
      t.string :song_image,  null: false, default: "", unique: true
      t.string :song_url,    null: false, default: "", unique: true
      t.string :song_composer,null: false, default: "", unique: true
      t.timestamps
    end
  end
end
