class UpcomingMoviesInThePark::Scraper

  def get_showing_urls
    day = Date.today
    doc = Nokogiri::HTML(open("https://www.chicagoparkdistrict.com/events/night-out-in-the-parks?field_event_category=404&field_event_start_date=#{day.year}-#{day.month}-#{day.day}&field_event_end_date=&field_event_movie_title=&field_event_movie_rating=All"))

    doc2 = doc.css("div.view-content")

    arr = doc2.children.css("div.views-field h2 a").map{ |x| x.attribute('href').value}
  end

end