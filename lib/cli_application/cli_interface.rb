class VirtualCafe::CLI_INTERFACE


def initialize
		   @create_coffee =  VirtualCafe::Virtual_Cafe_Drinks.all
			 @return_drink_description = VirtualCafe::Espresso_Drinks.all
			 @return_recipes = VirtualCafe::Espresso_Drink_Recipes.all
end

def call
	list_drinks
	print_coffees
	espresso_drinks_list
end


def list_drinks

	puts "Hello, and Welcome to the Virtual Coffee Cafe!".magenta
	puts "Today we will learn about espresso based coffee drinks!".magenta
  puts "      ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ".blue
end

def espresso_drinks_list
	VirtualCafe::CLI_SCRAPER.scrape_cafe
	VirtualCafe::CLI_SCRAPER.scrape_coffee_recipe


	input = nil
	input = gets.strip.to_i

	if input == 1
		frappuccino = @return_drink_description.first
		puts  "#{frappuccino.frapp}"
		continue_on_to_recipe

	elsif input == 2
		carm_macchiato = @return_drink_description[1]
		puts  "#{carm_macchiato.carm_mach}"
		continue_on_to_recipe

	elsif input == 3
		caf_mo = @return_drink_description[2]
		puts  "#{caf_mo.cafe_mocha}"
		continue_on_to_recipe

	elsif input == 4
		american = @return_drink_description[3]
		puts  "#{american.americano}"
		continue_on_to_recipe

	elsif input == 5
		turk_co = @return_drink_description[4]
		puts  "#{turk_co.turkish_coffee}"
		continue_on_to_recipe

	elsif input == 6
		caf_cubano = @return_drink_description[5]
		puts  "#{caf_cubano.cafe_cubano}"
		continue_on_to_recipe

	elsif input == 7
		caf_latte = @return_drink_description[6]
		puts  "#{caf_latte.cafe_latte}"
		continue_on_to_recipe

elsif input == 8
		ir_co = @return_drink_description[7]
		puts  "#{ir_co.irish_coffee}"
		continue_on_to_recipe

	elsif input == 9
		espress = @return_drink_description[8]
		puts  "#{espress.espresso}"
		continue_on_to_recipe

	elsif input == 10
		cort = @return_drink_description[9]
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
	VirtualCafe::CLI_SCRAPER.scrape_coffee_recipe
	puts ""
	puts "Would you like the recipe for this drink?".light_blue
	puts "If so, please type [the name of the drink]...Or type [start over]".light_blue
	puts "If you'd like to exit, please type [exit]".light_blue
	coffee_recipes
end



def coffee_recipes
	VirtualCafe::CLI_SCRAPER.scrape_cafe_two
	input = nil
	input = gets.strip.downcase

# Had to include .first, but do not understand why
	if input == "frappuccino"
		fr_recp = @return_recipes.first
		puts "#{fr_recp.frapp_recp}"

	elsif input == "caramel macchiato"
		cm_mach_recp = @return_recipes[1]
		puts "#{cm_mach_recp.carm_mach_recp}"

	elsif input == "cafe mocha"
		caf_mo_recp = @return_recipes[2]
		puts "#{caf_mo_recp.cafe_mocha_recp}"

	elsif input == "americano"
		american_recp = @return_recipes[3]
		puts "#{american_recp.americano_recp}"

	elsif input == "turkish coffee"
		turk_recp = @return_recipes[4]
		puts "#{turk_recp.turkish_coffee_recp}"

	elsif input == "cafe cubano"
		cub_recp = @return_recipes[5]
		puts "#{cub_recp.cafe_cubano_recp}"

	elsif input == "cafe latte"
		caf_la_recp = @return_recipes[6]
		puts "#{caf_la_recp.cafe_latte_recp}"

	elsif input == "irish coffee"
		irish_recp = @return_recipes[7]
		puts "#{irish_recp.irish_coffee_recp}"

	elsif input == "espresso"
		espress_recp = @return_recipes[8]
		puts "#{espress_recp.espresso_recp}"

	elsif input == "cortado"
		cort_recp = @return_recipes[9]
		puts "#{cort_recp.cortado_recp}"

	elsif input == "exit"
		puts "Have a great day and thank you for using the Virtual Cafe!".magenta

	else
		 call

	 end
end



end
