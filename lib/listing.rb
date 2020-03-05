class Listing < ActiveRecord::Base
    belongs_to :game
    belongs_to :owner


    def to_s
        "#{game_id}, $#{price}, #{owner_id}"
    end

    
    def self.all_listings
        self.all
    end
    
    def listing_names
        

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