# Cランク069:お祭りの日付

starting_ymd = gets(chomp:true).split(" ").map(&:to_i)
starting_y_origin = starting_ymd[0]
starting_m = starting_ymd[1]
starting_d = starting_ymd[2]

opening_md = gets(chomp:true).split(" ").map(&:to_i)
opening_m = opening_md[0] 
opening_d = opening_md[1]

starting_y = starting_y_origin

if starting_y_origin%4 == 0
  opening_y = starting_y_origin + 1
else
 while starting_y_origin <= 10000 do
   starting_y += 1
   break if starting_y % 4 == 1
   opening_y = starting_y+1
 end
end

if starting_m.odd?
 rest_days_sm = (13 - starting_d)
 this_year_days = ((starting_m..13).to_a.count{|m| m.odd? == true} -1)*13 + ((starting_m..13).to_a.count{|m| m.even? == true})*15 + rest_days_sm
else
 rest_days_sm = (15- starting_d)
 this_year_days = ((starting_m..13).to_a.count{|m| m.odd? == true})*13 + ((starting_m..13).to_a.count{|m| m.even? == true}-1)*15 + rest_days_sm
end

if opening_m.odd?
 op_year_days =  ((1..opening_m).to_a.count{|m| m.odd? == true} -1)*13 +((1..opening_m).to_a.count{|m| m.even? == true})*15 + opening_d
else
 op_year_days =  ((1..opening_m).to_a.count{|m| m.odd? == true})*13 + ((1..opening_m).to_a.count{|m| m.even? == true} -1)*15 + opening_d
end

if (opening_y - (starting_y_origin)) == 1
 puts this_year_days + op_year_days
else
 puts (15*6 + 13*7)*((opening_y - starting_y_origin) - 1) + this_year_days + op_year_days
end

