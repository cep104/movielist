#our CLI controller
class Movielist::CLI 
 
  def call 
    list_movies
    menu
  end
  
  def list_movies
    puts <<-DOC 
This weeks box office results:

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
  end
  
  def menu 
    puts "Enter the number of the movie you would like to learn more about:"
  end
end