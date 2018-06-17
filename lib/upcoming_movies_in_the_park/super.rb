module UpcomingMoviesInThePark::Super
  
  module InstanceMethods
    
    def save
      self.class.all << self
    end 

    def list_showings
    self.showings.each_with_index {|showing, i| 
      puts "#{i +1}. #{showing.name}".colorize(:cyan)}
    end

  end

  module GateParkInstanceMethods
    
    def add_showing(showing)
      self.showings << showing
    end
  
  end

end