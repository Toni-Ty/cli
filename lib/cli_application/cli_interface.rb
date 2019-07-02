class VirtualCafe::CLI_INTERFACE

# def initialize
# 		  @create_coffee =  VirtualCafe::Virtual_Cafe_Drinks.all
# end



def call
		puts "Hello, and Welcome to the Virtual Coffee Cafe!".magenta
		puts "Today we will learn about espresso based coffee drinks!".magenta
	  puts "      ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ".blue
		VirtualCafe::CLI_SCRAPER.scrape_cafe
		print_coffees
		gets_user_input
		valid_coffee_input ? show_drink : invalid_response
		coffee_description (drink_selection)
end

def print_coffees
	VirtualCafe::CLI_SCRAPER.scrape_cafe
	@create_coffee =  VirtualCafe::Virtual_Cafe_Drinks.all
  puts "Which coffee drink would you like to learn about?".magenta
  puts "Please select a number from 1-10".magenta
	puts "(for example, FRAPPUCCINO = 1, CARAMEL MACCHIATO = 2, etc...)".blue
 	@create_coffee.each do |drink|
	puts  "#{drink.name}"
	puts ""

	end
end

def gets_user_input
	@input = gets.strip.downcase
end

def valid_coffee_input
	VirtualCafe::Virtual_Cafe_Drinks.exists?(@input)
end

def invalid_response
	puts "Sorry that's an invalid response. Please try again!".magenta
end

def show_drink(drink_selection)
VirtualCafe::CLI_SCRAPER.scrape_cafe
puts "please choose your drink"
drink_selection = VirtualCafe::Virtual_Cafe_Drinks.find_by_id(input)



def continue_on_to_recipe
	VirtualCafe::CLI_SCRAPER.scrape_cafe
	puts ""
	puts "Would you like the recipe for this drink?".light_blue
	puts "If so, please type [the name of the drink]...Or type [start over]".light_blue
	puts "If you'd like to exit, please type [exit]".light_blue

end

def exit
# elsif input == "exit"
	# puts "Have a great day and thank you for using the Virtual Cafe!".magenta
#
# else
# 	 call
end




end
