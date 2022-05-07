class ArtPiece < ApplicationRecord
  belongs_to :user
  has_many :offers
  has_one_attached :cloud_image

  CATEGORIES = ['Painting', 'Sculpture'].freeze
  STYLES = ['Renaissance', 'Conceptual Art', 'Surreal', 'Post-Impressionism', 'Impressionist', 'Expressionist'].freeze

  validates :cloud_image, presence: true
  validates :title, presence: true
  validates :artist, presence: true
  validates :address, presence: true
  validates :description, presence: true
  validates :creation_date, presence: true
  validates :category, presence: true, inclusion: { in: CATEGORIES}
  validates :style, presence: true, inclusion: { in: STYLES}
  validates :price_rate, presence: true, numericality: { greater_than: 0 }

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  include PgSearch::Model
  pg_search_scope :search_by_title_and_artist,
                  against: [ :title, :artist ],
                  using: {
                    tsearch: { prefix: true }
                  }
end
