class Galaxy
  attr_accessor :size, :arms, :colors
  attr_reader :name

  @@all = []

  def initialize(name, size, arms, colors)
    @name = name
    @size = size
    @arms = arms
    @colors = colors

    @@all << self
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