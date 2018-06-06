class UpcomingMoviesInThePark::Park
  attr_accessor :name, :showings

  @@all = []

  def save
    @@all << self
  end 

  def initialize(name)
    @name = name
    @showings =[]
    self.save
  end

  def self.all
    @@all
  end

  

end