require_relative 'bike_container'

class Van

	include BikeContainer

	def initialize(options = {})
		@bikes = []
		self.capacity = options.fetch(:capacity, capacity)
	end

	def collect_broken_bikes_from station
		@bikes << station.release
	end

	def return_fixed_bikes_to station
		station.accept
	end

end