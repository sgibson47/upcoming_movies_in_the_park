require_relative './super'

class UpcomingMoviesInThePark::Park < UpcomingMoviesInThePark::Super
  attr_accessor :name, :showings

  @@all =[]

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @showings =[]
    self.save
  end

  def self.find_or_create_by_name(name)
    if @@all.any? {|park| park.name == name}
      @@all.find {|park| 
        park.name == name}
    else
      park_1 = self.new(name)
    end
  end

  def add_showing(showing)
    @showings << showing
  end

  def self.list_by_name
    self.all.each_with_index {|park, i|
    puts "#{i +1}. #{park.name}".colorize(:green)}
  end

  def list_showings
    @showings.each_with_index {|showing, i| 
      puts "#{i +1}. #{showing.name}".colorize(:cyan)}
  end

end