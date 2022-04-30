class ArtPiece < ApplicationRecord
  belongs_to :user
  has_many :offers

  validates :artist, presence: true

end

t.string "title"
    t.string "artist"
    t.string "image_url"
    t.text "description"
    t.string "creation_date"
    t.string "category"
    t.string "style"
    t.string "price_rate"
