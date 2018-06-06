

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
        by_name_path
      elsif input == "by date"
        by_date_path
      elsif input == "by park"
        by_park_path
      elsif input === "exit"
        break
      else
        puts "I can't tell what you're asking for."
        puts "Please enter by name, by date, by park, or exit."
      end
    end
  end

  def by_name_path
    puts "\n"
    UpcomingMoviesInThePark::Showing.list_by_name
    puts "\n"
    puts "Enter a number to get the showing details for that movie"
    puts "or enter back to go back to the main menu."
    
    input = nil
    while input != "back"
      input = gets.strip
      if input.to_i > 0 && input.to_i <= UpcomingMoviesInThePark::Showing.all.length
        showing = UpcomingMoviesInThePark::Showing.all[input.to_i - 1]
        puts "\n"
        showing.display_details
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
      else
        puts "Enter a number from the list to get the showing details for that movie"
        puts "or enter back to go back to the main menu."
      end 
    end
  end

  def by_date_path
    puts "\n"
    UpcomingMoviesInThePark::Gate.list_by_date
    puts "\n"
    puts "Enter a number to get a list of movies playing on that date"
    puts "or enter back to go back to the main menu."
    input = nil
    while input != "back"
      input = gets.strip
      if input.to_i > 0 && input.to_i <= UpcomingMoviesInThePark::Gate.all.length
        date = UpcomingMoviesInThePark::Gate.all[input.to_i - 1]
        date.list_showings
        puts "\n"
        puts "Enter a number to get the showing details for that movie"
        puts "or enter return to go back to the list of dates."
        input = nil
        while input != "return"
          input = gets.strip
          if input.to_i > 0 && input.to_i <= date.showings.length
            showing = date.showings[input.to_i - 1]
            puts "\n"
            showing.display_details
            puts "\n"
            puts "Enter another number to get the showing details for that movie"
            puts "or enter return to go return to the list of upcoming dates"
            puts "on which movies are playing in a park."
          elsif input == "return"
            puts "\n"
            date.list_showings
            puts "\n"
            puts "Enter a number to get a list of movies playing on that date"
            puts "or enter back to go back to the main menu."
            break
          else
            puts "Enter a number to get the showing details for that movie"
            puts "or enter return to go back to the list of dates."
          end 
        end
      elsif input == "back"
        puts "\n"
        puts "Welcome back to the main menu."
        puts "Enter -by name- to see a list of upcoming movies by their names."
        puts "Enter -by date- to see a list of upcoming dates on which movies are playing in a park."
        puts "Enter -by park- to see a list of parks in which upcoming movies are playing."
        puts "Or enter -exit- to quit."
        break
      else
        puts "Enter a number to get a list of movies playing on that date"
        puts "or enter back to go back to the main menu."
      end 
    end
  end

  def by_park_path
    puts "\n"
    UpcomingMoviesInThePark::Park.list_by_name
    puts "\n"
    puts "Enter a number to get a list of movies playing in that park"
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
        puts "or enter return to return to the list of parks"
        puts "in which upcoming movies are playing."
        input = nil
        while input != "return"
          input = gets.strip
          if input == "1"
            puts "details on showing of Rear Window"
            puts "\n"
            puts "Enter another number to get the showing details for that movie"
            puts "or enter return to return to the list of parks"
            puts "in which upcoming movies are playing."
          elsif input == "2"
            puts "details on showing of The Princess Bride"
            puts "\n"
            puts "Enter another number to get the showing details for that movie"
            puts "or enter return to return to the list of parks"
            puts "in which upcoming movies are playing."
          elsif input == "3"
            puts "details on showing of Ferris Bueller's Day Off"
            puts "\n"
            puts "Enter another number to get the showing details for that movie"
            puts "or enter return to return to the list of parks"
            puts "in which upcoming movies are playing."
          elsif input == "return"
            puts "1. Lincoln Park"
            puts "2. Wicker Park"
            puts "3. Millenium Park"
            puts "\n"
            puts "Enter a number to get a list of movies playing in that park"
            puts "or enter back to go back to the main menu."
            break
          else 
            puts "Enter a number to get the showing details for that movie"
            puts "or enter return to return to the list of parks"
            puts "in which upcoming movies are playing."
          end 
        end
      elsif input == "2"
        puts "1. The Birdcage"
        puts "2. Finding Nemo"
        puts "3. The Goonies"
        puts "\n"
        puts "Enter another number to get the showing details for that movie"
        puts "or enter return to return to the list of parks"
        puts "in which upcoming movies are playing."
        input = nil
        while input != "return"
          input = gets.strip
          if input == "1"
            puts "details on showing of The Birdcage"
            puts "\n"
            puts "Enter another number to get the showing details for that movie"
            puts "or enter return to return to the list of parks"
            puts "in which upcoming movies are playing."
          elsif input == "2"
            puts "details on showing of Finding Nemo"
            puts "\n"
            puts "Enter another number to get the showing details for that movie"
            puts "or enter return to return to the list of parks"
            puts "in which upcoming movies are playing."
          elsif input == "3"
            puts "details on showing of The Goonies"
            puts "\n"
            puts "Enter another number to get the showing details for that movie"
            puts "or enter return to return to the list of parks"
            puts "in which upcoming movies are playing."
          elsif input == "return"
            puts "1. Lincoln Park"
            puts "2. Wicker Park"
            puts "3. Millenium Park"
            puts "\n"
            puts "Enter a number to get a list of movies playing in that park"
            puts "or enter back to go back to the main menu."
            break
          else 
            puts "Enter a number to get the showing details for that movie"
            puts "or enter return to return to the list of parks"
            puts "in which upcoming movies are playing."
          end 
        end
      elsif input == "3"
        puts "1. Moana"
        puts "2. North by Northwest"
        puts "3. Hidden Figures"
        puts "\n"
        puts "Enter a number to get the showing details for that movie"
        puts "or enter return to return to the list of parks"
        puts "in which upcoming movies are playing."
        input = nil
        while input != "return"
          input = gets.strip
          if input == "1"
            puts "details on showing of Moana"
            puts "\n"
            puts "Enter another number to get the showing details for that movie"
            puts "or enter return to return to the list of parks"
            puts "in which upcoming movies are playing."
          elsif input == "2"
            puts "details on showing of North by Northwest"
            puts "\n"
            puts "Enter another number to get the showing details for that movie"
            puts "or enter return to return to the list of parks"
            puts "in which upcoming movies are playing."
          elsif input == "3"
            puts "details on showing of Hidden Figures"
            puts "\n"
            puts "Enter another number to get the showing details for that movie"
            puts "or enter return to return to the list of parks"
            puts "in which upcoming movies are playing."
          elsif input == "return"
            puts "1. Lincoln Park"
            puts "2. Wicker Park"
            puts "3. Millenium Park"
            puts "\n"
            puts "Enter a number to get a list of movies playing in that park"
            puts "or enter back to go back to the main menu."
            break
          else 
            puts "Enter a number to get the showing details for that movie"
            puts "or enter return to return to the list of parks"
            puts "in which upcoming movies are playing."
          end 
        end
      elsif input == "back"
        puts "\n"
        puts "Welcome back to the main menu."
        puts "Enter -by name- to see a list of upcoming movies by their names."
        puts "Enter -by date- to see a list of upcoming dates on which movies are playing in a park."
        puts "Enter -by park- to see a list of parks in which upcoming movies are playing."
        puts "Or enter -exit- to quit."
        break
      else 
        puts "Enter a number to get a list of movies playing in that park"
        puts "or enter back to go back to the main menu."
      end 
    end
  end

end