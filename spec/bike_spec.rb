require 'bike'

describe Bike do

	let(:bike) { Bike.new }
	
	it 'is not broken when created' do
		expect(bike).not_to be_broken
	end

	it 'should be able to break' do
		expect(bike.break!).to be_broken
	end

	it 'should be able to get fixed' do
		bike.break!
		expect(bike.fix!).not_to be_broken
	end

end