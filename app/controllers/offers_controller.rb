class OffersController < ApplicationController

  def index
    @offers = Offer.all
  end

  def new
    @offer = Offer.new
    @art_piece = ArtPiece.find(params[:art_piece_id])
  end

  def create
    @offer = Offer.new(offer_params)
    @offer.total_price = ArtPiece.find(params[:art_piece_id]).price_rate
    @offer.user = current_user
    @offer.art_piece = ArtPiece.find(params[:art_piece_id])
    if @offer.save
      redirect_to offers_path
    else
      render :new
    end
  end

  def accept
    @offer = Offer.find(params[:id])
    @offer.update(offer_confirmed: "accepted")
    redirect_to my_artpieces_art_pieces_path(anchor: "offer-#{@offer.id}"), notice: 'You have accepted the offer!'
  end

  def reject
    @offer = Offer.find(params[:id])
    @offer.update(offer_confirmed: "rejected")
    redirect_to my_artpieces_art_pieces_path(anchor: "offer-#{@offer.id}")
  end

  private

  def offer_params
    params.require(:offer).permit(:start_date, :end_date, :status)
  end
end
