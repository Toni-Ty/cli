# Creates instances of coffee drink recipes
class VirtualCafe::Virtual_Cafe_Drinks

attr_accessor :coffee_name

@@all = []


def initialize (coffee_name)
	@coffee_name = coffee_name
	@@all << self
	end



def self.all
	@@all
end

def self.reset
	@@all.clear
	end
end
