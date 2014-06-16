require 'garage'
require 'bike'

describe Garage do

	let(:garage) { Garage.new(:capacity => 30) }

	it 'should allow setting default capacity when initialising' do
		expect(garage.capacity).to eq(30)
	end

	it 'receives broken bikes from van' do
		van = double :van
		expect(van).to receive(:broken_bikes)
		garage.unload_bikes_from (van)
	end

	it 'should fixes broken bikes' do
		bike1 = Bike.new
		bike1.break!
		expect(bike1).to receive(:fix!)
		garage.repair(bike1)
	end

	it 'returns fixed bikes to van' do
	  	van = double :van
		expect(van).to receive (:fixed_bikes)
		garage.return_fixed_bikes(van)
	end

end