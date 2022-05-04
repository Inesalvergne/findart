class ArtPiecesController < ApplicationController
  skip_before_action :authenticate_user!, only: %I[index show]

  def index
    @artpieces = ArtPiece.all
  end

  def new
    @artpiece = ArtPiece.new
  end

  def create
    @artpiece = ArtPiece.new(artpiece_params)
    @artpiece.user = current_user
    if @artpiece.save
      redirect_to art_piece_path(@artpiece)
    else
      render :new
    end
  end

  def show
    @artpiece = ArtPiece.find(params[:id])
    @offer = Offer.new

    @artpieces = []
    3.times do
      random = Random.new
      @artpieces << ArtPiece.find(random.rand(1..ArtPiece.all.length))
    end
  end

  def edit
    @artpiece = ArtPiece.find(params[:id])
  end

  def update
    @artpiece = ArtPiece.find(params[:id])
    @artpiece.update(artpiece_params)
    redirect_to art_piece_path(@artpiece)
  end

  def destroy
    @artpiece = ArtPiece.find(params[:id])
    @artpiece.destroy
    redirect_to art_pieces_path
  end

  def my_artpieces
    @artpieces = current_user.art_pieces
  end

  private

  def artpiece_params
    params.require(:artpiece).permit(:title, :artist, :description, :creation_date, :category, :style, :price_rate)
  end
end
