class CreateGames < ActiveRecord::Migration[5.2]
    def change 
        create_table :games do |t|
            t.string :name
            t.string :system
            t.integer :release_date #changed from release_date
        end
    end
end
