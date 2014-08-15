class RomanNumerals

	ROMAN_NUMERALS = [
		[10, "X"],
		[5, "V"],
		[1, "I"]
	]

	def self.convert(number)
		a = ""
		ROMAN_NUMERALS.each do |pair|
			(number / pair[0]).times { a << pair[1]; number -= pair[0] }
		end
		a
	end


end