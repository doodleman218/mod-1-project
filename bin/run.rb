require_relative '../config/environment'

puts "%%%%%%%%%%%%%% Welcome to the NES Listings Network %%%%%%%%%%%%%%"

puts "Please enter a name to create a new user ID"

username_response = gets.chomp

current_owner = Owner.create_from_username(username_response)

puts "Welcome #{current_owner.name}, what would you like to do?"

display_options

user_option = gets.chomp


if user_option == "1"
  puts Game.display_all_games
elsif user_option == "2"
  puts "Please enter a name"
  user_game_name = gets.chomp
  puts "Please enter a release year"
  user_game_release = gets
  Game.add_game_to_database(user_game_name, user_game_release)
elsif user_option == "3"
  puts Listing.all_listings
elsif user_option == "5"
  puts Owner.list_of_owners
elsif user_option == "7"
  puts "Please enter an owners name"
  user_owner_selection = gets.chomp
  puts Owner.listings_from_owner_name(user_owner_selection)
end







# puts "Would you like to see a list of games from our catalogue?"

# response = gets.chomp

# if response == "yes" || response == "y"
#  Game.display_all_games
# end

# puts "Please enter a username."

# username_response = gets.chomp

# def create_username(username_response)
#   Owner.create(name: username_response)
# end

# create_username("test")









