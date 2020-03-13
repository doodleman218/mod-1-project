require 'net/http'
 require 'open-uri'
 require 'json'

 class GetVideoGames

    #NES GAMES

    URL = "https://api.rawg.io/api/games?platforms=49&page_size=40"
    #49 is NES, 79 is SNES
    #?platforms=49&page_size=40


    def self.get_games
        uri = URI.parse(URL)
        response = Net::HTTP.get_response(uri)
        response.body
    end

    
    def self.get_games_info
      games_hash = JSON.parse(self.get_games)  
    end

     

    
    
    # URL = "https://api.rawg.io/api/games?platforms=79&page_size=40"
    # #49 is NES, 79 is SNES
    # #?platforms=49&page_size=40


    # def self.get_games
    #     uri = URI.parse(URL)
    #     response = Net::HTTP.get_response(uri)
    #     response.body
    # end

    
    # def self.get_games_info
    #   games_hash = JSON.parse(self.get_games)
    # # programs.collect do |program|
    # #   program["agency"]
    
    # end




 
 
 
 
  end

#  def get_programs
#     uri = URI.parse(URL)
#     response = Net::HTTP.get_response(uri)
#     response.body
#   end

#   def program_school
#     programs = JSON.parse(self.get_programs)
#     programs.collect do |program|
#       program["agency"]
#     end
#   end
