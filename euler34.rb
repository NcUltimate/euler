def fac(n)
	return 1 if n == 0
	n.downto(1).inject(:*)
end

facs = (0..9).map{ |k| fac(k) }
f = Hash[*(0..9).to_a.zip(facs).flatten]

10.upto(2540160){ |num|

	digits = num.to_s.split(//)
	digit_sum = digits.map{|i| f[i.to_i]}.inject(&:+)
	
	puts "!! #{num} === #{digit_sum} !!" if num == digit_sum
}