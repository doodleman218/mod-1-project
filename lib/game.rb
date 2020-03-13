class Game < ActiveRecord::Base
    has_many :listings
    has_many :owners, through: :listings

    def self.add_game_to_database(name, release_year)
        self.create(name: name, system: "NES", release_year: release_year)
    end
    
    def to_s
        "#{name}, NES, #{release_year}"
    end
    # what connects these 2 methods to display things as such?
    # why does this have no effect on add_game?
    def self.display_all_games
        self.all
    end
    
    


end