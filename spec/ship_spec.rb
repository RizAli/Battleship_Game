require 'ship'

describe Ship do

	let(:ship){Ship.new}

	it 'has a name' do
		expect(ship.name).to eq :submarine
	end
  
  it 'should be able to be hit' do
  	expect(ship).to respond_to(:take_hit)
  end

  it 'knows if it has been hit' do
  	expect(ship.hit?).to eq(false)
  	ship.take_hit
  	expect(ship.hit?).to eq(true)
  end


	# it 'should be able to be hit' do
	# 	expect(ship).to respond_to(:hit)
	# 	# 1. test we can send message to object O
	# 	# 2. test the response to that message  X
	# 	# 3. test if any state changed as a result X
	# end

	# it 'should be able to be hit' do
 #    expect(ship.hit).to eq(true) # ship.send(:hit)

 #    # 1. test we can send message to object O
	# 	# 2. test the response to that message  O
	# 	# 3. test if any state changed as a result X
 #  end

	# it 'should be able to be hit' do
	# 	expect(ship.hit?).to eq(false)
	# 	ship.hit
 #    expect(ship.hit?).to eq(true) # ship.send(:hit)

 #    # 1. test we can send message to object O
	# 	# 2. test the response to that message  X
	# 	# 3. test if any state changed as a result O
 #  end

 #  it 'should be able to be hit' do
	# 	expect(ship.hit?).to eq(false)
	# 	expect(ship.hit).to eq(true) 
 #    expect(ship.hit?).to eq(true) # ship.send(:hit)

 #    # 1. test we can send message to object O
	# 	# 2. test the response to that message  O
	# 	# 3. test if any state changed as a result O
 #  end

	# it 'should be able to tell us if it has been hit' do
 #   #ship.hit?

	# 	#expect ship to have a shot
	# 	# expect(ship).to have a shot
	# 	expect(ship.receive_hit).to eq(1)

 # 	end

	# it 'can be destroyed' do
	# 	expect(ship).to be_destroyed
	# end


end


