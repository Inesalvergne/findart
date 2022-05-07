class OfferChangeDefaultForStatus < ActiveRecord::Migration[6.1]
  def change
    change_column_default :offers, :status, true
  end
end
