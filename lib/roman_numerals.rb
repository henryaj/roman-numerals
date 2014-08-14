NUMERALS = { 1 => "I",
			  4 => "IV",
			  5 => "V",
			  9 => "IX",
			  10 => "X",
			  50 => "L",
			  100 => "C",
			  500 => "D",
			  1000 => "M" }

def convert(number)
	puts NUMERALS.has_key?(number)
	if NUMERALS.has_key?(number) 
		return NUMERALS[number]
	else
		
	end
end