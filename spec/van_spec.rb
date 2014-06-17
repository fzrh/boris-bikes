require 'van'
require 'docking_station'

describe Van do

	let(:van) { Van.new(:capacity => 30) }
	let(:station) { DockingStation.new }

	it 'should allow setting default capacity when initialising' do
		expect(van.capacity).to eq(30)
	end

	it 'should collect broken bikes from station' do
		expect(station).to receive (:release)
		van.collect_broken_bikes_from station
	end

	it 'should return fixed bikes to station' do
		expect(station).to receive (:accept)
		van.return_fixed_bikes_to station
	end

end