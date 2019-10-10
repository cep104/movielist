class Movielist::Movie 
  
  attr_accessor :name, :total, :weeks, :url
  
  def self.boxoffice 
    self.scrape_movies
  end
  
  def self.scrape_movies
    movies = []
    movies << self.scrape_mojo
  end
  
  def self.scrape_mojo
    doc = Nokogiri::HTML(open("https://www.boxofficemojo.com/weekend/chart/?view=main&yr=2019&wknd=40&p=.html"))
    selector = "tr td a"
    anchors = doc.css(selector)
    movie_titles = anchors.map{|a| a.text}
    movie_one_title = movie_titles[17].split.first
    movie_two_title = movie_titles[19]
    list = doc.css("tr td b").text.split
    movie_two_total = list[11].chomp("Abominable$11,921,855Downton").gsub("(2019)","")
    binding.pry
  end
end 