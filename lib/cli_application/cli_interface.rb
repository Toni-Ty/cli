class VirtualCafe::CLI
#encapsulate all of my logic into one #object/CLI controller
def hello
  puts "hello w."
end

# def call
# 	#list_drinks
# 	#main_menu
# 	#coffee_drink_ingredients
# end

# def list_drinks

# 	puts "Hello, and Welcome to the Virtual Coffee Cafe!"
# 	puts "Today we will learn about espresso based coffee drinks!"
# 	puts #espresso scraped data here

# 	@coffee_drink = VirtualCafe::VirtualCafeDrinks.coffee_description
# 	@coffee_drink.each.with_index(1) do |coffee, index|

# 	puts "#{index}. #{coffee_drink.name} - #{@coffee_drink.description}
# 	end
# end

# 	puts "Which coffee drink would you like to learn about?"



# def main_menu
# 	input = nil
# 	while input != "exit"
# 		puts "Please select a number from 1-12"
# 		puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
# 	if input.to_i > 0 && if input.to_i < 12;
# 		selected_coffee_drink = @coffee_drink[input.to_i-1]
# 		puts "#{selected_coffee_drink.name} - #{@selected_coffee_drink.description}

# 		puts "Would you like the ingredients for this drink [enter y/n]? Would you like to start over [enter start over]?

# 		input = gets.strip.downcase
# 		if input == "y"
# 			selected_coffee_drink
# 			puts "#{selected_coffee_drink.coffee_ingredients}
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
# end

# def coffee_drink_ingredients()
# 	selected_coffee_drink
# 	puts "#{selected_coffee_drink.coffee_ingredients}"
# end


# def exit

# end
end
