class OffersController < ApplicationController
  skip_before_action :authenticate_user!, only: %I[index show]

  def new
    @offer = Offer.new
  end

  def create
    @offer = Offer.new(offer_params)
    @offer.user = current_user
    if @offer.save
      redirect_to offer_path(@offer)
    else
      render :new
    end
  end

  private

  def offer_params
    params.require(:artpiece).permit(:start_date, :end_date, :total_price, :status, :user, :art_piece)
  end
end
