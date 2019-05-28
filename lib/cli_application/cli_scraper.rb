require 'pry'
#should return instances of coffee_descriptions
#info below will be scraped
class VirtualCafe::CLI_SCRAPER

# coffee_description

def self.scrape_latteart
doc = Nokogiri::HTML(open("http://www.cafepoint.co.uk/different-types-of-coffee/"))
doc.css("div.awr-i").each do |drinks|
		coffee_blurb = drinks.css("p").text
		binding.pry
			coffee_blurb.each_with_index(1) do |coffee, index|
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
