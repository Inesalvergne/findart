class ChangeOfferConfirmedFromBooleanToString < ActiveRecord::Migration[6.1]
  def change
    remove_column :offers, :offer_confirmed, :boolean
    add_column :offers, :offer_confirmed, :string, default: "pending"
  end
end
