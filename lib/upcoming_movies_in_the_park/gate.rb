class UpcomingMoviesInThePark::Gate
  attr_accessor :name, :day, :month, :year, :showings

  @@all = []
  # date info pulled from web, this'll be the name, then parse it to get desired info
  #"\n              Date & Time:\n              Mon, Jun 11, 2018 from 8:30 PM - 10:22 PM\n            "

  def save
    @@all << self
  end 

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

  def add_showing(showing)
    @showings << showing
  end

  def self.list_by_date
    self.all.each_with_index {|gate, i|
    puts "#{i +1}. #{gate.month} #{gate.day}, #{gate.year}"}
  end

end