class UpcomingMoviesInThePark::Showing
  attr_accessor :name, :date, :time, :park, :url

  @@all =[]

  show_1 = UpcomingMoviesInThePark::Showing.new
  show_1.name = "Ferris Bueller's Day Off"
  show_1.date = "Fri, Jun 1, 2018"
  show_1.time = "8:30 PM - 10:15 PM"
  show_1.park = "Lincoln Park"
  show_1.url = "url"
  @@all << show_1


  show_2 = UpcomingMoviesInThePark::Showing.new
  show_2.name = "The Birdcage"
  show_2.date = "Sat, Jun 2, 2018"
  show_2.time = "6:30 PM - 8:30 PM"
  show_2.park = "Berger Park"
  show_2.url = "url"
  @@all << show_2

  show_3 = UpcomingMoviesInThePark::Showing.new
  show_3.name = "The Princess Bride"
  show_3.date = "Sun, Jun 3, 2018"
  show_3.time = "7:30 PM - 9:15 PM"
  show_3.park = "Wicker Park"
  show_3.url = "url"
  @@all << show_3
end