n, m = gets.split.map(&:to_i)

a = Array.new(m)
m.times{|i| a[i] = gets.split.map(&:to_i)}

b = Array.new(n, 0)
c = Array.new(n, 0)

a.each do |j|
    d, e = j
    b[e-1] += 1
    c[d-1] += 1
end 

count = 0
count1 = 0
count2 = 0
n.times do |i|
    if b[i] == c[i]
        count += 1
    end 
    
    if b[i] == c[i] + 1
       count1 += 1
   end 
   
   if b[i] == c[i] - 1
       count2 += 1
   end 
   
   
end 

if count == n || (count1 == 0 && count2 == 0) 
    puts 1
elsif count == n-2 || (count1 == 1 && count2 == 1)
    puts 1
else 
    puts 0
end 