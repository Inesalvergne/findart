class ArtPiecesController < ApplicationController
  skip_before_action :authenticate_user!, only: %I[index show]

  def index
    @artpieces = ArtPiece.all
  end

  def show
    @artpiece = ArtPiece.find(params[:id])

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
    @artpiece.update(artpieces_params)
    redirect_to artpiece_path(@artpiece)
  end

  private

  def artpieces_params
    params.require(:artpieces).permit(:title, :artist, :description,
                                      :creation_date, :category, :style,
                                      :price_rate, :owner_id)
  end
end
