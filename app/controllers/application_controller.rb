class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session
  respond_to :json
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user
  skip_before_action :verify_authenticity_token
  protected

  def configure_permitted_parameters
    attributes = %i[name email password]
    devise_parameter_sanitizer.permit(:sign_up, keys: attributes)
    devise_parameter_sanitizer.permit(:account_update, keys: attributes)
  end
end
