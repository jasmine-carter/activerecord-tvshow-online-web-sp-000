class Show < ActiveRecord::Base

  def self.highest_rating
    Show.maximum('rating')
  end

  def self.most_popular_show
    pop_rating = self.highest_rating
    Show.find_by(rating: pop_rating)
  end

  def self.lowest_rating
    Show.minimum('rating')
  end
end
