require 'board'
require 'ship'

describe Board do
		
		let (:board) {Board.new}
		# let (:ship)	 {Ship.new}
		let (:ship) {double :ship}

		
		it 'can contain a ship' do
			board.add_ship(ship)
			expect(board.content).to eq(ship)
		end

		it "can receive a hit" do
			expect(board).to respond_to(:hit)
		end

		it "can initialize with an empty board" do 
			expect(board.content).to eq(:empty)
		end

		it "can initialize with two cells" do
			expect(board.content).to eq(:empty)
			expect(board.content1).to eq(:empty)
		end




		it 'can tell a ship it was a hit' do 
			board.add_ship(ship)
			expect(ship).to receive(:hit)
			board.hit
		end



end











# require 'board'

# describe Board do
	
# 	let (:ship) { double :ship }

# 	it "can fire at a coordinate" do
# 		board = Board.new
# 		expect{ board.shoot_at(:A1) }.to_not raise_exception
# 	end

# 	it 'can query hit coordinates' do
# 		board = Board.new
# 		board.shoot_at(:A1)
# 		expect(board.fired_at?(:A1)).to eq true
# 	end

# 	it 'can query missed coordinates' do
# 		board = Board.new
# 		expect(board.fired_at?(:A1)).to eq false
# 	end

# 	it 'can query other hit coordinates' do
# 		board = Board.new
# 		board.shoot_at(:B1)
# 		expect(board.fired_at?(:B1)).to eq true
# 	end

# 	it 'can be shot at multiple times' do
# 		board = Board.new
# 		board.shoot_at(:A1)
# 		board.shoot_at(:B1)
# 		expect(board.fired_at?(:A1)).to eq true
# 	end

# 	it 'can have a ship at a coordinate' do
# 		board = Board.new
# 		expect(board.place_at(:A1,ship)).to eq(ship)
# 	end

# 	it 'can tell when fired at, it is a hit! or a miss' do
# 		board = Board.new
# 		board.place_at(:A1, ship)
# 		expect(board.hit?(:A1,ship)).to eq(true)
		
# 	end
	

# end
