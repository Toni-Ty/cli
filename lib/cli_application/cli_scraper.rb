#scrapes data and returns instances of coffee_descriptions and instructions on how to make drinks
class VirtualCafe::CLI_SCRAPER

def self.scrape_cafe

	site = "http://www.cafepoint.co.uk/different-types-of-coffee/"

	page = Nokogiri::HTML(open(site))
		coffee = page.css("div.col-md-9.list").css("section").each do |coffees|
		coffee_name = coffees.css("h2").text


		VirtualCafe::Virtual_Cafe_Drinks.new(coffee_name)

	end
end


def self.scrape_coffee_recipe
	site = "http://www.cafepoint.co.uk/different-types-of-coffee/"


	page = Nokogiri::HTML(open(site))
	coffee = page.css("div.col-md-9.list").css("section").each do |coffees|
	coffee_name = coffees.css("h2").text


	frapp = coffees.xpath("//div//p")[4].text
	carm_mach = coffees.xpath("//div//p")[10].text
	cafe_mocha = coffees.xpath("//div//p")[15].text
	americano = coffees.xpath("//div//p")[22].text
	turkish_coffee = coffees.xpath("//div//p")[28].text
	cafe_cubano = coffees.xpath("//div//p")[33].text
	cafe_latte = coffees.xpath("//div//p")[38].text
	irish_coffee = coffees.xpath("//div//p")[42].text
	espresso = coffees.xpath("//div//p")[50].text
	cortado = coffees.xpath("//div//p")[55].text

VirtualCafe::Espresso_Drinks.new(frapp, carm_mach, cafe_mocha,americano, turkish_coffee, cafe_cubano, cafe_latte, irish_coffee, espresso, cortado)
	end
end

def self.scrape_cafe_two

	site = "http://www.cafepoint.co.uk/different-types-of-coffee/"

	page = Nokogiri::HTML(open(site))
		coffee = page.css("div.col-md-9.list").css("section").each do |coffees|


			frapp_recp = coffees.css("ul li")[0..8].text.gsub(/.Step/, ". Step")
			carm_mach_recp = coffees.css("ul li")[0..8].text.gsub(/.Step/, ". Step")
			cafe_mocha_recp = coffees.css("ul li")[0..8].text
			americano_recp = coffees.css("ul li")[0..8].text
			turkish_coffee_recp = coffees.css("ul li")[0..8].text
			cafe_cubano_recp = coffees.css("ul li")[0..8].text
		 	cafe_latte_recp = coffees.css("ul li")[0..10].text
			irish_coffee_recp = coffees.css("ul li")[0..8].text
			espresso_recp = coffees.css("ul li")[0..13].text
			cortado_recp = coffees.css("ul li")[0..4].text

		VirtualCafe::Espresso_Drink_Recipes.new(frapp_recp, carm_mach_recp, cafe_mocha_recp, americano_recp, turkish_coffee_recp, cafe_cubano_recp, cafe_latte_recp, irish_coffee_recp, espresso_recp, cortado_recp)
	end
end





end
