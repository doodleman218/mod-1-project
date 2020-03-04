require_relative '../config/environment'

# puts "hello world"

puts "%%%%%%%%%%%%%% Welcome to the NES Listings Network %%%%%%%%%%%%%%"

# puts "Would you like to see a list of games from our catalogue?"

# response = gets.chomp

# if response == "yes" || response == "y"
#   puts Game.all

# end

puts "Please enter a username."

username_response = gets.chomp

def create_username(username_response)
  Owner.create(name: username_response)
end

def owner_most_listing_count
  #pull up all listings
  #get all owner ids
  #find which ID shows up most
  #return that ID
end

def listings_from_owner
  #user give owner Id
  #returns all listings from that owner
end

david = Owner.create(name: "David")
mary = Owner.create(name: "Mary")
ryan = Owner.create(name: "Ryan")

first = Listing.create(price: 25, owner_id:  , game_id: 14)
second = Listing.create(price: 50, owner_id:  , game_id: 24)
third = Listing.create(price: 100, owner_id:  , game_id: 15)
fourth = Listing.create(price: 89, owner_id:  , game_id: 19)
fifth = Listing.create(price: 256, owner_id:  , game_id: 29)
sixth = Listing.create(price: 78, owner_id:  , game_id: 31)
seventh = Listing.create(price: 134, owner_id:  , game_id: 22)