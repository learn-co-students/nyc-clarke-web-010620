require 'pry'
# Write your code here!


fruits = [
  {species: "Kumquat", delicious: false},
  {species: "Bananas", delicious: true},
  {species: "Lychee", delicious: true},
  {species: "Dragonfruit", delicious: true},
  {species: "Gooseberry", delicious: false}
]

def fruit_names(fruits)
  # new_array = []

  # fruits.each do |fruit|
  #   new_array << fruit[:species]
  # end

  fruits.map do |fruit|
    fruit[:species]
  end
end

def print_fruits(beef)
  beef.each do |fruit| 
    final = fruit[:species] + " is "

    if fruit[:delicious]
      final += "delicious"
    else
      final += "not delicious"
    end

    puts final
  end
end

def delicious_fruits_only(fruits)
  # use conditional logic to check if the fruit is delicious
  # if so put it in a new array
  # return that array

  # new_array = []

  # fruits.each do |fruit|
  #   if fruit[:delicious]
  #     new_array << fruit
  #   end
  # end

  new_array = fruits.select do |fruit|
    fruit[:delicious]
  end

  if new_array.length == 0 
    return "Sorry, they're all terrible"
  end

  new_array
end


def between(array, low, high)
  # return only the numbers in the array that are between 2 and 8
  array.select do |num|
    num > low && num < high
  end
end

# between([9,4,1,7,5,4,10,2,17,8], 1, 10) # => [9,4,7,5,3,2,8]

# book = {
#   title: "Circe",
#   author: "Madeleine Miller",
#   num_pages: 342,
#   genre: "mythology",
#   published: true,
#   year_of_publication: 2017,
#   characters: [
#     {name: "Circe", age: 6428}, 
#     {name: "Jason", age: 35}
#   ]
# }

binding.pry
