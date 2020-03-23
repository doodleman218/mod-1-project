Owner.destroy_all
Listing.destroy_all
Game.destroy_all

# GetVideoGames is class from API file
#get_games_info is method which contains the JSON file
collection = GetVideoGames.get_games_info

#results is from the collection file and is the array we want access to
collection["results"].each do |game_info|
  Game.create(name: game_info["name"], release_year: game_info["released"], system: "NES")
end


#self made data for project
david = Owner.create(name: "David")
mary = Owner.create(name: "Mary")
ryan = Owner.create(name: "Ryan")


#self made data for project
first = Listing.create(price: 25, owner_id: david.id, game_id: 14)
second = Listing.create(price: 50, owner_id: david.id, game_id: 24)
third = Listing.create(price: 100, owner_id: david.id, game_id: 15)
fourth = Listing.create(price: 89, owner_id: david.id, game_id: 19)
fifth = Listing.create(price: 256, owner_id: mary.id, game_id: 29)
sixth = Listing.create(price: 78, owner_id: mary.id, game_id: 31)
seventh = Listing.create(price: 134, owner_id: ryan.id, game_id: 22)
eigth = Listing.create(price: 120, owner_id: mary.id, game_id: 36)




binding.pry