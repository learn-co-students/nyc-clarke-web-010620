require 'pry'
require_relative './galaxy.rb'
require_relative './planet.rb'

g1 = Galaxy.new("Milky Way", 52850, 12, ["blue", "yellow"])
g2 = Galaxy.new("Andromeda", 110000, 5, ["red", "blue"])
g3 = Galaxy.new("Whirpool", 30000, 2, ["purple", "green"])
g4 = Galaxy.new("Sombrero", 25000, 4, ["yellow", "green"])

p1 = Planet.new("Earth", 3958.8, true, g1)
# g1.add_planet(p1)

p2 = Planet.new("Mars", 2106.15, false, g1)
# g1.add_planet(p2)

p3 = Planet.new("Jupiter", 43441 , true,g1)
# g1.add_planet(p3)

p4 = Planet.new("Ceres", 43441 , true, g1)
# g1.add_planet(p4)

p5 = Planet.new("Tattoine", 43441 , true, g2)
# g2.add_planet(p5)

p6 = Planet.new("Alpha Centauri", 5427 , false, g3)
# g3.add_planet(p6)

p7 = Planet.new("Eden VI", 28441 , true, g4)
# g4.add_planet(p7)

p8 = Planet.new("Dagoba", 23441 , true, g2)
# g2.add_planet(p8)

p9 = Planet.new("Vulcan", 8239 , true, g2)
# g2.add_planet(p9)

p10 = Planet.new("Terra", 3729 , false, g3)
# g3.add_planet(p10)
# 

p11 = Planet.new("Middle Earth", 57293 , true, g4)
# g4.add_planet(p11)


# g1.planets => [planet_objs,...]
# p1.galaxy => galaxy_obj

puts "Welcome to Galaxy Quest!!!"
puts "What galaxy would you like to know about?"
target_galaxy = gets.chomp
galaxy = Galaxy.find_by_name(target_galaxy)

puts "Here are the planets of this galaxy:"
galaxy.planets.each do |planet|
  puts planet.name
end


