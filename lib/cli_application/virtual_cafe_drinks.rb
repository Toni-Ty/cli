class VirtualCafe::Virtual_Cafe_Drinks

attr_accessor :name, :coffee_description, :coffee_ingredients

@@all = []


def initialize (name = nil, coffee_description = nil)
	@name = name
	@coffee_description = coffee_description
	@all << self
	end



def self.all
	@all
  end
end
