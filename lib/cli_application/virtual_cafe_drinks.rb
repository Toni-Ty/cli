# Creates instances of coffee drink recipes
class VirtualCafe::Virtual_Cafe_Drinks

attr_accessor :name, :recipe, :id


@@all = []


def initialize (name, recipe)
	@name = name
	@recipe = recipe
	assign_id
	@@all << self
end

def self.exist?(input)
	(1..all.length). include?(input.to_i)
end

def self.all
	@@all
end

def assign_id
	@id = @@all.length + 1
end

def self.find_by_id(input)
	all.find{ |d| d.id == input.to_i }
end

def self.reset
	@@all.clear
	end
end
