class ArtPiece < ApplicationRecord
  belongs_to :user
  has_many :offers
  has_one_attached :cloud_image

  validates :cloud_image, presence: true
  validates :title, presence: true
  validates :artist, presence: true
  validates :address, presence: true
  validates :description, presence: true
  validates :creation_date, presence: true
  validates :category, presence: true
  validates :style, presence: true
  validates :price_rate, presence: true, numericality: { greater_than: 0 }

  include PgSearch::Model
  pg_search_scope :search_by_title_and_artist,
                  against: [ :title, :artist ],
                  using: {
                    tsearch: { prefix: true }
                  }
end
