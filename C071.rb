# cランク071:直角三角形

NM = gets(chomp:true).split(" ").map(&:to_i)
bottom = NM[0]
height = NM[1]

bottom_arr = []
n = 0
while n <= bottom-2
 bottom_arr << n +=1
end

height_arr = []
i = 0
while i <= height-2
 height_arr << i +=1
end

conb_arr = []
conb_arr << bottom_arr.product(height_arr)
conb_arr.flatten!(1)

hypotenuses_2 = []
conb_arr.each do |arr|
  hypotenuses_2 << Math.sqrt(arr[0]**2 + arr[1]**2).to_s
end
hypotenuses = []
hypotenuses_2.each do |ele|
 if ele =~ (/^[0-9]+\.0+$/)
     hypotenuses << ele
 end
end
puts hypotenuses.length