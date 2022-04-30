class ArtPiecesController < ApplicationController
  skip_before_action :authenticate_user!, only: %I[index show]

  def new
    @artpieces = Artpiece.new

  end

  def show
    @artpiece = ArtPiece.find(params[:id])
  end

  def index
  @artpieces = ArtPiece.all
  end

  def create

  @artpieces = ArtPieces.new(artpieces_params)
  @art_pieces.user = current_user

  if @artpieces.save
  redirect_to artpieces_create_path(@artpiece)

  else render "new"
  end

  private

def artpieces_params
params.require(:artpieces).permit(:title, :artist, :description,
:creation_date, :category, :style, :price_rate, :owner_id)
end

end
