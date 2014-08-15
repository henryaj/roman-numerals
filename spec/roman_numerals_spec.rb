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

	it "should convert 15 to XV" do
		expect(RomanNumerals.convert(15)).to eq("XV")
	end

	it "should convert 20 to XX" do
		expect(RomanNumerals.convert(20)).to eq("XX")
	end

	it "should convert 76 to LXXVI" do
		expect(RomanNumerals.convert(76)).to eq("LXXVI")
	end


	
end