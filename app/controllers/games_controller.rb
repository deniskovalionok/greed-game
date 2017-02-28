class GamesController < ApplicationController
  def index
    if logged_in?
      # get list of games
    else
      redirect_to login_path
    end
  end
  
  private

  def logged_in?
    current_user.present?
  end
  
  def current_user
    User.find_by_id(session[:user_id])
  end
  
  helper_method :current_user
end