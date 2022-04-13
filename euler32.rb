prods = []
1.upto(99) do |op1|
	9999.downto(1) do |op2|
		str = "#{op1}#{op2}#{op1*op2}"
		next if str.length !=9

		act = str.split(//).sort.join('')
		next if act != '123456789'

		prods <<  op1*op2 unless prods.include?(op1*op2)
		puts "#{op1} x #{op2} = #{op1*op2}"
	end	
end

puts "Sum = #{prods.inject(0){|sum, prod| sum+= prod}}"