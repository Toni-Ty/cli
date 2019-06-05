class VirtualCafe::Virtual_Cafe_Drinks

attr_accessor :coffee_name, :create_coffee_drink, :coffee_description

@@all = []


def initialize (coffee_name, create_coffee_drink, coffee_description)
	@coffee_name = coffee_name
	@create_coffee_drink = create_coffee_drink
	@coffee_description = coffee_description
	@@all << self
	end



def self.all
	@@all
end


def self.reset
	@@all.clear
	end
end
