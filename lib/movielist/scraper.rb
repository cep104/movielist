class Movielist::Scraper

def self.boxoffice
    self.scrape_movies
  end

  def self.scrape_movies
    movies = []
    movies << self.scrape_movie_one
    movies << self.scrape_movie_two
    movies << self.scrape_movie_three
    movies << self.scrape_movie_four
    movies << self.scrape_movie_five
    movies << self.scrape_movie_six
    movies << self.scrape_movie_seven
    movies << self.scrape_movie_eight
    movies << self.scrape_movie_nine
    movies << self.scrape_movie_ten

  end

  def self.scrape_movie_one
    doc = Nokogiri::HTML(open("https://www.boxofficemojo.com/release/rl252151297/?ref_=bo_hm_rd"))
    movie = Movielist::Movie.new
    movie.name = doc.css("h1").text
    movie.total = doc.css("span .money").text.split("$")[1]
    movie.studio = doc.css("div.a-section.a-spacing-none.mojo-gutter.mojo-summary-table > div.a-section.a-spacing-none.mojo-summary-values.mojo-hidden-from-mobile").text.strip.split(".")[0].slice("Warner Bros")
    doc_rotten = Nokogiri::HTML(open("https://www.rottentomatoes.com/m/joker_2019"))
    rotten = doc_rotten.search("span.mop-ratings-wrap__percentage").text.split(" ")
    movie.rm_score = rotten[0]
    movie.audience_score = rotten[1]
    movie.synopsis = doc_rotten.search("div#movieSynopsis").text.strip
    movie
    binding.pry
  end


  def self.scrape_movie_two
    doc = Nokogiri::HTML(open("https://www.boxofficemojo.com/movies/?id=everest2019.htm"))
    movie = Movielist::Movie.new
    selector = "table td b"
    anchors = doc.css(selector)
    movie.name = anchors.map{|a| a.text}[1].chomp(" (2019)")
    movie.total = anchors.map{|a| a.text}[2]
    movie.studio = anchors.map{|a| a.text}[3]
    movie.rank = doc.css("table td font").map{|a| a.text}[19]
    doc_rotten = Nokogiri::HTML(open("https://www.rottentomatoes.com/m/abominable"))
    rotten = doc_rotten.search("span.mop-ratings-wrap__percentage").text.split(" ")
    movie.rm_score = rotten[0]
    movie.audience_score = rotten[1]
    movie.synopsis = doc_rotten.search("div#movieSynopsis").text.strip
    movie
 end

 def self.scrape_movie_three
    doc = Nokogiri::HTML(open("https://www.boxofficemojo.com/movies/?id=downtonabbey.htm"))
     movie = Movielist::Movie.new
     selector = "table td b"
     anchors = doc.css(selector)
     movie.name = anchors.map{|a| a.text}[1].chomp(" (2019)")
     movie.total = anchors.map{|a| a.text}[2]
     movie.studio = anchors.map{|a| a.text}[3]
     movie.rank = doc.css("table td font").map{|a| a.text}[13]
     doc_rotten = Nokogiri::HTML(open("https://www.rottentomatoes.com/m/downton_abbey"))
     rotten = doc_rotten.search("span.mop-ratings-wrap__percentage").text.split(" ")
     movie.rm_score = rotten[0]
     movie.audience_score = rotten[1]
     movie.synopsis = doc_rotten.search("div#movieSynopsis").text.strip
     movie

  end

  def self.scrape_movie_four
    doc = Nokogiri::HTML(open("https://www.boxofficemojo.com/movies/?id=hustlers.htm"))
     movie = Movielist::Movie.new
     selector = "table td b"
     anchors = doc.css(selector)
     movie.name = anchors.map{|a| a.text}[1].chomp(" (2019)")
     movie.total = anchors.map{|a| a.text}[2]
     movie.studio = anchors.map{|a| a.text}[3]
     movie.rank = doc.css("table td font").map{|a| a.text}[11]
     doc_rotten = Nokogiri::HTML(open("https://www.rottentomatoes.com/m/hustlers_2019"))
     rotten = doc_rotten.search("span.mop-ratings-wrap__percentage").text.split(" ")
     movie.rm_score = rotten[0]
     movie.audience_score = rotten[1]
     movie.synopsis = doc_rotten.search("div#movieSynopsis").text.strip
     movie

  end

  def self.scrape_movie_five
    doc = Nokogiri::HTML(open("https://www.boxofficemojo.com/movies/?id=it2.htm"))
     movie = Movielist::Movie.new
     selector = "table td b"
     anchors = doc.css(selector)
     movie.name = anchors.map{|a| a.text}[1].chomp(" (2019)")
     movie.total = anchors.map{|a| a.text}[2]
     movie.studio = anchors.map{|a| a.text}[3]
     movie.rank = doc.css("table td font").map{|a| a.text}[29]
     doc_rotten = Nokogiri::HTML(open("https://www.rottentomatoes.com/m/it_chapter_two"))
     rotten = doc_rotten.search("span.mop-ratings-wrap__percentage").text.split(" ")
     movie.rm_score = rotten[0]
     movie.audience_score = rotten[1]
     movie.synopsis = doc_rotten.search("div#movieSynopsis").text.strip
     movie

  end

  def self.scrape_movie_six
   doc = Nokogiri::HTML(open("https://www.boxofficemojo.com/movies/?id=judy.htm"))
    movie = Movielist::Movie.new
    selector = "table td b"
    anchors = doc.css(selector)
    movie.name = anchors.map{|a| a.text}[1].chomp(" (2019)")
    movie.total = anchors.map{|a| a.text}[2]
    movie.studio = anchors.map{|a| a.text}[3]
    movie.rank = doc.css("table td font").map{|a| a.text}[10]
    doc_rotten = Nokogiri::HTML(open("https://www.rottentomatoes.com/m/judy_2019"))
    rotten = doc_rotten.search("span.mop-ratings-wrap__percentage").text.split(" ")
    movie.rm_score = rotten[0]
    movie.audience_score = rotten[1]
    movie.synopsis = doc_rotten.search("div#movieSynopsis").text.strip
    movie

 end

 def self.scrape_movie_seven
   doc = Nokogiri::HTML(open("https://www.boxofficemojo.com/movies/?id=adastra.htm"))
    movie = Movielist::Movie.new
    selector = "table td b"
    anchors = doc.css(selector)
    movie.name = anchors.map{|a| a.text}[1].chomp(" (2019)")
    movie.total = anchors.map{|a| a.text}[2]
    movie.studio = anchors.map{|a| a.text}[3]
    movie.rank = doc.css("table td font").map{|a| a.text}[17]
    doc_rotten = Nokogiri::HTML(open("https://www.rottentomatoes.com/m/ad_astra"))
    rotten = doc_rotten.search("span.mop-ratings-wrap__percentage").text.split(" ")
    movie.rm_score = rotten[0]
    movie.audience_score = rotten[1]
    movie.synopsis = doc_rotten.search("div#movieSynopsis").text.strip
    movie

 end

  def self.scrape_movie_eight
   doc = Nokogiri::HTML(open("https://www.boxofficemojo.com/movies/?id=rambolastblood.htm"))
    movie = Movielist::Movie.new
    selector = "table td b"
    anchors = doc.css(selector)
    movie.name = anchors.map{|a| a.text}[1].chomp(" (2019)")
    movie.total = anchors.map{|a| a.text}[2]
    movie.studio = anchors.map{|a| a.text}[3]
    movie.rank = doc.css("table td font").map{|a| a.text}[13]
    doc_rotten = Nokogiri::HTML(open("https://www.rottentomatoes.com/m/rambo_last_blood"))
    rotten = doc_rotten.search("span.mop-ratings-wrap__percentage").text.split(" ")
    movie.rm_score = rotten[0]
    movie.audience_score = rotten[1]
    movie.synopsis = doc_rotten.search("div#movieSynopsis").text.strip
    movie

 end

  def self.scrape_movie_nine
   doc = Nokogiri::HTML(open("https://www.boxofficemojo.com/movies/?id=war.htm"))
    movie = Movielist::Movie.new
    selector = "table td b"
    anchors = doc.css(selector)
    movie.name = anchors.map{|a| a.text}[1].chomp(" (2019)")
    movie.total = anchors.map{|a| a.text}[2]
    movie.studio = anchors.map{|a| a.text}[3]
    movie.rank = doc.css("table td font").map{|a| a.text}[9]
    doc_rotten = Nokogiri::HTML(open("https://www.rottentomatoes.com/m/war_2019"))
    rotten = doc_rotten.search("span.mop-ratings-wrap__percentage").text.split(" ")
    movie.rm_score = rotten[0]
    movie.audience_score = rotten[1]
    movie.synopsis = doc_rotten.search("div#movieSynopsis").text.strip
    movie

 end

  def self.scrape_movie_ten
   doc = Nokogiri::HTML(open("https://www.boxofficemojo.com/movies/?id=untitleduniversal2019.htm"))
    movie = Movielist::Movie.new
    selector = "table td b"
    anchors = doc.css(selector)
    movie.name = anchors.map{|a| a.text}[1].chomp(" (2019)")
    movie.total = anchors.map{|a| a.text}[2]
    movie.studio = anchors.map{|a| a.text}[3]
    movie.rank = doc.css("table td font").map{|a| a.text}[11]
    doc_rotten = Nokogiri::HTML(open("https://www.rottentomatoes.com/m/good_boys_2019"))
    rotten = doc_rotten.search("span.mop-ratings-wrap__percentage").text.split(" ")
    movie.rm_score = rotten[0]
    movie.audience_score = rotten[1]
    movie.synopsis = doc_rotten.search("div#movieSynopsis").text.strip
    movie

 end


end
#a-page > main > div > div.a-section.a-spacing-none.mojo-gutter.mojo-summary-table > div.a-section.a-spacing-none.mojo-summary-values.mojo-hidden-from-mobile