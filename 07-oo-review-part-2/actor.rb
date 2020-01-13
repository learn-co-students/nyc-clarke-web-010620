class Actor 

  attr_accessor :name, :experience, :year

  @@all = []

  def initialize(name, experience, year)
    @name = name
    @experience = experience
    @year = year

    @@all << self
  end

  def roles
    # Tells you the roles for an actor
    Role.all.select do |role|
      role.actor == self
    end
  end

  def movies
    self.roles.map do |role|
      role.movie
    end
    # Movie.all.select do |movie|
    #   movie.actors.include?(self)
    # end
  end

  def latest_movie
    self.movies.max_by do |movie|
      movie.release_date
    end
  end

  def self.youngest_actor
    # returns actor with greatest birth year
    sorted_actors = self.all.sort_by do |actor|
      actor.year
    end

    sorted_actors[-1]
  end

  def self.most_experienced
    # returns actor with greatest birth year
    sorted_actors = self.all.sort_by do |actor|
      actor.experience
    end

    sorted_actors[-1]
  end

  def self.most_prolific
    # returns the actor object that has been in the most movies/ has the most number roles

    self.all.max_by do |actor|
      actor.movies.count
    end
  end

  def self.all
    @@all
  end
end