class VirtualCafe::Virtual_Cafe_Drinks

attr_accessor :name, :coffee_description, :coffee_ingredients

@@all = []


def initialize (name = nil, coffee_description = nil, recipe = nil)
	@name = coffee_name
	@coffee_description = coffee_description
	@recipe = coffee_ingredients
	@all << self
	end



def self.all
	@all
  end
end
