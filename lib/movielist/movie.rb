class Movielist::Movie 
  
  attr_accessor :name, :total, :studio
  
  def self.boxoffice 
    self.scrape_movies
  end
  
  def self.scrape_movies
    movies = []
    movies << self.scrape_joker
    
  end
  
  def self.scrape_joker
    doc = Nokogiri::HTML(open("https://www.boxofficemojo.com/movies/?id=joker2019.htm"))
    movie = self.new
    selector = "table td b"
    anchors = doc.css(selector)
    movie.name = anchors.map{|a| a.text}[1].chomp(" (2019)")
    movie.total = anchors.map{|a| a.text}[2]
    movie.studio = anchors.map{|a| a.text}[3]
    movie
    
  end
  
  def self.scrape_imdb_joker
    doc = Nokogiri::HTML(open("https://www.rottentomatoes.com/m/joker_2019"))
    selector = doc.search("span.mop-ratings-wrap__percentage").text.split(" ")
    tomatometer = selector[0]
    audience_score = selector[1]
    synopsis = doc.search("div#movieSynopsis").text.strip
    binding.pry
  end
 
end 