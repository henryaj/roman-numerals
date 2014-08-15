require 'roman_numerals'

describe RomanNumerals do 

	it "should convert 1 to I" do
		expect(RomanNumerals.convert(1)).to eq("I")
	end

	it "should convert 5 to V" do
		expect(RomanNumerals.convert(5)).to eq("V")
	end

	it "should convert 10 to X" do
		expect(RomanNumerals.convert(10)).to eq("X")
	end

	
end