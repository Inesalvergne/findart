class AddAddressToArtPieces < ActiveRecord::Migration[6.1]
  def change
    add_column :art_pieces, :address, :string
    remove_column :users, :address, :string
  end
end
