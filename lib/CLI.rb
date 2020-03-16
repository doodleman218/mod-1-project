
  def display_options
    puts "%%%%%%%%%%%%%%%%%%%%%%%%%%%"
    puts "1) View Game Database"
    puts "2) Add Game to Database"
    puts "3) View All Listings"
    puts "4) Add Listing"
    puts "5) Edit Listing Price"   
    puts "6) Delete Listing"
    puts "7) View All Owners"
    puts "8) View Listings by Owner"
    puts "%%%%%%%%%%%%%%%%%%%%%%%%%%%"
  end

  def clear_screen
    
    print "\e[2J\e[f"
    #puts "\e[H\e[2J"
  end

  