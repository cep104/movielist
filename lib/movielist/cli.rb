#our CLI controller
class Movielist::CLI 
 
  def call 
    list_movies
    menu
  end
  
  def list_movies
  puts " This weeks box office results:"
 @movies = Movielist::Movie.boxoffice
    @movies.each.each.with_index(1) do |movie, index| 
      puts "#{index}. #{movie.name} - #{movie.total} - #{movie.studio}"
      
    end
  end
  
  def menu 
    input = nil
    while input != "exit"
    puts "Enter the number of the movie you would like to learn more about, type list to see movies again or type exit"
      input =gets.chomp.downcase
      if input.to_i > 0 
        the_movie =  @movies[input.to_i-1]
        puts "#{the_movie.name} - #{the_movie.total} - #{the_movie.studio}"
      elsif input == "list"
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