11.upto(99) do |den|
	10.upto(den-1) do |num|
		actual = num.to_f / den.to_f
		nums = num.to_s
		dens = den.to_s

		str = "#{num}#{den}"
		reg1 = /(.)..\1/
		reg2 = /.(.)\1./
		match = str.match(reg1) || str.match(reg2)
		next unless match

		dig = match[1]
		idx1 = nums.index(dig)
		idx2 = dens.index(dig)
		next if idx1 == idx2

		new_num = nums[1 - idx1]
		new_den = dens[1 - idx2]
		new_res = new_num.to_f / new_den.to_f
		next unless new_res == actual

		puts "#{num} / #{den} == #{new_num} / #{new_den}"
	end	
end
