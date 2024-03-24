n, m, v = gets.split.map(&:to_i)
a = Array.new(m)
m.times{|i| a[i] = gets.split.map(&:to_i)}

count = 0
a.each do |i|
    c, d = i
    if c == v || d == v
        count += 1
    end 
end 

puts count
