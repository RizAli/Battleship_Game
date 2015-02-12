class Ship

  def hit?
  	@hit
  end	

  def initialize
	  @hit = false
	end

	def name
		@name = :submarine
	end

	def take_hit
		@hit = true
	end


	# def hit?
	# 	@hit
	# end

	# def hit
	# 	@hit = true
	# end


	# def recieve_hit
	# 	@hit = true
	# end

	end