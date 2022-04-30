class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @artpieces = []
    3.times do
      random = Random.new
      @artpieces << ArtPiece.find(random.rand(1..ArtPiece.all.length))
    end
  end
end
