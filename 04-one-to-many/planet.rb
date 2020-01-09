class Planet

  attr_accessor :name, :galaxy
  attr_reader :size, :atmosphere

  @@all = []

  def initialize(name, size, atmosphere, galaxy)
    @size = size
    @atmosphere = atmosphere
    @name = name
    @galaxy = galaxy

    @@all << self
  end

  def self.all
    @@all
  end

  def terraform
    @atmosphere = true
  end

  def pollute_heavily
    @atmosphere = false
  end

end

# size
# atmosphere
# name