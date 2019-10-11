class Movielist::Movie 
  
  attr_accessor :name, :total, :studio, :url
  
  def self.boxoffice 
    self.scrape_movies
  end
  
  def self.scrape_movies
    movies = []
    movies << self.scrape_mojo
  end
  
  # def self.scrape_mojo
  #   doc = Nokogiri::HTML(open("https://www.boxofficemojo.com/weekend/chart/?view=main&yr=2019&wknd=40&p=.html"))
  #   movie = self.new
  #   selector = "tr td a"
  #   anchors = doc.css(selector)
    
  #   movie_titles = anchors.map{|a| a.text}
  #   movie_one_name = movie_titles[17].split.first
  #   movie_two_name = movie_titles[19]
  #   list = doc.css("tr td b").text.split
  #   movie_one_total = list[11].chomp("Abominable$11,921,855Downton").gsub("(2019)","").strip
  #   movie_two_total = list[11].chomp("Downton").gsub("(2019)$96,202,337Abominable","").strip
  #   movie
    
  # end
  
  def self.scrape_joker
    doc = Nokogiri::HTML(open("https://www.boxofficemojo.com/movies/?id=joker2019.htm"))
    movie = self.new
    selector = "table td b"
    anchors = doc.css(selector)
    name = anchors.map{|a| a.text}[1].chomp(" (2019)")
    total = anchors.map{|a| a.text}[2]
    studio = anchors.map{|a| a.text}[3]
    movie
    binding.pry
  end
end 