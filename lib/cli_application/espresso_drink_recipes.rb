# Creates instances of coffee drink descriptions
class VirtualCafe::Espresso_Drink_Recipes

attr_accessor :frapp_recp, :carm_mach_recp, :cafe_mocha_recp, :americano_recp, :turkish_coffee_recp, :cafe_cubano_recp, :cafe_latte_recp, :irish_coffee_recp, :espresso_recp, :cortado_recp

@@all = []


def initialize (frapp_recp, carm_mach_recp, cafe_mocha_recp, americano_recp, turkish_coffee_recp, cafe_cubano_recp, cafe_latte_recp, irish_coffee_recp, espresso_recp, cortado_recp)
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

  # def carm_mach=(carm_mach)
  # 	@carm_mach = carm_mach
  # end


def self.all
	@@all
end

def self.reset
	@@all.clear
	end
end
