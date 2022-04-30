class CreateArtPieces < ActiveRecord::Migration[6.1]
  def change
    create_table :art_pieces do |t|
      t.string :title
      t.string :artist
      t.text :description
      t.string :creation_date
      t.string :category
      t.string :style
      t.integer :price_rate
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
