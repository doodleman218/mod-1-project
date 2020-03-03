class CreateListings < ActiveRecord::Migration[5.2]
    def change 
        create_table :listings do |t|
            t.integer :price
            t.integer :game_id
            t.integer :owner_id
        end
    end
end
