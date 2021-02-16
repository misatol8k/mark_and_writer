class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # devise_controllerのみ許可するパラメータを設定
  before_action :configure_permitted_parameters, if: :devise_controller?
  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :image, :image_cache, :profile])
  end
end
