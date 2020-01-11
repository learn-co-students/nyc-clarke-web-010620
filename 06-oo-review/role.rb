class Role 

  attr_accessor :character_name, :actor, :movie, :lines

  @@all = []

  def initialize(character_name, actor, movie, lines)
    @character_name = character_name
    @actor = actor
    @movie = movie
    @lines = lines

    @@all << self
  end

  def self.all
    @@all
  end
end