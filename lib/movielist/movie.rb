
class Movielist::Movie

  @@all = []

  attr_accessor :name, :total, :studio, :rm_score, :audience_score, :synopsis, :rank


  def initialize(name = nil, total = nil, studio = nil, rm_score = nil, audience_score = nil, synopsis = nil, rank = nil)
    @name = name
    @total = total
    @studio = studio
    @rm_score = rm_score
    @audience_score = audience_score
    @synopsis = synopsis
    @rank = rank
    @@all << self
  end

  def self.all
    @@all
  end

end
