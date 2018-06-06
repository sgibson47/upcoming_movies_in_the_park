require_relative './park'
require_relative './gate'
class UpcomingMoviesInThePark::Showing
  attr_accessor :name, :url
  attr_reader :date, :park

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

  def date=(str)
    @date = UpcomingMoviesInThePark::Gate.find_or_create_by_name(str)
    @date.add_showing(self)
  end

  def park=(str)
    @park = UpcomingMoviesInThePark::Park.find_or_create_by_name(str)
    @park.add_showing(self)
  end

  show_1 = UpcomingMoviesInThePark::Showing.new
  show_1.name = "Ferris Bueller's Day Off"
  show_1.date = ("\n              Date & Time:\n              Mon, Jun 11, 2018 from 8:30 PM - 10:22 PM\n            ")
  show_1.park = ("Lincoln Park")
  show_1.url = "url"
  @@all << show_1


  show_2 = UpcomingMoviesInThePark::Showing.new
  show_2.name = "The Birdcage"
  show_2.date =("\n              Date & Time:\n              Mon, Jun 12, 2018 from 7:30 PM - 9:22 PM\n            ")
  show_2.park = ("Berger Park")
  show_2.url = "url"
  @@all << show_2

  show_3 = UpcomingMoviesInThePark::Showing.new
  show_3.name = "The Princess Bride"
  show_3.date = ("\n              Date & Time:\n              Mon, Jun 13, 2018 from 7:00 PM - 9:00 PM\n            ")
  show_3.park = ("Wicker Park")
  show_3.url = "url"
  @@all << show_3

  show_4 = UpcomingMoviesInThePark::Showing.new
  show_4.name = "Rear Window"
  show_4.date = ("\n              Date & Time:\n              Mon, Jun 12, 2018 from 8:00 PM - 10:00 PM\n            ")
  show_4.park = ("Lincoln Park")
  show_4.url = "url"
  @@all << show_4

  show_5 = UpcomingMoviesInThePark::Showing.new
  show_5.name = "Finding Nemo"
  show_5.date = ("\n              Date & Time:\n              Mon, Jun 11, 2018 from 8:15 PM - 10:45 PM\n            ")
  show_5.park = ("Wicker Park")
  show_5.url = "url"
  @@all << show_5

  show_6 = UpcomingMoviesInThePark::Showing.new
  show_6.name = "Hidden Figures"
  show_6.date = ("\n              Date & Time:\n              Mon, Jun 13, 2018 from 6:30 PM - 8:22 PM\n            ")
  show_6.park = ("Berger Park")
  show_6.url = "url"
  @@all << show_6
end