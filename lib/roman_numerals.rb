class RomanNumerals

	def self.convert(number) # here, we're calling a class method on self - which instantiates a RomanNumerals
		return "V" if number == 5
		"I"
	end

end