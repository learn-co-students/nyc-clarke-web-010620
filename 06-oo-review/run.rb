require 'pry'
require_relative './actor.rb'
require_relative './movie.rb'
require_relative './role.rb'

m1 = Movie.new("Terminator", 1984, 110, "action")
m2 = Movie.new("Matrix", 1999, 117, "science fiction")
m3 = Movie.new("Airplane", 1976, 89, "comedy")

a1 = Actor.new("Arnold Schwartzeneggar", 40, 1952)
a2 = Actor.new("Keanu Reeves", 25, 1963)
a3 = Actor.new("Laurence Fishborne", 27, 1945)

r1 = Role.new("T-1000", a1, m1, 5)
r2 = Role.new("Neo", a2, m2, 78)
r3 = Role.new("Morpheus", a3, m2, 65)
r4 = Role.new("Pilot", a1, m3, 4)
r5 = Role.new("Nun", a2, m3, 12)
r6 = Role.new("Store Clerk 1", a3, m1, 2)
r7 = Role.new("Mr. Anderson", a1, m2, 83)


binding.pry
