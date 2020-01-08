require 'pry'
require_relative './galaxy.rb'
require_relative './planet.rb'

g1 = Galaxy.new("Milky Way", 52850, 12, ["blue", "yellow"])
g2 = Galaxy.new("Andromeda", 110000, 5, ["red", "blue"])
g3 = Galaxy.new("Whirpool", 30000, 2, ["purple", "green"])
g4 = Galaxy.new("Sombrero", 25000, 4, ["yellow", "green"])

p1 = Planet.new("Earth", 3958.8, true)
p2 = Planet.new("Mars", 2106.15, false )
p3 = Planet.new("Jupiter", 43441 , true)

binding.pry
