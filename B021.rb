# Bランク021:複数形への変換

N = gets.to_i
words = readlines(chomp:true)
words.each do |item|
    if /fe$/ =~ item
        puts item.gsub(/fe$/,"ves")
    elsif /f$/ =~ item
        puts item.gsub(/f$/,"ves")
    elsif /s$/ =~ item || /sh$/ =~ item || /ch$/ =~ item || /o$/ =~ item || /x$/ =~ item
        puts item + "es"
    elsif /[^a,i,u,e,o]y$/ =~ item
        puts item.gsub(/y$/,"ies")
    else
        puts item + "s"
    end
end