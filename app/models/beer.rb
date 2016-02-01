class Beer < ActiveRecord::Base
#  include RatingAverage

  belongs_to :brewery
  has_many :ratings
  has_many :raters, -> {uniq}, through: :ratings

  def to_s
    "#{name} #{brewery.name}"
  end

  def average_rating
      "Jee"
  end
end
