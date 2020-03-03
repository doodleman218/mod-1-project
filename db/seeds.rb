

# price: Faker::Number.between(from: 1, to: 300)

collection = GetVideoGames.get_games_info

collection["results"].each do |game_info|
  Game.create(name: game_info["name"], release_year: game_info["released"], system: "NES")
end


binding.pry