require './lib/van'

describe Van do
	let(:van) {Van.new(:capacity => 30)}

	it 'should allow setting default capacity when initialising' do
		expect(van.capacity).to eq(30)
	end

end