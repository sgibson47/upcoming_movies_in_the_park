class UpcomingMoviesInThePark::Scraper
  attr_accessor :showings, :urls

  def initialize
    @showings =[]
  end

  def get_page(url)
    Nokogiri::HTML(open(url))
  end

  def get_showing_urls
    day = Date.today
    doc = get_page("https://www.chicagoparkdistrict.com/events/night-out-in-the-parks?field_event_category=404&field_event_start_date=#{day.year}-#{day.month}-#{day.day}&field_event_end_date=&field_event_movie_title=&field_event_movie_rating=All")

    doc2 = doc.css("div.view-content")

    @urls = doc2.children.css("div.views-field h2 a").map{ |x| x.attribute('href').value}
  end

  def get_showing_details
    self.urls.each do |url|
      doc = get_page("https://www.chicagoparkdistrict.com/#{url}")
      showing_hash ={}

      showing_hash[:date] = doc.css("p").first.text
      showing_hash[:park] = doc.css("div.field--name-node-title a").text

      if doc.css("b").text == ""
        showing_hash[:name] = doc.css("section#description strong").text
      else
        showing_hash[:name] = doc.css("b").text
      end

      @showings << showing_hash
    end
  end

  def make_showings
    get_showing_urls
    get_showing_details
    @showings.each do |hash|
      UpcomingMoviesInThePark::Showing.create_from_hash(hash)
    end
  end

end