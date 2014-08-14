require 'roman_numerals'

describe 'roman_numerals' do 
	it 'should convert 1 into I' do 
		expect(convert(1)).to eq "I"
	end

	it 'should convert 5 into V' do 
		expect(convert(5)).to eq "V"
	end

	it 'should convert 10 into X' do 
		expect(convert(10)).to eq "X"
	end
		
end