# Creates instances of coffee drink recipes
class VirtualCafe::Virtual_Cafe_Drinks

attr_accessor :name, :recipe


@@all = []


def initialize (name, recipe)

	@@all << self
end


def self.all
	@@all
end

def set_int_id
	@int_id = @@all.length + 1
end

def self.find_by_id(input)
	all.find{|s| s.int_id == input.to_i}
end
 # what is int_id

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

	# caf_mo = @create_coffee[2]
	# puts  "#{caf_mo.cafe_mocha}"
	#
	# american = @create_coffee[3]
	# puts  "#{american.americano}"
	#
	# turk_co = @create_coffee[4]
	# puts  "#{turk_co.turkish_coffee}"
	#
	# caf_cubano = @create_coffee[5]
	# puts  "#{caf_cubano.cafe_cubano}"
	#
	# caf_latte = @create_coffeen[6]
	# puts  "#{caf_latte.cafe_latte}"
	#
	# ir_co = @create_coffee[7]
	# puts  "#{ir_co.irish_coffee}"
	#
	# espress = @create_coffee[8]
	# puts  "#{espress.espresso}"
	#
	# cort = @create_coffee[9]
	# puts  "#{cort.cortado}"
	#
	# fr_recp = @create_coffee.first
	# puts "#{fr_recp.frapp_recp}"
	#
	#
	# cm_mach_recp = @create_coffee[1]
	# puts "#{cm_mach_recp.carm_mach_recp}"
	#
	#
	# caf_mo_recp = @create_coffee[2]
	# puts "#{caf_mo_recp.cafe_mocha_recp}"
	#
	#
	# american_recp = @create_coffee[3]
	# puts "#{american_recp.americano_recp}"
	#
	# turk_recp = @create_coffee[4]
	# puts "#{turk_recp.turkish_coffee_recp}"
	#
	#
	# cub_recp = @create_coffee[5]
	# puts "#{cub_recp.cafe_cubano_recp}"
	#
	#
	# caf_la_recp = @create_coffee[6]
	# puts "#{caf_la_recp.cafe_latte_recp}"
	#
	#
	# irish_recp = @create_coffee[7]
	# puts "#{irish_recp.irish_coffee_recp}"
	#
	# espress_recp = @create_coffee[8]
	# puts "#{espress_recp.espresso_recp}"
	#
	#
	# cort_recp = @create_coffee[9]
	# puts "#{cort_recp.cortado_recp}"
	#
	# end
end
