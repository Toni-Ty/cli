# Creates instances of coffee drink recipes
class VirtualCafe::Virtual_Cafe_Drinks

attr_accessor :coffee_name, :frapp, :carm_mach, :cafe_mocha, :americano, :turkish_coffee, :cafe_cubano, :cafe_latte, :irish_coffee, :espresso, :cortado, :frapp_recp, :carm_mach_recp, :cafe_mocha_recp, :americano_recp, :turkish_coffee_recp, :cafe_cubano_recp, :cafe_latte_recp, :irish_coffee_recp, :espresso_recp, :cortado_recp


@@all = []


def initialize (coffee_name, frapp, carm_mach, cafe_mocha, americano, turkish_coffee, cafe_cubano, cafe_latte, irish_coffee, espresso, cortado, frapp_recp, carm_mach_recp, cafe_mocha_recp, americano_recp, turkish_coffee_recp, cafe_cubano_recp, cafe_latte_recp, irish_coffee_recp, espresso_recp, cortado_recp)
	@coffee_name = coffee_name
	@frapp = frapp
	@carm_mach = carm_mach
	@cafe_mocha = cafe_mocha
	@americano = americano
	@turkish_coffee = turkish_coffee
	@cafe_cubano = cafe_cubano
	@cafe_latte = cafe_latte
	@irish_coffee = irish_coffee
	@espresso = espresso
	@cortado = cortado
	@frapp_recp = frapp_recp
	@carm_mach_recp = carm_mach_recp
	@cafe_mocha_recp = cafe_mocha_recp
	@americano_recp = americano_recp
	@turkish_coffee_recp = turkish_coffee_recp
	@cafe_cubano_recp = cafe_cubano_recp
	@cafe_latte_recp = cafe_latte_recp
	@irish_coffee_recp = irish_coffee_recp
	@espresso_recp = espresso_recp
	@cortado_recp = cortado_recp
	@@all << self
	end


def self.all
	@@all

end



def self.reset
	@@all.clear
	end
end
