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

  def self.all
    @@all
  end
end