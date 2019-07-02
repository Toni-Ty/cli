# Creates instances of coffee drink recipes
class VirtualCafe::Virtual_Cafe_Drinks

attr_accessor :name, :recipe, :id


@@all = []


def initialize (name, recipe)
	@name = name
	@recipe = recipe
	assign_id
	@@all << self
end


def self.all
	@@all
end

def assign_id
	@id = @@all.length + 1
end

def self.find_by_id(input)
	all.find{ |d| d.id == input.to_i }
end



def self.reset
	@@all.clear
end


# def coffee_description(drink_selection)
# VirtualCafe::CLI_SCRAPER.scrape_cafe
#
# 	#  Had to include .first, but do not understand why
# 	#
# 	# frapps = drink_selection.frapp
#
# 	# puts  "#{drink_selection.frapp}"
#
#
# 	# carm_macchiato = @create_coffee[1]
# 	puts  "#{drink_selection.carm_mach}"

end
