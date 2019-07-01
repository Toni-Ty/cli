class VirtualCafe::CLI_INTERFACE

#
# def initialize
# 		  @create_coffee =  VirtualCafe::Virtual_Cafe_Drinks.all
# end



def call

		puts "Hello, and Welcome to the Virtual Coffee Cafe!".magenta
		puts "Today we will learn about espresso based coffee drinks!".magenta
	  puts "      ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ".blue
		VirtualCafe::CLI_SCRAPER.scrape_cafe
		print_coffees
		coffee_description (drink_selection)
end
	# elsif input == "exit"
		# puts "Have a great day and thank you for using the Virtual Cafe!".magenta
	#
	# else
	# 	 call
#


def coffee_description(drink_selection)
VirtualCafe::CLI_SCRAPER.scrape_cafe
puts "please choose your drink"
drink_selection = VirtualCafe::Virtual_Cafe_Drinks.find_by_id(input)

input = gets.strip.downcase
# @create_coffee =  VirtualCafe::Virtual_Cafe_Drinks.all
#
# @create_coffee[0].each do |drinks|
if input == "exit"
	puts "bye"
else
	# @create_coffees =  VirtualCafe::Virtual_Cafe_Drinks.all
	# good_coffee << @create_coffees

  puts "#{drink_selection.name}"


	# Had to include .first, but do not understand why
#   frapps = @create_coffee.first
# 	puts  "#{frapps.frapp}"
	# puts "#{drink_selection.frapp}"
	end
end

def print_coffees
	VirtualCafe::CLI_SCRAPER.scrape_cafe
	@create_coffee =  VirtualCafe::Virtual_Cafe_Drinks.all
  puts "Which coffee drink would you like to learn about?".magenta
  puts "Please select a number from 1-10".magenta
	puts "(for example, FRAPPUCCINO = 1, CARAMEL MACCHIATO = 2, etc...)".blue
 	@create_coffee[0..9].each do |drink|
		binding.pry
	puts  "#{drink.name}"
	puts ""

	end
end


def continue_on_to_recipe
	VirtualCafe::CLI_SCRAPER.scrape_cafe
	puts ""
	puts "Would you like the recipe for this drink?".light_blue
	puts "If so, please type [the name of the drink]...Or type [start over]".light_blue
	puts "If you'd like to exit, please type [exit]".light_blue

end



end
