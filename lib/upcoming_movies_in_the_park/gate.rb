class UpcomingMoviesInThePark::Gate
  attr_accessor :name, :day, :month, :year, :showings

  include UpcomingMoviesInThePark::Super::InstanceMethods
  include UpcomingMoviesInThePark::Super::GateParkInstanceMethods

  @@all =[]

  def self.all
    @@all
  end

  def initialize(name)
    @showings =[]
    @name = name
    self.save
    data = name.split(/, | /)
    @month = data[31]
    @day = data[32]
    @year = data[33]
  end

  def self.find_or_create_by_name(name)
    data = name.split(/, | /)
    if @@all.any? {|gate| data[31] == gate.month && data[32] == gate.day && data[33] = gate.year}
      @@all.find {|gate| data[31] == gate.month && data[32] == gate.day && data[33] = gate.year}
    else
      gate_1 = self.new(name)
    end
  end

  def self.list_by_date
    self.all.each_with_index {|gate, i|
      puts "#{i +1}. #{gate.month} #{gate.day}, #{gate.year}".colorize(:green)}
  end

end