class User < ApplicationRecord
  has_many :art_pieces
  has_many :offers, dependent: :destroy
  has_many :art_pieces, through: :offers

end
