require_relative '../config/environment'
ActiveRecord::Base.logger = nil

clear_screen

puts "%%%%%%%%%%%%%% Welcome to the NES Listings Network %%%%%%%%%%%%%%"

puts "Please enter a name to create a new user ID"

username_response = gets.chomp

current_owner = Owner.create_from_username(username_response)

clear_screen

puts "Welcome #{current_owner.name}, what would you like to do?"

display_options

user_option = gets.chomp

clear_screen

while user_option != "exit"
    # clear_screen
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
elsif user_option == "4"
  puts "Please enter the game title"
  user_listing_title = gets.chomp
  puts "Please enter the price"
  user_listing_price = gets
  Owner.create_listing(user_listing_price, user_listing_title, current_owner)
  elsif user_option == "5"

puts Owner.show_user_listings
elsif user_option == "6"
  puts Owner.list_of_owners
elsif user_option == "7"
  puts "Please enter an owners name"
  user_owner_selection = gets.chomp
  puts Owner.listings_from_owner_name(user_owner_selection)
elsif user_option == "8"
  #binding.pry
  puts Owner.show_user_listings(current_owner)
  puts "Please type the game title of the listing you would like to delete"
  user_delete_selection = gets.chomp
  binding.pry
  def Owner.delete_user_listing(user_delete_selection)
    if user_delete_selection == current_owner.listings.[0].game_id
      # Game.find(id).name 
      # need to create a loop to go through listings
       #delete/destroy that selection

 
    # if current_owner.id == user_delete_selection.owner_id
    #    Listing.delete(name:user_delete_selection).id
    # else
    #    "Sorry, bla bla bla"
    end
 end

end

# clear_screen

display_options
#puts "are we here"
user_option = gets.chomp
#puts "or here"
clear_screen
# puts "possibly here"
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









