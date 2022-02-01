class Movie < ActiveRecord::Base
  @@all_ratings = ['G','PG','PG-13','R']
  def self.all_ratings
    return @@all_ratings
  end
  def self.with_ratings(ratings, sort_by=title)
    if ratings.nil?
      return Movie.all.order(sort_by:)
    else
      return Movie.where(rating: ratings).order(sort_by:)
    end
  end
end
