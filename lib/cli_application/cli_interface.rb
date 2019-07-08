# User interface and menu
class VirtualCafe::CLI_INTERFACE

def call
		puts "Hello, and Welcome to the Virtual Coffee Cafe!".magenta
		puts "Today we will learn about espresso based coffee drinks!".magenta
	  puts "      ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ".blue
		while @input != "exit"
		print_coffees
		gets_user_input
		valid_coffee_input ? show_drink : invalid_response
		continue_on_to_new_recipe?
	end
end

def print_coffees
	VirtualCafe::CLI_SCRAPER.scrape_cafe
	@create_coffee =  VirtualCafe::Virtual_Cafe_Drinks.all
  puts "Which coffee drink would you like to learn about?".magenta
  puts "Please select a number from 1-10".magenta
	puts "(for example, FRAPPUCCINO = 1, CARAMEL MACCHIATO = 2, etc...)".blue
  @create_coffee[0..14].each.with_index  { |drink, i| puts "#{i + 1}. #{drink.name}" }
	puts ""
end

def gets_user_input
	@input = gets.strip
end

def valid_coffee_input
	VirtualCafe::Virtual_Cafe_Drinks.exist?(@input)
end

def invalid_response
	puts "Sorry that's an invalid response. Please try again :)".magenta
	puts ""
	call
end


def show_drink
	drink_selection = VirtualCafe::Virtual_Cafe_Drinks.find_by_id(@input)
	puts "#{drink_selection.name}"
	puts "#{drink_selection.recipe}"
end


def continue_on_to_new_recipe?
	VirtualCafe::CLI_SCRAPER.scrape_cafe
	puts ""
	puts "Would you like to see a new coffee drink and recipe?".light_blue
	puts "If so, please type [Y]...Or type [exit] to leave the cafe".light_blue
	gets_user_input
	if @input == "Y"
		call
	elsif @input == "exit"
		puts "Have a great day and thank you for using the Virtual Cafe!".magenta
		exit
	else
		invalid_response
			end
		end
	end
