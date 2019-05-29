require 'pry'
#should return instances of coffee_descriptions
#info below will be scraped
class VirtualCafe::CLI_SCRAPER

# coffee_description

def self.scrape_cafe

	site = "http://www.cafepoint.co.uk/different-types-of-coffee/"

	page = Nokogiri::HTML(open(site))
	coffee = page.css("div.col-md-9.list section")

	coffee.each do |coffee_drink|
	  coffee_descrip = coffee_drink.css("h2").text
	   coffee_descrip.each_with_index(1) do |coffee, index|
	    end
	end

				# 	@coffee_drink = VirtualCafe::VirtualCafeDrinks.coffee_description
				# 	@coffee_drink.each.with_index(1) do |coffee, index|
				#
				# 	puts "#{index}. #{coffee_drink.name} - #{@coffee_drink.description}
		end
	end
end

# coffee_ingredients
def self.scrape_coffee_recipe

	end
end
