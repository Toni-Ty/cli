class VirtualCafe::CLI_INTERFACE
#encapsulate all of my logic into one #object/CLI controller

def initialize
		   @create_coffee =  VirtualCafe::Virtual_Cafe_Drinks.all
end

def call
	list_drinks
 	VirtualCafe::CLI_SCRAPER.scrape_cafe
	print_coffees
	#menu is last for receiving input
end


def list_drinks

	puts "Hello, and Welcome to the Virtual Coffee Cafe!"
	puts "Today we will learn about espresso based coffee drinks!"
  puts "      ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  "
end
#
#
def main_menu
	input = nil
	if input.to_i > 0 && if input.to_i <= 15;
		selected_coffee_drink = @coffee_drink[input.to_i-1]
		puts "#{selected_coffee_drink.name} - #{@selected_coffee_drink.description}"
#
# 		puts "Would you like the ingredients for this drink [enter y/n]? Would you like to start over [enter start over]?
#
# 		input = gets.strip.downcase
# 		if input == "y"
# 			selected_coffee_drink
# 			#  {selected_coffee_drink.coffee_ingredients}
# 			list_drinks
# 		elsif input == "start over"
# 		main_menu
# 		elsif input == "n"
# 			puts "Thank you, I hope you had fun!  Have a wonderful day!
# 			exit
# 		else
# 			puts "Sorry, that's an invalid response."
# 		main_menu
# 		end
# 	end
end
#
#  def coffee_drink_ingredients()
#  	# selected_coffee_drink
# 	# puts "#{selected_coffee_drink.coffee_ingredients}"
# end
#

def print_coffees(input)
  puts "Which coffee drink would you like to learn about?"
  puts "Please select a number from 1-15"
  @create_coffee.each.with_index(1) do |drink, index|
    puts "#{index}. #{drink.coffee_name}"
	input = gets.strip.to_i
		puts ""
	if
    end
end

end
end
