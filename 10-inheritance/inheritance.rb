require 'pry'

class Building

  attr_reader :name

  def initialize(name, num_floors)
    @name = name
    @num_floors = num_floors

  end

  def have_walls
    puts "Yay we've got walls!!!"
  end

  def have_roofs
    puts "Phew! There's a roof!"
  end

  def beef
    puts "PARENT BEEF"
  end

  def self.all
    @@all
  end
end



class School < Building

  attr_writer :name

  @@all = []

  def initialize(name, num_classrooms)
    super(name, 10)
    @num_classrooms = num_classrooms
    @@all << self
  end

  def self.all
    @@all
  end


  def have_classrooms
    puts "Children be learnin'!"
  end

  def to_s
    puts "You got your string"
    super
  end

  # def have_roofs
  #   # beef = "CHICKEN"
  #   puts beef

  #   puts "Hey our roof is flat!!!!"
  # end
end

class House < Building
  def have_bedrooms
    puts "Beds are great!"
  end
end

flatiron = School.new("Flatiron", 5)
home = House.new("Homie home", 2)


binding.pry
