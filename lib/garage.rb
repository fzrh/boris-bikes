require_relative 'bike_container'

class Garage

	include BikeContainer

	def initialize(options = {})
		self.capacity = options.fetch(:capacity, capacity)
	end

	def unload_bikes_from(van)
		van.broken_bikes
	end

	def repair(bike)
		bike.fix!
	end

	def return_fixed_bikes(van)
		van.fixed_bikes
	end

end