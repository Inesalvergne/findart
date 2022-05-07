class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @artpieces = []
    3.times do
      random = Random.new
      @artpieces << ArtPiece.find(random.rand(ArtPiece.first.id..ArtPiece.last.id)) unless ArtPiece.all.length.zero?
    end
  end
end
