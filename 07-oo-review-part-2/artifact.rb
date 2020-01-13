class Artifact
  attr_accessor :name, :price, :type

  @@all = []

  def initialize(name, price, type)
    @name = name
    @price = price
    @type = type
    @@all << self
  end

  def self.all
    @@all
  end

  def contracts
    Contract.all.select do |contract|
      contract.artifact == self
    end
  end

  def theives
    # return all thieves who have a contract on this artifact
    # array of contracts -> array of thieves

    self.contracts.map do |contract|
      contract.thief
    end
  end

end

