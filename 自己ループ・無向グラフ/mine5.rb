n, m = gets.split.map(&:to_i)
a = Array.new(m)
m.times{|i| a[i] = gets.split.map(&:to_i)}

count = 0
answer = []

a.each do |j|
    c, d = j
     if c == d
         count += 1
         answer << [c]
     end 
 end
 
 answer.sort!
 puts count 
 answer.each{|row| puts row.join(' ')}