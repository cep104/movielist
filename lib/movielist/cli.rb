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
    input = nil
    while input != "exit"
    puts "Enter the number of the movie you would like to learn more about, type list to see movies again or type exit"
      input =gets.chomp.downcase
      case input 
      when "1"
        puts "info on movie 1"
      when "2"
        puts "info on movie 2"
      when "3"
        puts "info on movie 3"
      when "4"
        puts "info on movie 4"
      when "5"
        puts "info on movie 5"
      when "6"
        puts "info on movie 6"
      when "7"
        puts "info on movie 7"
      when "8"
        puts "info on movie 8"
      when "9"
        puts "info on movie 9"
      when "10"
        puts "info on movie 10"
      when "list"
        list_movies
      else 
        puts "Not sure what you want type list or exit"
      end
    end
  end
  
  def googbye 
    puts "Come back next time for more box office results!"
  end
  
end