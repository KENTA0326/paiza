n = gets.to_i
a = Array.new(n)
n.times{|i| a[i] = gets.split.map(&:to_i)}

count = 0
answer = []
n.times do |i|
    if a[i][i] == 1
        count += 1
        answer.push(i + 1)
    end 
end 

puts count 
answer.each { |mine| puts mine}