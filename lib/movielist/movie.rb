class Movielist::Movie 
  def self.boxoffice 
   puts <<-DOC 
01. Movie 01, box office total, weeks in theater
02. Movie 02, box office total, weeks in theater
03. Movie 03, box office total, weeks in theater
04. Movie 04, box office total, weeks in theater
05. Movie 05, box office total, weeks in theater
06. Movie 06, box office total, weeks in theater
07. Movie 07, box office total, weeks in theater
08. Movie 08, box office total, weeks in theater
09. Movie 09, box office total, weeks in theater
10. Movie 10, box office total, weeks in theater 

 DOC
# movie_1 = Movie.new 
# movie_1.name = "Movie 01"
# movie_1.total = "box office total"
# movie_1.weeks = "weeks in theater"
# movie_1.url = "https://www.boxofficemojo.com/weekend/chart/?view=main&yr=2019&wknd=40&p=.htm"
  end
end 