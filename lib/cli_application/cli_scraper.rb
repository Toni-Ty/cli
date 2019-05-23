require 'pry'
#should return instances of coffee_descriptions
#info below will be scraped
class VirtualCafe::CLI_SCRAPER



# def self.srape_coffee_description
# 	self.scrape_drinks
# end



def self.scrape_latteart


doc = Nokogiri::HTML(open("https://www.latteartguide.com/2016/01/different-types-of-coffee.html#piccolo"))
doc.css("div.awr-i").each do |drinks|
		coffee_blurb = drinks.css("p").text
		binding.pry
			coffee_blurb.each.with_index(1) do |coffee, index|

		end
	end
end



end





        # espresso_drink_ingredients


#describes how to make the coffee drink
# def self.scrape_coffee_ingredients
