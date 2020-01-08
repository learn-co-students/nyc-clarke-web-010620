class Planet

  attr_accessor :name
  attr_reader :size, :atmosphere

  @@all = []

  def initialize(size, atmosphere, name)
    @size = size
    @atmosphere = atmosphere
    @name = name

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