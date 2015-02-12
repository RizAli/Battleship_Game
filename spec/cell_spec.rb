require 'cell'
require 'ship'
describe Cell do
	
	it "can initialize with a blank status" do
		cell = Cell.new
		expect(cell.status).to eq :blank
	end

	it "can have a blank status by default" do
		cell = Cell.new
		expect(cell).to be_blank
	end

	it "knows it has a ship" do
		cell = Cell.new
		ship = double :ship
		cell.place_ship ship
		expect(cell.status).to eq :ship
	end

	it "can have a ship" do
		cell = Cell.new
		ship = double :ship
		cell.place_ship ship
		expect(cell.ship).to eq ship
	end

	it "can have a hit status" do
		cell = Cell.new
		expect(cell.hit_cell).to eq("hit")
	end

	it "can have a missed status" do
		cell = Cell.new
		expect(cell.missed_cell).to eq("missed")
	end


end