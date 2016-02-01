
class RatingsController < ApplicationController
  def index
    @ratings = Rating.all
    @beers = Beer.all
  end

  def new
    @rating = Rating.new
  end

  def create
    rating = Rating.create params.require(:rating).permit(:score, :beer_id)
    #       session[:last] = "last rating was #{rating.beer."
    redirect_to ratings_path
  end

end