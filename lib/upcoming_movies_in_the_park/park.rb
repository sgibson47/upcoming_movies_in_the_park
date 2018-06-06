class UpcomingMoviesInThePark::Park
  attr_accessor :name, :showings

  @@all = []

  def save
    @@all << self
  end 

  
end