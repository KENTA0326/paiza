n, m = gets.split.map(&:to_i)

a = Array.new(m)
m.times{|i| a[i] = gets.split.map(&:to_i)}

b = Array.new(n, 0)
c = Array.new(n, 0)

a.each do |j|
    d, e = j
    c[d-1] += 1
    b[e-1] += 1
end 

count = 0
n.times do |i|
    if b[i] != c[i]
        count += 1
    end 
end 

if count == 0
    puts 1
else 
    puts 0
end 


