# Cランク019:完全数とほぼ完全数

require'prime'
def definition(sum,a_num)
  if sum == a_num 
  puts "perfect"
  elsif (sum - a_num).abs == 1
  puts "nearly"
  else 
  puts "neither"
  end
end


Q = gets.to_i
line = readlines.map(&:to_i)

line.each do |num|
 sum = Prime.prime_division(num).map {|p, e| (p ** (e + 1) - 1) / (p - 1) }.inject(:*)-num
 a_num = num
 definition(sum,a_num)
end