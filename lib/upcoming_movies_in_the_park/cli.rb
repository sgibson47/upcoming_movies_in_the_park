

class UpcomingMoviesInThePark::CLI

  def call
    UpcomingMoviesInThePark::Scraper.new.make_showings
    menu
    menu_path
  end

  def menu
    puts "\n"
    puts "Upcoming Movies in Chicago Parks".colorize(:blue)
    puts "\n"
    puts "How would you like to explore movies in the park?".colorize(:blue)
    print "Enter".colorize(:blue) 
    print " by name " 
    puts "to see a list of upcoming movies by their names.".colorize(:blue)
    print "Enter".colorize(:blue) 
    print " by date " 
    puts "to see a list of upcoming dates on which movies are playing in a park.".colorize(:blue)
    print "Enter".colorize(:blue) 
    print " by park " 
    puts "to see a list of parks in which upcoming movies are playing.".colorize(:blue)
    print "Or enter".colorize(:blue) 
    print " exit " 
    puts "to quit.".colorize(:blue)
  end 

  def menu_path
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
    by_name_instructions
    
    input = nil
    while input != "back"
      input = gets.strip
      if input.to_i > 0 && input.to_i <= UpcomingMoviesInThePark::Showing.all.length
        showing = UpcomingMoviesInThePark::Showing.all[input.to_i - 1]
        puts "\n"
        showing.display_details
        puts "\n"
        by_name_instructions
      elsif input == "back"
        menu
        break
      else
        puts "Hrm, I don't understand what you want."
        by_name_instructions
      end 
    end
  end

  def by_name_instructions
    puts "Enter a number from the list movie names to get the showing details for that movie"
    puts "or enter back to go back to the main menu."
  end 

  def by_date_path
    puts "\n"
    UpcomingMoviesInThePark::Gate.list_by_date
    puts "\n"
    by_date_instructions_1
    input = nil
    while input != "back"
      input = gets.strip
      if input.to_i > 0 && input.to_i <= UpcomingMoviesInThePark::Gate.all.length
        date = UpcomingMoviesInThePark::Gate.all[input.to_i - 1]
        puts "\n"
        date.list_showings
        puts "\n"
        by_date_instructions_1
        input = nil
        while input != "return"
          input = gets.strip
          if input.to_i > 0 && input.to_i <= date.showings.length
            showing = date.showings[input.to_i - 1]
            puts "\n"
            showing.display_details
            puts "\n"
            by_date_instructions_2
          elsif input == "return"
            puts "\n"
            UpcomingMoviesInThePark::Gate.list_by_date
            puts "\n"
            by_date_instructions_1
            break
          else
            puts "Hrm, I don't understand what you want."
            by_date_instructions_2
          end 
        end
      elsif input == "back"
        menu
        break
      else
        puts "Hrm, I don't understand what you want."
        by_date_instructions_1
      end 
    end
  end

  def by_date_instructions_1
    puts "Enter a number to get a list of movies playing on that date"
    puts "or enter back to go back to the main menu."
  end

  def by_date_instructions_2
    puts "Enter another number to get the showing details for that movie"
    puts "or enter return to go return to the list of upcoming dates"
    puts "on which movies are playing in a park."
  end

  def by_park_path
    puts "\n"
    UpcomingMoviesInThePark::Park.list_by_name
    puts "\n"
    by_park_instructions_1
    input = nil
    while input != "back"
      input = gets.strip
      if input.to_i > 0 && input.to_i <= UpcomingMoviesInThePark::Park.all.length
        park = UpcomingMoviesInThePark::Park.all[input.to_i - 1]
        puts "\n"
        park.list_showings
        puts "\n"
        by_park_instructions_2
        input = nil
        while input != "return"
          input = gets.strip
          if input.to_i > 0 && input.to_i <= park.showings.length
            showing = park.showings[input.to_i - 1]
            puts "\n"
            showing.display_details
            puts "\n"
            by_park_instructions_2
          elsif input == "return"
            puts "\n"
            UpcomingMoviesInThePark::Park.list_by_name
            puts "\n"
            by_park_instructions_1
            break
          else 
            puts "Hrm, I don't understand what you want."
            by_park_instructions_2
          end 
        end
      elsif input == "back"
        menu
        break
      else 
        puts "Hrm, I don't understand what you want."
        by_park_instructions_1
      end 
    end
  end

  def by_park_instructions_1
    puts "Enter a number to get a list of movies playing in that park"
    puts "or enter back to go back to the main menu."
  end

  def by_park_instructions_2
    puts "Enter another number to get the showing details for that movie"
    puts "or enter return to return to the list of parks"
    puts "in which upcoming movies are playing."
  end

end