class UpcomingMoviesInThePark::CLI

  def call
    puts "\n"
    puts "Upcoming Movies in Chicago Parks"
    puts "\n"
    puts "How would you like to explore movies in the park?"
    puts "Enter -by name- to see a list of upcoming movies by their names."
    puts "Enter -by date- to see a list of upcoming dates on which movies are playing in a park."
    puts "Enter -by park- to see a list of parks in which upcoming movies are playing."
    puts "Or enter -exit- to quit."

    input = gets.strip

    case input
    when "by name"
      puts "1. Rear Window"
      puts "2. The Princess Bride"
      puts "3. Ferris Bueller's Day Off"
    when "by date"
      puts "1. Jun 6, 2018"
      puts "2. Jun 7, 2018"
      puts "3. Jun 8, 2018"
    when "by park"
      puts "1. Lincoln Park"
      puts "2. Wicker Park"
      puts "3. Millenium Park"
    end

  end


  
end