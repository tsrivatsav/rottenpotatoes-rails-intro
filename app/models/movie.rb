class Movie < ActiveRecord::Base
  def self.with_ratings(ratings_list)
    if ratings_list.nil?
      return Movie.all
    elsif ratings_list.is_a? Array
      return Movie.where(rating: ratings_list)
    else
      puts 'ratings_list is something other than nil or an array'
    end
  end
  def self.all_ratings
    return ['G','PG','PG-13','R']
  end
end
