# Cランク032:お得な買い物

N = gets.to_i
vp = readlines(chomp:true).map{|line| line.split(" ").map(&:to_i)}

food_sum = 0
books_sum = 0
cloths_sum = 0
others_sum = 0

vp.each do |arr|
    if arr[0] == 0
        food_sum += arr[1]
    elsif arr[0] == 1
        books_sum += arr[1]
    elsif arr[0] == 2
        cloths_sum += arr[1]
    else
        others_sum += arr[1]
    end
end
food_points  = (food_sum.floor(-1)/100)*5
books_points  = (books_sum.floor(-1)/100)*3
cloths_points = (cloths_sum.floor(-1)/100)*2
others_points = (others_sum.floor(-1)/100)*1
puts (food_points + books_points + cloths_points + others_points)