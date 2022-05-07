class ArtPiece < ApplicationRecord
  belongs_to :user
  has_many :offers
  has_one_attached :cloud_image

  validates :title, presence: true
  validates :artist, presence: true
  validates :address, presence: true
  validates :description, presence: true
  validates :creation_date, presence: true
  validates :category, presence: true
  validates :style, presence: true
  validates :price_rate, presence: true, numericality: { greater_than: 0 }
end
