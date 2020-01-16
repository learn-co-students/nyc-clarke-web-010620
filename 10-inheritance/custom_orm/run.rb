require './config/environment'

system("clear")



def prompt_user
  system("clear")
  puts "What would you like to do?"
  puts "1. Create a pirate"
  puts "2. See all pirates"
  puts "3. See one pirate"
  puts "4. Exit"

  user_input = gets.chomp.to_i
  action_router(user_input)
end


def action_router(input)
  case input
  when 1
    make_pirate
  when 2
    print_pirates
  when 3
    find_pirate
  when 4
    return
  end
  puts "(press any key to return to the main menu)"
  gets.chomp
  prompt_user
end

def make_pirate
  puts "Yahar! What is ye pirate's name?"
  name = gets.chomp

  puts "Land ho! What is ye ship's name?"
  ship = gets.chomp

  puts "Yarr! Yer pirate got booty? (y/n)"
  booty = gets.chomp.downcase == "y"

  puts "Yoho! Where ye pirate be stashin' his treasure?"
  location_of_treasure = gets.chomp.to_i

  pirate = Pirate.new(name, ship, booty, location_of_treasure)
  pirate.save

  puts "Ye pirate is settin' sail!"
end

def print_pirates
  Pirate.all.each do |pirate|
    puts " ---------------  "
    puts "Name: #{pirate.name}"
    puts "Ship: #{pirate.ship}"
    puts "Booty: #{pirate.booty == 1 ? "Yar!" : "Nar..."}"
    puts "Location of Treasure: #{pirate.location_of_treasure}"
    puts " ---------------  "
  end
end

def find_pirate
  puts "What is thy pirate's id?"

  id = gets.chomp.to_i

  pirate = Pirate.find(id)

  puts " ---------------  "
  puts "Name: #{pirate.name}"
  puts "Ship: #{pirate.ship}"
  puts "booty: #{pirate.booty == 1 ? "Yar!" : "Nar..."}"
  puts "Location of Treasure: #{pirate.location_of_treasure}"
  puts " ---------------  "
end


puts "🏴‍☠️ Avast! Welcome to Pirate World! 🏴‍☠️"
puts "(press any key to continue)"
gets.chomp
prompt_user
