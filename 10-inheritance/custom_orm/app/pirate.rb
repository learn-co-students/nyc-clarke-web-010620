class Pirate

  attr_accessor :name, :ship, :booty, :location_of_treasure, :id

  DB = SQLite3::Database.new("./db/database.db")

  def initialize(properties)
    @name = properties[:name]
    @ship = properties[:ship]
    @booty = properties[:booty]
    @location_of_treasure = properties[:location_of_treasure]
    @id = properties[:id]
  end

  def self.all
    data = DB.execute("
      SELECT *
      FROM #{self.to_s.downcase}s;
    ")

    data.map do |pirate|
      self.new(
        booty: pirate[3], 
        name: pirate[1], 
        ship: pirate[2], 
        location_of_treasure: pirate[4], 
        id: pirate[0]
      )
    end
  end

  def self.find(id)
    pirate = DB.execute("
      SELECT *
      FROM pirates
      WHERE pirates.id = #{id}
    ").flatten

    Pirate.new(
      booty: pirate[3], 
      name: pirate[1], 
      ship: pirate[2], 
      location_of_treasure: pirate[4], 
      id: pirate[0]
    )
  end

  def save
    pirate = DB.execute("
      INSERT INTO pirates (name, ship, booty, location_of_treasure)
      VALUES(?, ?, ?, ?)
    ", @name, @ship, "#{@booty}", @location_of_treasure)
  end


end