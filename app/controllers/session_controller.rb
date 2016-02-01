
class SessionController < ApplicationController
  def new

  end

  def create
#    user = User.find_by username: params[:username
#    session[:user_id] = user_id
    redirect_to beers_path
  end

  def destroy
    session[:user_id] = nil
    redirect_to :back
  end
end