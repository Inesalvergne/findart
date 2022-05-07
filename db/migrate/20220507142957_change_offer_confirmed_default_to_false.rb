class ChangeOfferConfirmedDefaultToFalse < ActiveRecord::Migration[6.1]
  def change
    change_column_default :offers, :offer_confirmed, false
  end
end
