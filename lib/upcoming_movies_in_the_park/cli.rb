

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
        puts "\n"
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
            UpcomingMoviesInThePark::Gate.list_by_date
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
      if input.to_i > 0 && input.to_i <= UpcomingMoviesInThePark::Park.all.length
        park = UpcomingMoviesInThePark::Park.all[input.to_i - 1]
        puts "\n"
        park.list_showings
        puts "\n"
        puts "Enter another number to get the showing details for that movie"
        puts "or enter return to return to the list of parks"
        puts "in which upcoming movies are playing."
        input = nil
        while input != "return"
          input = gets.strip
          if input.to_i > 0 && input.to_i <= park.showings.length
            showing = park.showings[input.to_i - 1]
            puts "\n"
            showing.display_details
            puts "\n"
            puts "Enter another number to get the showing details for that movie"
            puts "or enter return to return to the list of parks"
            puts "in which upcoming movies are playing."
          elsif input == "return"
            puts "\n"
            UpcomingMoviesInThePark::Park.list_by_name
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