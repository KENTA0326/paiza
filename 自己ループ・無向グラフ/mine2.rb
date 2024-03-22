n = gets.to_i 
a = Array.new(n)
n.times{|i| a[i] = gets.split.map(&:to_i)}

count = 0
answer = []
(0...n).each do |i|
    (i+1...n).each do |j|
    if a[i][j] > 1
        count += 1
        answer << [i+1, j+1]
    end 
end 
end 

puts count 
answer.each { |neighbor| puts neighbor.join(' ')}