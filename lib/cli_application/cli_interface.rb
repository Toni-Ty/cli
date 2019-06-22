class VirtualCafe::CLI_INTERFACE


def initialize
		   @create_coffee =  VirtualCafe::Virtual_Cafe_Drinks.all
end

def call

		puts "Hello, and Welcome to the Virtual Coffee Cafe!".magenta
		puts "Today we will learn about espresso based coffee drinks!".magenta
	  puts "      ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ".blue
	print_coffees
	espresso_drinks_list
end



def espresso_drinks_list
	VirtualCafe::CLI_SCRAPER.scrape_cafe

	input = nil
	input = gets.strip.to_i

	if input == 1
		frappuccino = @create_coffee.first
		puts  "#{frappuccino.frapp}"
		continue_on_to_recipe

	elsif input == 2
		carm_macchiato = @create_coffee[1]
		puts  "#{carm_macchiato.carm_mach}"
		continue_on_to_recipe

	elsif input == 3
		caf_mo = @create_coffee[2]
		puts  "#{caf_mo.cafe_mocha}"
		continue_on_to_recipe

	elsif input == 4
		american = @create_coffee[3]
		puts  "#{american.americano}"
		continue_on_to_recipe

	elsif input == 5
		turk_co = @create_coffee[4]
		puts  "#{turk_co.turkish_coffee}"
		continue_on_to_recipe

	elsif input == 6
		caf_cubano = @create_coffee[5]
		puts  "#{caf_cubano.cafe_cubano}"
		continue_on_to_recipe

	elsif input == 7
		caf_latte = @create_coffeen[6]
		puts  "#{caf_latte.cafe_latte}"
		continue_on_to_recipe

elsif input == 8
		ir_co = @create_coffee[7]
		puts  "#{ir_co.irish_coffee}"
		continue_on_to_recipe

	elsif input == 9
		espress = @create_coffee[8]
		puts  "#{espress.espresso}"
		continue_on_to_recipe

	elsif input == 10
		cort = @create_coffee[9]
		puts  "#{cort.cortado}"
		continue_on_to_recipe

  end
end



def print_coffees
	VirtualCafe::CLI_SCRAPER.scrape_cafe
  puts "Which coffee drink would you like to learn about?".magenta
  puts "Please select a number from 1-10".magenta
	puts "(for example, FRAPPUCCINO = 1, CARAMEL MACCHIATO = 2, etc...)".blue
 	@create_coffee[0..9].each do |drink|
	puts  "#{drink.coffee_name}"
	puts ""

	end
end


def continue_on_to_recipe
	VirtualCafe::CLI_SCRAPER.scrape_cafe
	puts ""
	puts "Would you like the recipe for this drink?".light_blue
	puts "If so, please type [the name of the drink]...Or type [start over]".light_blue
	puts "If you'd like to exit, please type [exit]".light_blue
	coffee_recipes
end



def coffee_recipes
	VirtualCafe::CLI_SCRAPER.scrape_cafe
	input = nil
	input = gets.strip.downcase

# Had to include .first, but do not understand why
	if input == "frappuccino"
		fr_recp = @create_coffee.first
		puts "#{fr_recp.frapp_recp}"

	elsif input == "caramel macchiato"
		cm_mach_recp = @create_coffee[1]
		puts "#{cm_mach_recp.carm_mach_recp}"

	elsif input == "cafe mocha"
		caf_mo_recp = @create_coffee[2]
		puts "#{caf_mo_recp.cafe_mocha_recp}"

	elsif input == "americano"
		american_recp = @create_coffee[3]
		puts "#{american_recp.americano_recp}"

	elsif input == "turkish coffee"
		turk_recp = @create_coffee[4]
		puts "#{turk_recp.turkish_coffee_recp}"

	elsif input == "cafe cubano"
		cub_recp = @create_coffee[5]
		puts "#{cub_recp.cafe_cubano_recp}"

	elsif input == "cafe latte"
		caf_la_recp = @create_coffee[6]
		puts "#{caf_la_recp.cafe_latte_recp}"

	elsif input == "irish coffee"
		irish_recp = @create_coffee[7]
		puts "#{irish_recp.irish_coffee_recp}"

	elsif input == "espresso"
		espress_recp = @create_coffee[8]
		puts "#{espress_recp.espresso_recp}"

	elsif input == "cortado"
		cort_recp = @create_coffee[9]
		puts "#{cort_recp.cortado_recp}"

	elsif input == "exit"
		puts "Have a great day and thank you for using the Virtual Cafe!".magenta

	else
		 call

	 end
end



end
