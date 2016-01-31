class Beer < ActiveRecord::Base
  belongs_to :brewery
  has_many :ratings

  def average_rating
      "Jee"
  end
end
