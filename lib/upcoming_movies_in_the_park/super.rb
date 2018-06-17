class UpcomingMoviesInThePark::Super

  def save
    self.class.all << self
  end 

end