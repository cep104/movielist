class Movielist::Movie 
  
  attr_accessor :name, :total, :weeks, :url
  
  def self.boxoffice 
    self.scrape_movies
  end
  
  def self.scrape_movies
    movies = []
# movie_1 = self.new 
# movie_1.name = "Movie 01"
# movie_1.total = "box office total"
# movie_1.weeks = "weeks in theater"
# movie_1.url = "https://www.boxofficemojo.com/weekend/chart/?view=main&yr=2019&wknd=40&p=.htm"

# movie_2 = self.new 
# movie_2.name = "Movie 02"
# movie_2.total = "box office total 2"
# movie_2.weeks = "weeks in theater 2"
# movie_2.url = "https://www.boxofficemojo.com/weekend/chart/?view=main&yr=2019&wknd=40&p=.htm"

# movie_3 = self.new 
# movie_3.name = "Movie 03"
# movie_3.total = "box office total 2"
# movie_3.weeks = "weeks in theater 2"
# movie_3.url = "https://www.boxofficemojo.com/weekend/chart/?view=main&yr=2019&wknd=40&p=.htm"

# movie_4 = self.new 
# movie_4.name = "Movie 04"
# movie_4.total = "box office total 2"
# movie_4.weeks = "weeks in theater 2"
# movie_4.url = "https://www.boxofficemojo.com/weekend/chart/?view=main&yr=2019&wknd=40&p=.htm"

# movie_5 = self.new 
# movie_5.name = "Movie 05"
# movie_5.total = "box office total 2"
# movie_5.weeks = "weeks in theater 2"
# movie_5.url = "https://www.boxofficemojo.com/weekend/chart/?view=main&yr=2019&wknd=40&p=.htm"

# movie_6 = self.new 
# movie_6.name = "Movie 06"
# movie_6.total = "box office total 2"
# movie_6.weeks = "weeks in theater 2"
# movie_6.url = "https://www.boxofficemojo.com/weekend/chart/?view=main&yr=2019&wknd=40&p=.htm"

# movie_7 = self.new 
# movie_7.name = "Movie 07"
# movie_7.total = "box office total 2"
# movie_7.weeks = "weeks in theater 2"
# movie_7.url = "https://www.boxofficemojo.com/weekend/chart/?view=main&yr=2019&wknd=40&p=.htm"

# movie_8 = self.new 
# movie_8.name = "Movie 08"
# movie_8.total = "box office total 2"
# movie_8.weeks = "weeks in theater 2"
# movie_8.url = "https://www.boxofficemojo.com/weekend/chart/?view=main&yr=2019&wknd=40&p=.htm"

# movie_9 = self.new 
# movie_9.name = "Movie 09"
# movie_9.total = "box office total 2"
# movie_9.weeks = "weeks in theater 2"
# movie_9.url = "https://www.boxofficemojo.com/weekend/chart/?view=main&yr=2019&wknd=40&p=.htm"

# movie_10 = self.new 
# movie_10.name = "Movie 10"
# movie_10.total = "box office total 2"
# movie_10.weeks = "weeks in theater 2"
# movie_10.url = "https://www.boxofficemojo.com/weekend/chart/?view=main&yr=2019&wknd=40&p=.htm"

# [movie_1, movie_2, movie_3, movie_4, movie_5, movie_6, movie_7, movie_8, movie_9, movie_10]
  movies
  end
end 