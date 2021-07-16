class Song < ApplicationRecord
  has_many :reviews

  with_options presence: true do
    validates :song_name
    validates :song_image
    validates :song_url
    validates :song_composer
  end
end
