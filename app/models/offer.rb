class Offer < ApplicationRecord
  belongs_to :user
  belongs_to :art_piece

  validate :date_range_invalid?

  def date_range_invalid?
    if end_date < start_date
      errors.add(:start_date, "Invalid date range")
      errors.add(:end_date, "Invalid date range")
    end
  end
end
