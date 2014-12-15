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

	ROMAN_TO_DECIMAL = ROMAN_NUMERALS.inject({}) do |memo, (number, numeral)|
		memo[numeral] = number
		memo
	end

	def self.convert(number)
		raise if number > 4999
		raise if number < 1
		result = ""
		ROMAN_NUMERALS.each do |pair|
			(number / pair[0]).times { result << pair[1]; number -= pair[0] }
		end
		result
	end

	def self.arabise(roman_numeral)
		# result = 0

		if roman_numeral.nil?
			0
		elsif ROMAN_TO_DECIMAL[roman_numeral[0..2]]
			ROMAN_TO_DECIMAL[roman_numeral[0..2]] + self.arabise(roman_numeral[3..-1])
		else 
			ROMAN_TO_DECIMAL[roman_numeral[0]] + self.arabise(roman_numeral[1..-1])
		end

	end



end



