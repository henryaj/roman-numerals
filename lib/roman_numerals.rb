class RomanNumerals

	# Define a constant which is set to an array of roman numerals in descending order.
	ROMAN_NUMERALS = { 10 => "X", 5 => "V", 1 => "I"}

	def self.convert(number) # here, we're calling a class method on self - which instantiates a RomanNumerals
		ROMAN_NUMERALS[number]
	end

end