class GamesTableChange < ActiveRecord::Migration[5.2]
  def change 
    rename_column :games, :release_date, :release_year
  end
end