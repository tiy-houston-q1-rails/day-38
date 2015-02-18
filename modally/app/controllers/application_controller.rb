class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :fetch_current_user

  def fetch_current_user
    @current_user = User.find_by id: session[:user_id]
  end

  def authenticate_user!
    if signed_in?
    else
      redirect_to sign_in_path
    end
  end

  def signed_in?
    session[:user_id].to_i > 0
  end
end
