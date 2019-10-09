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
    binding.pry
  end
end 