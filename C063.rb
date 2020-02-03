# Cランク063:ガーデニング

N = gets.to_i
ab = readlines(chomp:true).map{|e| e.split(" ").map(&:to_i)}
bloosoms = []
ab.each do |arr|
 bloosoms << arr.sum
end
blossoms_gp = bloosoms.group_by{|ele| ele}
max_blossom_days = []
blossoms_gp.each do |day, arr|
max_blossom_days << [day, arr.length]
end
puts max_blossom_days.sort_by{|a,b| a }.sort{|a,b| b[1]<=>a[1]}.first[0]
