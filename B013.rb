# Bランク013:最遅出社時刻

require "time"

abc =  gets(chomp:true).split(" ").map(&:to_i)
h_s_time = abc[0]*60
riding_time = abc[1]*60
s_c_time = abc[2]*60
train_numbers = gets.to_i
train_leaving_time = readlines(chomp:true).map{|line| line.split(" ").map(&:to_i)}
limit_time = Time.new(2020,3,3,8,59)

train_time_table = []
train_leaving_time.each do |arr|
    train_time_table << Time.new(2020,3,3,arr[0],arr[1])
end

arriving_comp_time = []
train_time_table.each do |arr|
    arriving_comp_time <<  [(arr + riding_time + s_c_time),(arr - h_s_time)]
end

time_range = []
arriving_comp_time.each do |a,b|
  if a <= limit_time
     time_range << [(limit_time - a),b] 
  end
end
latest_time = time_range.sort{|a,b| a[0] <=> b[0]}.first
puts  ('%02d' %(latest_time[1].hour.to_s)) + ":" + ('%02d' %(latest_time[1].min.to_s))