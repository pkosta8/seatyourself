class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private

 def current_user
   @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  helper_method :current_user

  def ensure_logged_in
    if !session[:user_id]
      flash[:alert] = ["You need to be logged in to do that!"]
      redirect_to sessions_new_path
    end
  end

  def ensure_user_reservation
    if session[:user_id] != @user.user_id
      flash[:alert] = ["Would you like to contiune with your reservations?"]
      redirect_to root_path
    end
  end

end
