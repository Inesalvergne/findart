class Offer < ApplicationRecord
  belongs_to :art_piece
  belongs_to :user
  validates :uniqueness, presence: true
end
