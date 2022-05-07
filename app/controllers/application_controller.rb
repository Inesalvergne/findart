class ApplicationController < ActionController::Base
  before_action :authenticate_user!, :new_artpiece
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %I[first_name last_name])
  end

  private

  def new_artpiece
    @artpiece = ArtPiece.new
  end

end
