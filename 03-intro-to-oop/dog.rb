class Dog
  attr_reader :breed
  attr_accessor :name, :age, :weight, :color

  @@all = []
  @@next_id = 1

  def self.all
    @@all
  end

  def initialize(name, age, breed, weight, color)
    @name = name
    @age = age
    @breed = breed
    @weight = weight
    @color = color
    @id = @@next_id

    @@next_id += 1
    @@all << self
  end

  def who_is_self
    self.bark
    puts self.name
  end

  def bark
    puts "#{@name} is going 'bork bork'"
  end
end


