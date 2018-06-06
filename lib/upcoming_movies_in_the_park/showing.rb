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

  def self.create_from_hash(hash)
    thing = UpcomingMoviesInThePark::Showing.new
    hash.each do |k,v|
      thing.send("#{k}=", v)
    end
    @@all<<thing
  end 

end