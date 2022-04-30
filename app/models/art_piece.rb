class ArtPiece < ApplicationRecord
  belongs_to :user
  has_many :offers

  validates :artist, presence: true

end
