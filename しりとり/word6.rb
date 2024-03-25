n,m = gets.split.map(&:to_i)

a = Array.new(m)
m.times{|i| a[i] = gets.split.map(&:to_i)}

b = Array.new(n, 0)
c = Array.new(n, 0)

a.each do |j|
    d, e = j
    b[e-1] += 1
    c[d-1] += 1
end 

puts b.join(' ')
puts c.join(' ')