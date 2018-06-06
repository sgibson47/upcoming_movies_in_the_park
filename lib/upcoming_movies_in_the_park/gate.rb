class UpcomingMoviesInThePark::Showing
  attr_accessor :name, :day, :month, :year, :showings

  @@all = []
  # date info pulled from web, this'll be the name, then parse it to get desired info
  #"\n              Date & Time:\n              Mon, Jun 11, 2018 from 8:30 PM - 10:22 PM\n            "

  def save
    @@all << self
  end 

  def self.all
    @@all
  end 


  def initialize(name)
    @showings =[]
    @name = name
    self.save
  end
end