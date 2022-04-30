class ArtpiecesController < ApplicationController

  def show
  @artpieces = ArtWorks.find(params[:id])
  end

  def index
  @artpieces = ArtWorks.all
  end

  def create
  @artpieces = ArtWorks.new(artpiece_params)

  if @artpieces.save
  redirect_to artworks_create_path(@artwork)

  else render "new"
  end

  private
def artpieces_params
  params.require(:artpieces).permit(:name, :rating)
end

end
