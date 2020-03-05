class Owner < ActiveRecord::Base
   has_many :listings
   has_many :games, through: :listings


   def to_s
      "#{name}"
  end
   
   def self.create_from_username(username_response)
      Owner.create(name: username_response)
   end

   def self.list_of_owners
      self.all
   end
   
   
   # def owner_most_listing_count(name)
   #    #pull up all listings
   #    #get all owner ids
   #    #find which name shows up most
   #    #return that name

   #    Listing.max_by {|i| Listing.owner_id.count(i)}

   # end
   
   def self.listings_from_owner_name(user_owner_selection)
      #   #user give owner name
      #   #returns all listings from that owner
      # name = self(:name)
      Owner.find_by(name: user_owner_selection).listings   
      

   end

   def self.create_listing(price, game, owner)
      Listing.create(price: price, game_id: Game.find_by(name:game).id, owner_id: owner.id)
      #how to get game id
   
   end

   def self.destroy_listing
      #   #lets user get rid of a listing
      #   #enter on their listing id
      #   #anyway to keep it from deleting other listings??
      #   #if owner_id == listing owner_id
   end




end

