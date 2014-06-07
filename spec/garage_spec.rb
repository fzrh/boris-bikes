require './lib/garage'

describe Garage do
	let(:garage) {Garage.new(:capacity => 30)}

	it 'should allow setting default capacity when initialising' do
		expect(garage.capacity).to eq(30)
	end

	it 'should fixes broken bikes' do
		bike1 = Bike.new
		bike2 = Bike.new
	end

end