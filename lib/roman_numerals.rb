class RomanNumerals

	ROMAN_NUMERALS = [
		[1000, "M"],
		[500, "D"],
		[400, "CD"],
		[100, "C"],
		[90, "XC"],
		[50, "L"],
		[40, "XL"],
		[10, "X"],
		[9, "IX"],
		[5, "V"],
		[4, "IV"],
		[1, "I"]
	]

	def self.convert(number)
		raise if number > 4999
		raise if number < 1
		a = ""
		ROMAN_NUMERALS.each do |pair|
			(number / pair[0]).times { a << pair[1]; number -= pair[0] }
		end
		a
	end


end