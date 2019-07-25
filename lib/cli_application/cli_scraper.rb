#scrapes data and returns instances of coffee names and recipe instructions on how to make drinks

class VirtualCafe::CLI_SCRAPER

	def self.scrape_cafe

		site = "http://www.cafepoint.co.uk/different-types-of-coffee/"
		page = Nokogiri::HTML(open(site))
		coffee = page.css("div.col-md-9.list section")
		coffee.each do |drink|
		  name = drink.css('h2').text
		  recipe = drink.css('li').text.gsub(/.Step/, ". Step")
		  VirtualCafe::Virtual_Cafe_Drinks.new(name, recipe)
		end
	end

end
