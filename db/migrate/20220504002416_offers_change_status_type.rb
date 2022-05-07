class OffersChangeStatusType < ActiveRecord::Migration[6.1]
  def change
    change_column :offers, :status, 'boolean USING CAST(status AS boolean)'
  end
end
