class Beer < ActiveRecord::Base
#  include RatingAverage

  belongs_to :brewery
  has_many :ratings, dependent: :destroy
  #has_many :raters, -> {uniq}, through: :ratings

  def to_s
    "#{name} #{brewery.name}"
  end

  def average_rating
     ratings.inject(0){|summa,r| summa += r.score } / ratings.size.to_f
  end
  end
