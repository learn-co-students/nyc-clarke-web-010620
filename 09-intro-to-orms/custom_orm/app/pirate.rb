class Pirate

  attr_accessor :name, :ship, :booty, :location_of_treasure, :id

  DB = SQLite3::Database.new("./db/database.db")

  def initialize(name, ship, booty, location_of_treasure, id=nil)
    @name = name
    @ship = ship
    @booty = booty
    @location_of_treasure = location_of_treasure
    @id = id
  end

  def self.all
    pirates = DB.execute("
      SELECT *
      FROM pirates;
    ")

    pirates.map do |pirate|
      Pirate.new(pirate[1], pirate[2], pirate[3], pirate[4], pirate[0])
    end
  end

  def self.find(id)
    # returns the pirate in the DB with the matching ID
    # 2 ways to do this!

    # 1. Ruby way
    # Pirate.all.find do |pirate|
    #   pirate.id == id
    # end

    # 2. SQL way
    pirate = DB.execute("
      SELECT *
      FROM pirates
      WHERE pirates.id = #{id}
    ").flatten

    Pirate.new(pirate[1], pirate[2], pirate[3], pirate[4], pirate[0])
  end

  def save
    pirate = DB.execute("
      INSERT INTO pirates (name, ship, booty, location_of_treasure)
      VALUES(?, ?, ?, ?)
    ", @name, @ship, "#{@booty}", @location_of_treasure)
  end


end