class RenameStatusToOfferConfirmedInOfferModels < ActiveRecord::Migration[6.1]
  def change
    rename_column :offers, :status, :offer_confirmed
  end
end
