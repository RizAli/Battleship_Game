class Board

	def initialize
		@coordinates = []
		@ship = []		
	end
	
	def shoot_at(coordinate)
		# @coordinates = coordinate
		@coordinates << coordinate
	end

	def fired_at?(coordinate)
		@coordinates.include? coordinate
	end

	def place_at(coordinate, ship)
		@coordinates = ship
		# @ship << ship
	end

	def hit?(coordinate,ship)
		if place_at(coordinate, ship) == ship
			true
		else
			false
		end
	end

end