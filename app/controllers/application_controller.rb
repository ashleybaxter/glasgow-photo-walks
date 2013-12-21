class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :configure_devise_params, if: :devise_controller?
  def configure_devise_params
    devise_parameter_sanitizer.for(:sign_up) do |u|
      u.permit(:first_name, :last_name, :email, :password, :password_confirmation)
    end
  end
  
  def current_ability
    @current_ability ||= Ability.new(current_photographer)
  end
  
  rescue_from CanCan::AccessDenied do |exception|
    flash[:error] = "Sorry, but you do not have permission to view that page. It's top secret!"
    redirect_to root_url
  end

end
