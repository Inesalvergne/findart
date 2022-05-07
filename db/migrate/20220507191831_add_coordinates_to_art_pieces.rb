class AddCoordinatesToArtPieces < ActiveRecord::Migration[6.1]
  def change
    add_column :art_pieces, :latitude, :float
    add_column :art_pieces, :longitude, :float
  end
end
