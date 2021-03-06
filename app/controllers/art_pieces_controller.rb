class ArtPiecesController < ApplicationController
  skip_before_action :authenticate_user!, only: %I[index show]

  def index
    if ArtPiece.search_by_title_and_artist(params[:query]).empty? && ArtPiece.where("style = ?", params[:style]).empty?
      @artpieces = ArtPiece.all
      # flash.alert = "Sorry, we couldn't find this... Keep exploring!"
    elsif params[:query].present? && params[:style].present?
      @artpieces = ArtPiece.search_by_title_and_artist(params[:query]).where("style = ?", params[:style])
    elsif params[:query].present?
      @artpieces = ArtPiece.search_by_title_and_artist(params[:query])
    elsif params[:style].present?
      @artpieces = ArtPiece.where("style = ?", params[:style])
    elsif ArtPiece.search_by_title_and_artist(params[:query]).empty?
      @artpieces = ArtPiece.all
      # flash.alert = "Sorry, we couldn't find this... Keep exploring!"
    elsif ArtPiece.where("style = ?", params[:style]).empty?
      @artpieces = ArtPiece.all
      # flash.alert = "Sorry, we couldn't find this... Keep exploring!"
    else
      @artpieces = ArtPiece.all
    end

    @markers = @artpieces.geocoded.map do |artpiece|
      {
        lat: artpiece.latitude,
        lng: artpiece.longitude,
        info_window: render_to_string(partial: "info_window", locals: { artpiece: artpiece })
      }
    end

    # @artpiece = ArtPiece.new
  end

  # def new
  #   @artpiece = ArtPiece.new
  # end

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
      @artpieces << ArtPiece.find(random.rand(ArtPiece.first.id..ArtPiece.last.id)) unless ArtPiece.all.length.zero?
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
    params.require(:art_piece).permit(:title, :artist, :cloud_image,
                                      :description, :creation_date, :category,
                                      :style, :address, :price_rate)
  end
end
