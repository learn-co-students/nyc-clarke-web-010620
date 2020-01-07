require 'pry'
# Write your code here!


fruits = [
  {species: "Kumquat", delicious: false},
  {species: "Bananas", delicious: true},
  {species: "Lychee", delicious: true},
  {species: "Dragonfruit", delicious: true},
  {species: "Gooseberry", delicious: false}
]


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

print_fruits(fruits)


book = {
  title: "Circe",
  author: "Madeleine Miller",
  num_pages: 342,
  genre: "mythology",
  published: true,
  year_of_publication: 2017,
  characters: [
    {name: "Circe", age: 6428}, 
    {name: "Jason", age: 35}
  ]
}

binding.pry
