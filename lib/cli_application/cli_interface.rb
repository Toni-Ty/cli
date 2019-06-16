class VirtualCafe::CLI_INTERFACE
#encapsulate all of my logic into one #object/CLI controller

def initialize
		   @create_coffee =  VirtualCafe::Virtual_Cafe_Drinks.all
			 @return_drink_description = VirtualCafe::Espresso_Drinks.all
end

def call
	list_drinks
	print_coffees
	espresso_drinks_list
end


def list_drinks

	puts "Hello, and Welcome to the Virtual Coffee Cafe!"
	puts "Today we will learn about espresso based coffee drinks!"
  puts "      ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  "
end

def espresso_drinks_list
	VirtualCafe::CLI_SCRAPER.scrape_cafe
	VirtualCafe::CLI_SCRAPER.scrape_coffee_recipe
	VirtualCafe::CLI_SCRAPER.scrape_coffee_recipes

	input = nil
	input = gets.strip.to_i

	if input == 1
		frappucino = @return_drink_description.first
		puts  "#{frappucino.frapp}"
		continue_on_to_recipe


	elsif input == 2
			carm_macchiato = @return_drink_description[1]
			puts  "#{carm_macchiato.carm_mach}"
			continue_on_to_recipe

		# coffee = page.css("div.col-md-9.list section p")[7].text
# when "3"
# 	coffee = page.css("div.col-md-9.list section p")[12].text
# when "4"
# 		coffee = page.css("div.col-md-9.list section p")[7].text
# when "5"
# 		coffee = page.css("div.col-md-9.list section p")[7].text
# when "6"
# 		coffee = page.css("div.col-md-9.list section p")[7].text
# when "7"
# 		coffee = page.css("div.col-md-9.list section p")[7].text
# when "8"
# 		coffee = page.css("div.col-md-9.list section p")[7].text
# when "9"
# 		coffee = page.css("div.col-md-9.list section p")[7].text
# when "10"
# 		coffee = page.css("div.col-md-9.list section p")[7].text
# when "11"
# 		coffee = page.css("div.col-md-9.list section p")[7].text
# when "12"
# 		coffee = page.css("div.col-md-9.list section p")[7].text
# when "13"
# 		coffee = page.css("div.col-md-9.list section p")[7].text
# when "14"
# 		coffee = page.css("div.col-md-9.list section p")[7].text
# when "15"
# 		coffee = page.css("div.col-md-9.list section p")[7].text
# else
# 	puts "Please enter a valid entry"
  end
end



def main_menu
	# input = nil
	# if input.to_i > 0 && if input.to_i <= 15;
	# 	selected_coffee_drink = @coffee_drink[input.to_i-1]
	# 	puts "#{selected_coffee_drink.name} - #{@selected_coffee_drink.description}"
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
	end

#
#  def coffee_drink_ingredients()
#  	# selected_coffee_drink
# 	# puts "#{selected_coffee_drink.coffee_ingredients}"
# end
#

def print_coffees
	VirtualCafe::CLI_SCRAPER.scrape_cafe
  puts "Which coffee drink would you like to learn about?"
  puts "Please select a number from 1-15"
  @create_coffee.each.with_index(1) do |drink, index|
    puts "#{index}. #{drink.coffee_name}"
		puts ""
		# input = gets.strip.to_i
		# espresso_drinks_list(input)
	end
end

def continue_on_to_recipe
	puts ""
	puts "Would you like the recipe for this drink?"
end

end
