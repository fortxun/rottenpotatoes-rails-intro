class Movie < ActiveRecord::Base
  @@all_ratings = ['G','PG','PG-13','R']
  def self.all_ratings
    return @@all_ratings
  end
  def self.with_ratings(ratings)
    if ratings.nil?
      Movie.all
    else
      self.where(rating: IN @ratings)
    end
  end
end
