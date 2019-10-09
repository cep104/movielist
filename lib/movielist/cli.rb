#our CLI controller
class Movielist::CLI 
 
  def call 
    list_movies
    menu
  end
  
  def list_movies
  puts " This weeks box office results:"
 @movie = Movielist::Movie.boxoffice
    @movie.each.each.with_index(1) do |movies, index| 
      puts "#{index}. #{movies}"
    end
  end
  
  def menu 
    input = nil
    while input != "exit"
    puts "Enter the number of the movie you would like to learn more about, type list to see movies again or type exit"
      input =gets.chomp.downcase
      if input.to_i > 0 
        puts @movie[input.to_i-1]
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