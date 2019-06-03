class VirtualCafe::Virtual_Cafe_Drinks

attr_accessor :coffee_name, :coffee_description, :coffee_ingredients

@@all = []


def initialize (name = nil, coffee_description = nil, recipe = nil)
	@coffee_name = coffee_name
	@coffee_description = coffee_description
	@coffee_ingredients = coffee_ingredients
	@all << self
	end



def self.all
	@all
end


def self.reset
	@@all.clear
	end
end
