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
		coffee_description
end
	# elsif input == "exit"
		# puts "Have a great day and thank you for using the Virtual Cafe!".magenta
	#
	# else
	# 	 call
#


def coffee_description
VirtualCafe::CLI_SCRAPER.scrape_cafe
puts "please choose your drink"
input = gets.strip.downcase
# @create_coffee =  VirtualCafe::Virtual_Cafe_Drinks.all
#
# @create_coffee[0].each do |drinks|
if input == "exit"
	puts "bye"
elsif
	input.to_i > 0
	drink_selection = VirtualCafe::Virtual_Cafe_Drinks.find_by_id(input.to_i - 1)
  puts "#{drink_selection.}"
else
	"end of program"

	#  Had to include .first, but do not understand why
# frapps = @create_coffee.first
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

end



end
