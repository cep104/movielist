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
    doc = Nokogiri::HTML(open("https://www.imdb.com/title/tt7286456/?ref_=fn_al_tt_1"))
    
  end
end 