class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :phone_number])
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, , :last_name, :phone_number])
  end

  def after_sign_in_path_for(resource)
    root_path
  end

  # def configure_permitted_parameters
  #     devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:first_name, :last_name, :phone_number, :email, :password) }
  #     devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:first_name, :last_name, :phone_number, :email, :password, :current_password) }
  # end

end
