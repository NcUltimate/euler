def palindrome?(str)
  (0..str.length/2).all? do |i|
    str[i] == str[str.length - i - 1]
  end
end

result = (1..999_999).reduce(0) do |sum, i|
  i_s = i.to_s
  next sum unless palindrome?(i_s)

  b_s = i.to_s(2)
  next sum unless palindrome?(b_s)
  puts "(#{i_s}) #{b_s}"
  sum + i
end
puts result