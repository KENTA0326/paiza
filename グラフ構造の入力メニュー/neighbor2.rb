n, m = gets.split.map(&:to_i)
a = Array.new(m)
m.times{|i| a[i] = gets.split.map(&:to_i)}

answer = Array.new(n) { [] }

a.each do |j|
    c, d = j
    answer[c-1] << d
end

answer.map!{ |neighbors| neighbors.empty? ? [-1] : neighbors}

answer.each {|neighbors| puts neighbors.join(' ')}