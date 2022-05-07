class ChangeDateTypesFromStringToDateOnOfferModel < ActiveRecord::Migration[6.1]
  def change
    remove_column :offers, :start_date, :string
    remove_column :offers, :end_date, :string
    add_column :offers, :start_date, :date
    add_column :offers, :end_date, :date
  end
end
