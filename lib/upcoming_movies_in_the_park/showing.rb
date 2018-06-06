require_relative './park'
require_relative './gate'
class UpcomingMoviesInThePark::Showing
  attr_accessor :name, :date, :park, :url

  @@all =[]

  def self.all
    @@all
  end

  def self.list_by_name
    self.all.each_with_index {|showing, i|
    puts "#{i +1}. #{showing.name}"}
  end

  def display_details
    puts "#{@name} is playing from #{self.time}"
    puts "on #{@date.month} #{@date.day}, #{@date.year} in #{@park.name}."
  end

  def save
    @@all << self
  end

  def time
    data = self.date.name.split(/, | |\n/)
    time = "#{data[37]} #{data[38]} to #{data[40]} #{data[41]}"
  end

  show_1 = UpcomingMoviesInThePark::Showing.new
  show_1.name = "Ferris Bueller's Day Off"
  show_1.date = UpcomingMoviesInThePark::Gate.new("\n              Date & Time:\n              Mon, Jun 11, 2018 from 8:30 PM - 10:22 PM\n            ")
  show_1.park = UpcomingMoviesInThePark::Park.new("Lincoln Park")
  show_1.url = "url"
  @@all << show_1


  show_2 = UpcomingMoviesInThePark::Showing.new
  show_2.name = "The Birdcage"
  show_2.date = UpcomingMoviesInThePark::Gate.new("\n              Date & Time:\n              Mon, Jun 11, 2018 from 8:30 PM - 10:22 PM\n            ")
  show_2.park = UpcomingMoviesInThePark::Park.new("Berger Park")
  show_2.url = "url"
  @@all << show_2

  show_3 = UpcomingMoviesInThePark::Showing.new
  show_3.name = "The Princess Bride"
  show_3.date = UpcomingMoviesInThePark::Gate.new("\n              Date & Time:\n              Mon, Jun 11, 2018 from 8:30 PM - 10:22 PM\n            ")
  show_3.park = UpcomingMoviesInThePark::Park.new("Wicker Park")
  show_3.url = "url"
  @@all << show_3
end