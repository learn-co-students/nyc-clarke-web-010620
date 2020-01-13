class Movie 

  attr_accessor :title, :release_date, :runtime, :genre

  @@all = []

  def initialize(title, release_date, runtime, genre)
    @title = title
    @release_date = release_date
    @runtime = runtime
    @genre = genre

    @@all << self
  end

  def roles
    Role.all.select do |role|
      role.movie == self
    end
  end

  def actors
    self.roles.map do |role|
      role.actor
    end
  end

  def self.longest_runtime
    # self.all
    # sorted_array = Movie.all.sort_by do |movie|
    #   movie.runtime
    # end

    # sorted_array[sorted_array.length - 1]

    # Movie.all.sort_by do |movie|
    #   movie.runtime
    # end[-1]

    Movie.all.max_by do |movie|
      movie.runtime
    end
  end

  def self.most_actors
    self.all.max_by do |movie|
      movie.actors.length
    end
  end

  def self.all
    @@all
  end
end