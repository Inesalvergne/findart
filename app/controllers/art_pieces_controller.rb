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
<<<<<<< HEAD
=======
    @offer = Offer.new
>>>>>>> 4b87d19116f6b9e37d4b8aa04da3959177de4288

    @artpieces = []
    3.times do
      random = Random.new
      @artpieces << ArtPiece.find(random.rand(1..ArtPiece.all.length))
    end
<<<<<<< HEAD
  end

  def new
    @artpiece = ArtPiece.new
  end

  def create
    @artpiece = ArtPiece.new(artpiece_params)
    @art_piece.user = current_user

    if @artpiece.save
      redirect_to artpiece_path(@artpiece)
    else
      render :new
    end
=======
>>>>>>> 4b87d19116f6b9e37d4b8aa04da3959177de4288
  end

  def edit
    @artpiece = ArtPiece.find(params[:id])
  end

  def update
    @artpiece = ArtPiece.find(params[:id])
    @artpiece.update(artpiece_params)
<<<<<<< HEAD
    if @artpiece.save
      redirect_to artpiece_path(@artpiece)
    else
      render :edit
    end
=======
    redirect_to art_piece_path(@artpiece)
>>>>>>> 4b87d19116f6b9e37d4b8aa04da3959177de4288
  end

  def destroy
    @artpiece = ArtPiece.find(params[:id])
    @artpiece.destroy
    redirect_to art_pieces_path
  end

  private

  def artpiece_params
<<<<<<< HEAD
    params.require(:artpiece).permit(:title, :artist, :description,
                                      :creation_date, :category, :style,
                                      :price_rate)
=======
    params.require(:artpiece).permit(:title, :artist, :description, :creation_date, :category, :style, :price_rate)
>>>>>>> 4b87d19116f6b9e37d4b8aa04da3959177de4288
  end
end
