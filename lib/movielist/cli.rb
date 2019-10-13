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
      if input.to_i > 0 && input.to_i < 11
        the_movie =  @movies[input.to_i-1]
        puts "#{the_movie.name}".center(75).upcase
        puts""
        puts" Rotten Tomatoes Score - #{the_movie.rm_score}".center(75)
        puts" Audience Score - #{the_movie.audience_score}".center(75)
        puts""
        puts"**Synopsis: #{the_movie.synopsis}"
        puts""
      elsif input == "list"
        list_movies
      elsif input == "exit"
        goodbye
      else
        puts "Invalid entry. Please type list or exit"
      end
    end
  end
  
  def goodbye 
    puts "Come back next time for more box office results!"
  end
  
end