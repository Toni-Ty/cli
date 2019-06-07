class VirtualCafe::Virtual_Cafe_Drinks

attr_accessor :coffee_name, :create_coffee_drink, :coffee_description

@@all = []


def initialize (coffee_name, create_coffee_drink)
	@coffee_name = coffee_name
	@create_coffee_drink = create_coffee_drink
	@coffee_description = coffee_description
	@@all << self
	end



def self.all
	@@all
end


def self.reset
	@@all.clear
	end
end

# def espresso_drinks_list
# 	site = "http://www.cafepoint.co.uk/different-types-of-coffee/"
#
# 	page = Nokogiri::HTML(open(site))
# 	case input
# when "1"
# 		coffee = page.css("div.col-md-9.list section p")[1].text
# when "2"
# 		coffee = page.css("div.col-md-9.list section p")[7].text
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
#   end
# end
