class Game < ActiveRecord::Base
    has_many :listings
    has_many :owners, through: :listings
end