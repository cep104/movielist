class Movielist::Movie 
  
  attr_accessor :name, :total, :studio, :rm_score, :audience_score, :synopsis
  
  def self.boxoffice 
    self.scrape_movies
  end
  
  def self.scrape_movies
    movies = []
    movies << self.scrape_joker
    movies << self.scrape_movietwo
    movies << self.scrape_moviethree
    movies << self.scrape_moviefour
    movies << self.scrape_moviefive
    
  end
  
  def self.scrape_joker
    doc = Nokogiri::HTML(open("https://www.boxofficemojo.com/movies/?id=joker2019.htm"))
    movie = self.new
    selector = "table td b"
    anchors = doc.css(selector)
    movie.name = anchors.map{|a| a.text}[1].chomp(" (2019)")
    movie.total = anchors.map{|a| a.text}[2]
    movie.studio = anchors.map{|a| a.text}[3]
    doc_rotten = Nokogiri::HTML(open("https://www.rottentomatoes.com/m/joker_2019"))
    rotten = doc_rotten.search("span.mop-ratings-wrap__percentage").text.split(" ")
    movie.rm_score = rotten[0]
    movie.audience_score = rotten[1]
    movie.synopsis = doc_rotten.search("div#movieSynopsis").text.strip
    movie
    # binding.pry
  end
  
  def self.scrape_movietwo 
    doc = Nokogiri::HTML(open("https://www.boxofficemojo.com/movies/?id=everest2019.htm"))
    movie = self.new
    selector = "table td b"
    anchors = doc.css(selector)
    movie.name = anchors.map{|a| a.text}[1].chomp(" (2019)")
    movie.total = anchors.map{|a| a.text}[2]
    movie.studio = anchors.map{|a| a.text}[3]
    doc_rotten = Nokogiri::HTML(open("https://www.rottentomatoes.com/m/abominable"))
    rotten = doc_rotten.search("span.mop-ratings-wrap__percentage").text.split(" ")
    movie.rm_score = rotten[0]
    movie.audience_score = rotten[1]
    movie.synopsis = doc_rotten.search("div#movieSynopsis").text.strip
    movie
 end
 
 def self.scrape_moviethree 
   doc = Nokogiri::HTML(open("https://www.boxofficemojo.com/movies/?id=downtonabbey.htm"))
    movie = self.new
    selector = "table td b"
    anchors = doc.css(selector)
    movie.name = anchors.map{|a| a.text}[1].chomp(" (2019)")
    movie.total = anchors.map{|a| a.text}[2]
    movie.studio = anchors.map{|a| a.text}[3]
    doc_rotten = Nokogiri::HTML(open("https://www.rottentomatoes.com/m/downton_abbey"))
    rotten = doc_rotten.search("span.mop-ratings-wrap__percentage").text.split(" ")
    movie.rm_score = rotten[0]
    movie.audience_score = rotten[1]
    movie.synopsis = doc_rotten.search("div#movieSynopsis").text.strip
    movie
   
 end
 
 def self.scrape_moviefour 
   doc = Nokogiri::HTML(open("https://www.boxofficemojo.com/movies/?id=hustlers.htm"))
    movie = self.new
    selector = "table td b"
    anchors = doc.css(selector)
    movie.name = anchors.map{|a| a.text}[1].chomp(" (2019)")
    movie.total = anchors.map{|a| a.text}[2]
    movie.studio = anchors.map{|a| a.text}[3]
    doc_rotten = Nokogiri::HTML(open("https://www.rottentomatoes.com/m/hustlers_2019"))
    rotten = doc_rotten.search("span.mop-ratings-wrap__percentage").text.split(" ")
    movie.rm_score = rotten[0]
    movie.audience_score = rotten[1]
    movie.synopsis = doc_rotten.search("div#movieSynopsis").text.strip
    movie
   
 end
 
 def self.scrape_moviefive 
   doc = Nokogiri::HTML(open("https://www.boxofficemojo.com/movies/?id=it2.htm"))
    movie = self.new
    selector = "table td b"
    anchors = doc.css(selector)
    movie.name = anchors.map{|a| a.text}[1].chomp(" (2019)")
    movie.total = anchors.map{|a| a.text}[2]
    movie.studio = anchors.map{|a| a.text}[3]
    doc_rotten = Nokogiri::HTML(open("https://www.rottentomatoes.com/m/it_chapter_two"))
    rotten = doc_rotten.search("span.mop-ratings-wrap__percentage").text.split(" ")
    movie.rm_score = rotten[0]
    movie.audience_score = rotten[1]
    movie.synopsis = doc_rotten.search("div#movieSynopsis").text.strip
    movie
   
 end
end 