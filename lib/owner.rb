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

   def self.create_listing(user_listing_price, user_listing_title, current_owner)
      Listing.create(price: user_listing_price, game_id: Game.find_by(name:user_listing_title).id, owner_id: current_owner.id)
   end

   def self.show_user_listings(current_owner)
       current_owner.listings
   end

   def self.delete_user_listing(user_delete_selection)
      if user_delete_selection == current_owner.listings.name
         # need to create a loop to go through listings
         #delete/destroy that selection
   
   
      # if current_owner.id == user_delete_selection.owner_id
      #    Listing.delete(name:user_delete_selection).id
      # else
      #    "Sorry, bla bla bla"
      end
   end
   
   # def self.destroy_listing(user_delete_title)
   #    #   #lets user get rid of a listing
   #    #   #enter on their listing id
   #    #   #anyway to keep it from deleting other listings??
   #    #   #if owner_id == listing owner_id
   #    binding.pry
   #    Listing.destroy(Game.find_by(name:user_delete_title).id)
   # end




end

