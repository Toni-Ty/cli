# Creates instances of coffee drink descriptions
class VirtualCafe::Espresso_Drinks

attr_accessor :frapp, :carm_mach, :cafe_mocha, :americano, :turkish_coffee, :cafe_cubano, :cafe_latte, :irish_coffee, :espresso, :cortado

@@all = []


def initialize (frapp, carm_mach, cafe_mocha, americano, turkish_coffee, cafe_cubano, cafe_latte, irish_coffee, espresso, cortado)
	# frapp, carm_mach, cafe_mocha, americano, turkish_coffee, cafe_cubano, cafe_latte, irish_coffee, espresso, cortado)
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
