class Beer < ActiveRecord::Base
  include RatingAverage

  validates :name, :style, presence: true


  belongs_to :brewery
  has_many :ratings, dependent: :destroy
  has_many :raters, -> {uniq}, through: :ratings, source: :user

  def to_s
    "#{name} #{brewery.name}"
  end

  def average
    if ratings.count == 0
      return 0
    end
    ratings.map{ |r| r.score }.sum / ratings.count.to_f
  end


  def self.top(n)
    sorted_by_rating_in_desc_order = Beer.all.sort_by{ |b| -(b.average_rating||0)}
    sorted_by_rating_in_desc_order[1..n]


  end

  end
