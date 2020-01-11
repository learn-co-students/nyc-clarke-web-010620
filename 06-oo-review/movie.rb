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

  def self.all
    @@all
  end
end