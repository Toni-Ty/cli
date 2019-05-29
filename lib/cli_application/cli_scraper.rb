#should return instances of coffee_descriptions

class VirtualCafe::CLI_SCRAPER

# coffee_descriptions

def scrape_cafe

	site = "http://www.cafepoint.co.uk/different-types-of-coffee/"

	page = Nokogiri::HTML(open(site))
	coffee = page.css("div.col-md-9.list section")

	coffee.each do |coffee_drink|
	  coffee_descrip = coffee_drink.css("h2").text
			@coffee_description = VirtualCafe::Virtual_Cafe_Drinks
			 	@coffee_description.each.with_index(1) do |coffee, index|

			 	puts "#{index}. #{coffee}"
	    end
		end
	end

					# @coffee_drink = VirtualCafe::VirtualCafeDrinks.coffee_description
					# @coffee_drink.each.with_index(1) do |coffee, index|
					# puts "#{index}. #{coffee_drink.name} - #{@coffee_drink.description}
# 		end
# 	end
# end

# coffee_ingredients
def self.scrape_coffee_recipe

	end
end
