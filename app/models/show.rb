require 'pry'

class Show < ActiveRecord::Base

  def self.highest_rating
    #binding.pry
    Show.maximum("rating")
  end

  def self.lowest_rating
    Show.minimum("rating")
  end

  def self.most_popular_show
    highest_rating = Show.maximum("rating")
    Show.where(rating: highest_rating).to_hash
  end

end