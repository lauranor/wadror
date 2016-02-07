
class RatingsController < ApplicationController
  def index
    @ratings = Rating.all
    @beers = Beer.all
  end

  def new
    @rating = Rating.new
    @beers = Beer.all
  end

  def create
    rating = Rating.create params.require(:rating).permit(:score, :beer_id)
    #       session[:last] = "last rating was #{rating.beer."
    redirect_to ratings_path
  end

  def destroy
    rating = Rating.find(params[:id])
    rating.delete
    redirect_to ratings_path
  end
end