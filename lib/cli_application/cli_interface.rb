class VirtualCafe::CLI_INTERFACE


def initialize
		   @create_coffee =  VirtualCafe::Virtual_Cafe_Drinks.all
end



def call

		puts "Hello, and Welcome to the Virtual Coffee Cafe!".magenta
		puts "Today we will learn about espresso based coffee drinks!".magenta
	  puts "      ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ".blue
	print_coffees
	get_user_input
	validate(@input)
end


def get_user_input
	@input = gets.strip.downcase

	# elsif input == "exit"
		# puts "Have a great day and thank you for using the Virtual Cafe!".magenta
	#
	# else
	# 	 call
end

def validate(input)
		spa = VirtualCafe::Virtual_Cafe_Drinks.find_by_id(input)
		spa ?  : invalid_input
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



end
