class ApplicationController < ActionController::Base
  # devise_controllerのみ許可するパラメータを設定
  before_action :configure_permitted_parameters, if: :devise_controller?
  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :image, :profile])
  end
end
