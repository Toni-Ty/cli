class VirtualCafe::Virtual_Cafe_Drinks

attr_accessor :name, :coffee_description, :coffee_ingredients

@@all = []


def initialize (name = nil)
	@name = name
	@all << self
	end
end


def self.all
	@all
end












