require 'person'

describe Person do

	let(:person) 					 { Person.new 						 }
	let(:person_with_bike) { Person.new(:bike) 			 }
	let(:station) 				 { double :docking_station }

	it 'has no bike' do
		expect(person).not_to have_bike
	end

	it 'can have a bike' do
		expect(person_with_bike).to have_bike
	end

	it 'can break a bike' do
		bike = double :bike
		person = Person.new(bike)
		expect(bike).to receive(:break!)
		person.fall_down
	end

	it 'should be able to rent a bike from a station' do
		expect(station).to receive(:release_available_bikes)
		person.rent_bike_from(station)
	end

	it 'should have a bike after renting one from a station' do
		# station = double (:docking_station,{:release_available_bikes => :bike})
		allow(station).to receive(:release_available_bikes).and_return(:bike)
		person.rent_bike_from station
		expect(person).to have_bike
	end

	it 'should be able to return a bike to a station' do
		expect(station).to receive(:dock).with(:bike)
		person_with_bike.return_bike_to station
	end

	it 'has no bike after returning one to a station' do
		allow(station).to receive(:dock).with(:bike).and_return(nil)
		person_with_bike.return_bike_to(station)
		expect(person_with_bike).not_to have_bike
	end

end