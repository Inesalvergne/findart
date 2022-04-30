class ArtPiecesController < ApplicationController
  skip_before_action :authenticate_user!, only: %I[index show]

  def index
    @artpieces = ArtPiece.all
  end

  def show
    @artpiece = ArtPiece.find(params[:id])
  end

  def new
    @artpieces = ArtPiece.new
  end

  def create
    @artpiece = ArtPiece.new(artpiece_params)
    @art_piece.user = current_user

    if @artpiece.save
      redirect_to artpiece_path(@artpiece)
    else
      render :new
    end
  end

  def edit
    @artpiece = ArtPiece.find(params[:id])
  end

  def update
    @artpiece = ArtPiece.find(params[:id])
    @artpiece.update(artpiece_params)
    redirect_to artpiece_path(@artpiece)
  end

  private

  def artpiece_params
    params.require(:artpiece).permit(:title, :artist, :description,
                                      :creation_date, :category, :style,
                                      :price_rate)
  end
end
