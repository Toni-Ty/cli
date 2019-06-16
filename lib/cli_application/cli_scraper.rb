#scrapes data and returns instances of coffee_descriptions and instructions on how to make drinks

class VirtualCafe::CLI_SCRAPER

# coffee_descriptions

def self.scrape_cafe

	site = "http://www.cafepoint.co.uk/different-types-of-coffee/"

	page = Nokogiri::HTML(open(site))
		coffee = page.css("div.col-md-9.list").css("section").each do |coffees|
		coffee_name = coffees.css("h2").text

		#gives evertyhing from descrip to ingredients
		create_coffee_drink = coffees.css("ul li").text




		# create_coffee_drink = coffees.css("ul li").text #perfect for coffee recipe
		# coffee_description = page.css("div.col-md-9.list section p").text



		VirtualCafe::Virtual_Cafe_Drinks.new(coffee_name, create_coffee_drink)
	end
end

#maybe use below

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

#coffee description
def self.scrape_coffee_recipe
	site = "http://www.cafepoint.co.uk/different-types-of-coffee/"


	page = Nokogiri::HTML(open(site))
	coffee = page.css("div.col-md-9.list").css("section").each do |coffees|
	coffee_name = coffees.css("h2").text

	# frapp = page.css("div.col-md-9.list section p")[7].text
	frapp = coffees.xpath("//div//p")[4].text



VirtualCafe::Espresso_Drinks.new(frapp)
end

end


def self.scrape_coffee_recipes
	site = "http://www.cafepoint.co.uk/different-types-of-coffee/"


	page = Nokogiri::HTML(open(site))
	coffee = page.css("div.col-md-9.list").css("section").each do |coffees|


	carm_mach = coffees.xpath("//div//p")[2].text
end

end

# TAKEN FROM OO-STUDENT SCRAPER LAB
# require 'open-uri'
#
# class Scraper
#
#   def self.scrape_index_page(index_url)
#     index_page = Nokogiri::HTML(open(index_url))
#     students = []
#     index_page.css("div.roster-cards-container").each do |card|
#       card.css(".student-card a").each do |student|
#         student_profile_link = "#{student.attr('href')}"
#         student_location = student.css('.student-location').text
#         student_name = student.css('.student-name').text
#         students << {name: student_name, location: student_location, profile_url: student_profile_link}
#       end
#     end
#     students
#   end
#
#   def self.scrape_profile_page(profile_slug)
#     student = {}
#     profile_page = Nokogiri::HTML(open(profile_slug))
#     links = profile_page.css(".social-icon-container").children.css("a").map { |el| el.attribute('href').value}
#     links.each do |link|
#       if link.include?("linkedin")
#         student[:linkedin] = link
#       elsif link.include?("github")
#         student[:github] = link
#       elsif link.include?("twitter")
#         student[:twitter] = link
#       else
#         student[:blog] = link
#       end
    end
