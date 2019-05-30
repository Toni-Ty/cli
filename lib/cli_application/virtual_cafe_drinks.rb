class VirtualCafe::Virtual_Cafe_Drinks

attr_accessor :name, :coffee_description, :recipe

@@all = []


def initialize (name = nil, coffee_description = nil, recipe = nil)
	@name = name
	@coffee_description = coffee_description
	@recipe = recipe
	@all << self
	end



def self.all
	@all
  end
end
