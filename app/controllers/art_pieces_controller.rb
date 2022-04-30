class ArtPiecesController < ApplicationController

  def new
    @artpieces = Artpiece.new
  end

  def show
  @artpieces = Artpieces.find(params[:id])
  end

  def index
  @artpieces = ArtPieces.all
  end

  def create
  @artpieces = ArtPieces.new(artpiece_params)

  if @artpieces.save
  redirect_to artpieces_create_path(@artpiece)

  else render "new"
  end

  private

def artpieces_params
params.require(:artpieces).permit(:title, :artist, :images, :description,
:creation_date, :category, :style, :price_rate, :owner_id)
end

end
