class RomanNumerals
	ROMAN_NUMERALS = { 	1000 => "M", 
						900 => "CM",
						100 => "C", 
						90 => "XC", 
						50 => "L", 
						40 => "XL", 
						10 => "X", 
						9 => "IX", 
						5 => "V", 
						4 => "IV", 
						1 => "I"}

	def self.convert(number)
		string = ""
		ROMAN_NUMERALS.each do |k, v|
			(number / k).times {string << v; number -= k}
		end
		string.to_s
	end
end