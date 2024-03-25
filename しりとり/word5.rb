n, m, v = gets.split.map(&:to_i)

a = Array.new(m)
m.times{|i| a[i] = gets.split.map(&:to_i)}

count1 = 0
count2 = 0

a.each do |j|
    c, d = j
    if c == v
        count1 += 1
    end 
    if d == v
        count2 += 1
    end 
end 

puts "#{count1} #{count2}"