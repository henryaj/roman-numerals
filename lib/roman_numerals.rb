class RomanNumerals

	# Define a constant which is set to an array of roman numerals in descending order.
	ROMAN_NUMERALS = { 1000 => "M", 100=> "C", 50 => "L", 40 => "XL", 10 => "X", 9 => "IX", 5 => "V", 4 => "IV", 1 => "I"}

	def self.convert(number) # here, we're calling a class method on self - which instantiates a RomanNumerals
		string = ""
		ROMAN_NUMERALS.each do |k, v|
			(number / k).times {string << v; number -= k}
		end
		string.to_s
	end

end