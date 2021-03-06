require 'roman_numerals'

describe RomanNumerals do 

	context "arabic to roman converter" do

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

		it "should convert 499 to CDXCIX" do
			expect(RomanNumerals.convert(499)).to eq("CDXCIX")
		end

		it "should return an error for numbers larger than 4999" do
			expect{ RomanNumerals.convert(5000) }.to raise_error
		end

		it "should return an error for numbers small than 1" do
			expect{ RomanNumerals.convert(-1) }.to raise_error
		end

		it "should return an error for non-integers" do
			expect{ RomanNumerals.convert(5.5) }.to raise_error
		end

	end

	context "Roman to arabic converter" do

		it "should convert I to 1" do
			expect(RomanNumerals.arabise("I")).to eq(1)
		end

		it "should convert V to 5" do
			expect(RomanNumerals.arabise("V")).to eq(5)
		end

		it "should convert XV to 15" do
			expect(RomanNumerals.arabise("XV")).to eq(15)
		end

		it "should convert LXXVI to 76" do
			expect(RomanNumerals.arabise("LXXVI")).to eq(76)
		end

	end
	
end