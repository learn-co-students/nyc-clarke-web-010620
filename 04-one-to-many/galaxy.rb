class Galaxy
  attr_accessor :size, :arms, :colors #, :planets
  attr_reader :name

  @@all = []

  def initialize(name, size, arms, colors)
    @name = name
    @size = size
    @arms = arms
    @colors = colors
    # @planets = []

    @@all << self
  end

  # def add_planet(planet_object)
  #   @planets << planet_object
  # end

  def planets
    # when i run this method, return an array of all planets belonging to this galaxy
    self

    Planet.all.select do |planet|
      planet.galaxy == self
    end
  end

  def self.find_by_name(g_name)
    Galaxy.all.find do |galaxy|
      galaxy.name == g_name
    end
  end

  def self.all
    # other functionality
    @@all
  end

  def larger_than(target_size)
    self.size > target_size
  end

  def self.larger_than(target_size)
    self.all.select do |galaxy|
      galaxy.size > target_size
    end
  end

  def self.has_color(target_color)
    # give me all galaxies that have target_color among their colors
    # new_array = []

    # Galaxy.all.each do |galaxy|
    #   galaxy.colors.each do |color|
    #     if color == target_color
    #       new_array << galaxy
    #     end
    #   end
    # end

    # new_array

    Galaxy.all.select do |galaxy|
      galaxy.colors.include?(target_color)
    end
  end

end


# name
# size
# arms
# color


# planets (!)