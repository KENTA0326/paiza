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

count = 0
b.each do |j|
    if j % 2 != 0
        count += 1
    end 
end 

if count ==0 || count == 2
    puts 1
else 
    puts 0
end 


