
module RatingAverage

  def average_rating
    ratings.inject(0){|summa,r| summa += r.score } / ratings.size.to_f
  end
end