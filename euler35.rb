require 'prime'

count = 0
1.upto(1000000) do |num|

	next unless Prime.prime?(num)
	num_str = num.to_s
	ext = "#{num_str}"*2
	digits = ext.split(//)

	rots = []
	0.upto(digits.count-num_str.length-1) { |idx|
		rots << digits[idx...(idx + num_str.length)].join
	}
	all_prime = rots.all?{ |number|
		Prime.prime?(number.to_i)
	}
	puts num if all_prime
	count += 1 if all_prime
end

puts "Count is #{count}"