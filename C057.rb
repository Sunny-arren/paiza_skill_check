# Cランク057:シャボン玉飛ばし

Txy = gets(chomp:true).split(" ").map(&:to_i)
time_total = Txy[0]
default = [Txy[1],Txy[2]]
wind_info = readlines(chomp:true).map{|line| line.split(" ").map(&:to_i)}

total_wind =  wind_info.unshift(default)

total_wind_x = []
total_wind_y = []
total_wind.each do |arr|
total_wind_x << arr[0]
total_wind_y << arr[1]
end 

count_split =[]
num = 0
time_total.times do 
 count_split << num += 1
end

current_place_x = []
count_split.each do |int|
    sub_total_x = total_wind_x[0..int].sum
    current_place_x << sub_total_x
end
current_place_x_total = current_place_x.unshift(default[0]) 

current_place_y = []
count_split.each do |int|
    sub_total_y = total_wind_y[0..int].sum
    current_place_y << sub_total_y
end

current_place_y_total = current_place_y.unshift(default[1])

break_time = []
current_place_y_total.each_with_index do |int,i|
 if int <= 0
  break_time << [int,i]
 end
end

break_point = []
break_point << current_place_y_total.select{|ele| ele <= 0 }
if break_point.flatten.empty?
 puts current_place_x_total[0..time_total].max
else
 puts current_place_x_total[0..break_time.first[1]].max
end