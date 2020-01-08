```rb
# larry = {
#   name: "Larry Kovacs",
#   age: 34
# }

# amy = {
#   name: "Amy Chen",
#   age: 26
# }

# bill = {
#   name: "Bill Weatherson",
#   age: 78
# }

# # hard to make a lot of these things manually
# # error prone

# # larry["name"] = "Larry Reinaldo"

# def say_hi(person)
#   puts "Hi, my name is #{person[:name]} and I am #{person[:age]} years old."
# end



# def create_person(name, age)
#   {name: name, age: age}
# end

class Dog
  # attr_reader :name, :breed, :age, :weight, :color
  # attr_writer :name, :age, :weight, :color
  attr_reader :breed
  attr_accessor :name, :age, :weight, :color

  def initialize(name, age, breed, weight, color)
    @name = name
    @age = age
    @breed = breed
    @weight = weight
    @color = color
  end

  # instance methods
  # these are run by particular instances
  # access to instance variable of that instance that is running
  # def name
  #   @name + " dog"
  # end

  # def age=(age)
  #   @age = age
  # end

  # def beef=(beef)
  #   @beef = beef
  # end

  def bark
    puts "#{@name} is going 'bork bork'"
    # Fido is going 'bork bork'
  end
end



# dogs have
# a name
# an age
# a breed
# a weight
# a color
```


