class UpcomingMoviesInThePark::Scraper
  attr_accessor :showings, :urls

  def initialize
    @showings =[]
  end

  def get_showing_urls
    day = Date.today
    doc = Nokogiri::HTML(open("https://www.chicagoparkdistrict.com/events/night-out-in-the-parks?field_event_category=404&field_event_start_date=#{day.year}-#{day.month}-#{day.day}&field_event_end_date=&field_event_movie_title=&field_event_movie_rating=All"))

    doc2 = doc.css("div.view-content")

    @urls = doc2.children.css("div.views-field h2 a").map{ |x| x.attribute('href').value}
  end

  def get_showing_details
    self.urls.each do |url|
      doc = Nokogiri::HTML(open("https://www.chicagoparkdistrict.com/#{url}")
      showing_hash ={}
      showing_hash[:name] = doc.css("").text
      showing_hash[:date] = doc.css("").text
      showing_hash[:park] = doc.css("").text
      @showings << showing_hash
    end
  end

end