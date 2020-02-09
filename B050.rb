#Bランク050:【ぱいじょ！コラボ問題】有効なチケット

N = gets.to_i
S = gets.chomp
tickets = readlines(chomp:true).map(&:to_s)

item_bytes = S.length
i = -1
bytes_array = []
item_bytes.times do
    bytes_array << i += 1
end

sep = S.split("")
sep_arr = []
bytes_array.each do |ele|
    sep_arr << [sep[0..ele].join,sep[(ele+1)..(item_bytes-1)].join]
end

passed_tickets_index = []
n = -1
while n < N-1
  n += 1
  sep_arr.each do |arr|
     original_ticket = tickets[n]
     if arr[1] !=""
      if original_ticket == tickets[n].match(/.*#{arr[0]}.#{arr[1]}.*/).to_s
         passed_tickets_index << n
      end
     else
      if original_ticket == tickets[n].match(/.*#{arr[0]}.*/).to_s 
         passed_tickets_index << n
      end
     end
  end
end

passed_tickets_index.uniq!
passed_tickets_index_arr = passed_tickets_index.map(&:to_s)


all_tickets_index = []
i = -1
N.times do
 all_tickets_index << i +=1
end
all_tickets_index_arr = all_tickets_index.map(&:to_s)

all_tickets_index_arr.delete_if do |ele|
    passed_tickets_index_arr.include?(ele)
end

invalid_tickets = []
all_tickets_index_arr.each do |ele|
    invalid_tickets << [ele,"invalid"]
end
 valid_tickets =[]
 passed_tickets_index_arr.each do |item|
     valid_tickets <<  [item,"valid"]
end

result = (invalid_tickets + valid_tickets).sort_by{|arr| arr[0].to_i}.to_h.values
puts result
