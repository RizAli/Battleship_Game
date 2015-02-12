class Cell

	attr_reader :status, :ship

	def initialize
		@status = :blank
	end

	def blank?
		@status == :blank
	end

	def place_ship(ship)
		@ship = ship
		@status = :ship
	end

	def hit_cell
		@status = "hit" if @status == @ship
		
	end

	def missed_cell
		@status = "missed"
		@status = "missed" if @status == "blank"
	end

end
