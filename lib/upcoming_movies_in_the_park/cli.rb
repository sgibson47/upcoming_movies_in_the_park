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

    input = nil
    while input != "exit"
      input = gets.strip
      if input == "by name"
        puts "\n"
        puts "1. Rear Window"
        puts "2. The Princess Bride"
        puts "3. Ferris Bueller's Day Off"
        puts "\n"
        puts "Enter a number to get the showing details for that movie"
        puts "or enter back to go back to the main menu."
        
        input = nil
        while input != "back"
          input = gets.strip
          if input == "1"
            puts "details on showing of Rear Window"
            puts "\n"
            puts "Enter another number to get the showing details for that movie"
            puts "or enter back to go back to the main menu."
          elsif input == "2"
            puts "details on showing of The Princess Bride"
            puts "\n"
            puts "Enter another number to get the showing details for that movie"
            puts "or enter back to go back to the main menu."
          elsif input == "3"
            puts "details on showing of Ferris Bueller's Day Off"
            puts "\n"
            puts "Enter another number to get the showing details for that movie"
            puts "or enter back to go back to the main menu."
          elsif input == "back"
            puts "\n"
            puts "Welcome back to the main menu."
            puts "Enter -by name- to see a list of upcoming movies by their names."
            puts "Enter -by date- to see a list of upcoming dates on which movies are playing in a park."
            puts "Enter -by park- to see a list of parks in which upcoming movies are playing."
            puts "Or enter -exit- to quit."
            break
          end 
        end

      elsif input == "by date"
        puts "1. Jun 6, 2018"
        puts "2. Jun 7, 2018"
        puts "3. Jun 8, 2018"
        puts "\n"
        puts "Enter a number to get a list of movies playing on that date"
        puts "or enter back to go back to the main menu."
        input = nil
        while input != "back"
          input = gets.strip
          if input == "1"
            puts "1. Rear Window"
            puts "2. The Princess Bride"
            puts "3. Ferris Bueller's Day Off"
            puts "\n"
            puts "Enter another number to get the showing details for that movie"
            puts "or enter back to go back to the main menu."
          elsif input == "2"
            puts "1. The Birdcage"
            puts "2. Finding Nemo"
            puts "3. The Goonies"
            puts "\n"
            puts "Enter another number to get the showing details for that movie"
            puts "or enter back to go back to the main menu."
          elsif input == "3"
            puts "1. Moana"
            puts "2. North by Northwest"
            puts "3. Hidden Figures"
            puts "\n"
            puts "Enter another number to get the showing details for that movie"
            puts "or enter back to go back to the main menu."
          elsif input == "back"
            puts "\n"
            puts "Welcome back to the main menu."
            puts "Enter -by name- to see a list of upcoming movies by their names."
            puts "Enter -by date- to see a list of upcoming dates on which movies are playing in a park."
            puts "Enter -by park- to see a list of parks in which upcoming movies are playing."
            puts "Or enter -exit- to quit."
            break
          end 
        end
      elsif input == "by park"
        puts "1. Lincoln Park"
        puts "2. Wicker Park"
        puts "3. Millenium Park"
        puts "Enter a number to get a list of movies playing in that park"
        puts "or enter back to go back to the main menu."
      elsif input === "exit"
        break
      else
        puts "I can't tell what you're asking for."
        puts "Please enter by name, by date, by park, or exit."
      end
    end
  end

end