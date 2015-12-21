def divisors(num)
	divs = []
	num.downto(1) do |n|
			if num % n == 0
			divs << n
			end
		end
	return divs  
	end

def deficient(num)
	dub = 2*num
	add_divs = 0
	arr = divisors(num)
	arr.each do |n|
		add_divs += n
	end
	if add_divs < dub
		puts "#{num} deficient"

	elsif add_divs > dub
		puts "#{num} abundant by #{add_divs - dub}"

	elsif add_divs == dub
		puts "#{num} perfect"
	end

end
challenge = [111,112,220,69,134,85]
challenge.each do |n|
	deficient(n)
end

		