
module RatingAverage

  def average_rating
    if ratings.count.nil?
       0
    else
      ratings.inject(0){|summa,r| summa += r.score } / ratings.count.to_f
    end
  end
end