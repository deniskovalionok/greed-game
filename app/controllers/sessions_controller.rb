class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.create(params.permit(:username))
    session[:user_id] = user.id

    redirect_to root_path
  end
end
