
module RatingAverage

  def average_rating
    return 0 if ratings.empty?

    ratings.inject(0){|summa,r| summa += r.score } / ratings.count.to_f

  end
end