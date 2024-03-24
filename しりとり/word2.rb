n, m = gets.split.map(&:to_i)

a = Array.new(m)
m.times{|i| a[i] = gets.split.map(&:to_i)}

b = Array.new(n, 0)


n.times do |i|
    a.each do |j|
        c, d = j
        if i + 1 == c 
            b[i] += 1
        end 
        
        if i+ 1 == d
            b[i] += 1
        end 
        
    end 
end 

puts b.join(' ')

