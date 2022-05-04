class OffersController < ApplicationController
  skip_before_action :authenticate_user!, only: %I[index show]

  def new
    @offer = Offer.new
<<<<<<< HEAD
=======
    @art_piece = ArtPiece.find(params[:art_piece_id])
>>>>>>> 4b87d19116f6b9e37d4b8aa04da3959177de4288
  end

  def create
    @offer = Offer.new(offer_params)
<<<<<<< HEAD
    @offer.total_price = ArtPiece.find(params[:art_piece.id]).price_rate
    @offer.user = current_user
    if @offer.save
      redirect_to offer_path(@offer)
=======
    @offer.total_price = ArtPiece.find(params[:art_piece_id]).price_rate
    @offer.user = current_user
    @offer.art_piece = ArtPiece.find(params[:art_piece_id])
    if @offer.save
      redirect_to art_piece_path(@offer.art_piece)
>>>>>>> 4b87d19116f6b9e37d4b8aa04da3959177de4288
    else
      render :new
    end
  end

  private

  def offer_params
<<<<<<< HEAD
    params.require(:artpiece).permit(:start_date, :end_date, :status, :user, :art_piece)
=======
    params.require(:offer).permit(:start_date, :end_date, :status)
>>>>>>> 4b87d19116f6b9e37d4b8aa04da3959177de4288
  end
end
