Drink.destroy_all
# User.destroy_all
# Order.destroy_all

# --------- CREATE HERO DRINKs -------------------
hero_request = RestClient.get 'https://cdn.rawgit.com/akabab/superhero-api/0.2.0/api/all.json'
hero_response = hero_request.body
heros = JSON.parse(hero_response)

drink_types = ["AFFOGATO", "AMERICANO", "CAFFÈ LATTE", "CAFFÈ MOCHA", "CAPPUCCINO", "COLD BREW COFFEE", "DOUBLE ESPRESSO", "MACCHIATO", "FLAT WHITE", "FRAPPÉ", "FREAKSHAKE", "ICED LATTE", "ICED MOCHA", "IRISH COFFEE", "MACCHIATO", "RISTRETTO", "DRIP COFFEE"]

30.times do 
  hero = heros.sample
  Drink.create(name: "#{hero["name"]} #{drink_types.sample}", description: Faker::Coffee.notes, img_url: hero["images"]["lg"])
end


# 15.times do   
#   Drink.create(name: Faker::Superhero.name, size: size.sample, img_url: Faker::Fillmurray.image)
# end 

# -------------CREATE USERS ---------------------
# users = [
#   {user_name: "Adam L", img_url: "https://ca.slack-edge.com/T02MD9XTF-US67WPU56-fb39149a1450-512"},
#   {user_name: "Andrew Richards", img_url: "https://ca.slack-edge.com/T02MD9XTF-US83R8X6K-cc2fc7caa7b8-512"},
#   {user_name: "Anthony Holder", img_url: "https://ca.slack-edge.com/T02MD9XTF-US741LFS8-f9b9fd062573-512"},
#   {user_name: "Granit Haxhaj", img_url: "https://ca.slack-edge.com/T02MD9XTF-US7HSVBS9-cfc5cc40831d-512"},
#   {user_name: "Jerry Huang", img_url: "https://ca.slack-edge.com/T02MD9XTF-URTE8V6Q2-d97da7bc4c58-512"},
#   {user_name: "Isabelle Pino", img_url: "https://ca.slack-edge.com/T02MD9XTF-UC6H2GLG0-5df96d5f1ca6-512"},
#   {user_name: "Kent Chan", img_url: "https://ca.slack-edge.com/T02MD9XTF-US9PKKV8E-146d17d0a1a7-512"},
#   {user_name: "Meghann Walsh", img_url: "https://ca.slack-edge.com/T02MD9XTF-UL33YDYRX-305742ce1399-512"},
#   {user_name: "Mike Diaz", img_url: "https://ca.slack-edge.com/T02MD9XTF-US5PV66SY-ccf2e8214ec4-512"},
#   {user_name: "Natalia Wit", img_url: "https://ca.slack-edge.com/T02MD9XTF-US5PV6SG4-6eddb142930f-512"},
#   {user_name: "Masta Balasta", img_url: "https://ca.slack-edge.com/T02MD9XTF-U5YSRUVJ6-31bcc120729a-512"},
#   {user_name: "Tom Humphrey", img_url: "https://ca.slack-edge.com/T02MD9XTF-URW0WT9ED-5fb00ea5bbb4-512"},
#   {user_name: "Mariam Anuashvili", img_url: "https://ca.slack-edge.com/T02MD9XTF-URW0WRBUH-c9de3ba8e6f0-512"},
#   {user_name: "Mocha", img_url: "https://ca.slack-edge.com/T02MD9XTF-US686GYF7-d76f89739c57-512"},
#   {user_name: "Nathan Brickett", img_url: "https://ca.slack-edge.com/T02MD9XTF-URUPJ5J91-d7734dae5047-512"},
#   {user_name: "Theresa G", img_url: "https://ca.slack-edge.com/T02MD9XTF-US686J3RB-237be9df68aa-512"},
#   {user_name: "Steven Zhu", img_url: "https://ca.slack-edge.com/T02MD9XTF-URW0WSZPT-a86dbf849f44-512"},
#   # {user_name: "", img_url: ""},
# ]

# users.each do |user|
#   User.create(user_name: user.user_name, img_url: user.img_url)
# end 

# ------------- Create Drink Order ----------------

# size = ["small", "large", "medium"]

# 100.times do   
#   Order.create(size: size.sample, quantity: )
# end