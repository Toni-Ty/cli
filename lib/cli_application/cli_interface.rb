class VirtualCafe::CLI_INTERFACE
#encapsulate all of my logic into one #object/CLI controller



#
def call
	list_drinks
  VirtualCafe::CLI_SCRAPER.new.scrape_cafe
	# main_menu
# 	# coffee_drink_ingredients
end


def list_drinks

	puts "Hello, and Welcome to the Virtual Coffee Cafe!"
	puts "Today we will learn about the following espresso based coffee drinks!"
  puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
  puts "Which coffee drink would you like to learn about?"
   puts "Please select a number from 1-15"
  input = gets.strip.to_i
  print_coffee_drink (input)
  end
#
#
def main_menu

#
# 	input = nil
# 	if input.to_i > 0 && if input.to_i < 15;
# 		selected_coffee_drink = @coffee_drink[input.to_i-1]
# 		 puts "#{selected_coffee_drink.name} - #{@selected_coffee_drink.description}"
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


end
