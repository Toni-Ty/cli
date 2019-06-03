#should return instances of coffee_descriptions

class VirtualCafe::CLI_SCRAPER

# coffee_descriptions

def scrape_cafe

	site = "http://www.cafepoint.co.uk/different-types-of-coffee/"

	page = Nokogiri::HTML(open(site))
		coffee = page.css("div.col-md-9.list section").each do |coffees|

	# coffee.each do |coffee_drink|
		coffee_name = coffees.css("h2").text
	  coffee_description = coffees.css("p").text
		coffee_ingredients = coffees.css("ul li")

		VirtualCafe::Virtual_Cafe_Drinks.new(coffee_name, coffee_description, coffee_ingredients)
	end
end



		# drinks << coffee_descrip
		# 	drinks.each_with_index(1) { |c, index| "#{index}. #{c}"}

		# 	@coffee_description = VirtualCafe::Virtual_Cafe_Drinks
		# 	 	@coffee_description.each_with_index(1) do |coffee_descrip, index|
		#
		# 	 	puts "#{index}. #{coffee_descrip}"
	  #   end


					# @coffee_drink = VirtualCafe::VirtualCafeDrinks.coffee_description
					# @coffee_drink.each.with_index(1) do |coffee, index|
					# puts "#{index}. #{coffee_drink.name} - #{@coffee_drink.description}
# 		end
# 	end
# end

# # coffee_ingredients
# def self.scrape_coffee_recipe(ingredients)
#
# 		site = "http://www.cafepoint.co.uk/different-types-of-coffee/"
#
# 		page = Nokogiri::HTML(open(site))
# 		coffee = page.css("div.col-md-9.list section")
# ingredients.recipe =
# 		end
# 	end
end
