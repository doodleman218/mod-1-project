class Listing < ActiveRecord::Base
    belongs_to :game
    belongs_to :owner


    def to_s
        "#{game.name}, $#{price}, #{owner.name}"
    end

    #again, how does to_s come into play??
    def self.all_listings
        self.all
    end
    
    
    
    # def self.destroy_listing
    #   #lets user get rid of a listing
    #   #enter on their listing id
    #   #anyway to keep it from deleting other listings??
    #   #if owner_id == listing owner_id
    # end
    
    def self.popular_game
       #finds the game with the most listings
    #    self. 
    end


end


# def self.listing_names_collection
    #    *****NOT NEEDED BUT A FUN EXERCISE TO EXPLORE LATER*****
    #     listings = self.all
    #     games = Game.all
    #     listings_game_id = listings.collect{|id| id.game_id}

    #     binding.pry
    # end