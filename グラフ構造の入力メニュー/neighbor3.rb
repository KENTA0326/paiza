n, m = gets.split.map(&:to_i)

a = Array.new(m)
m.times {|i| a[i] = gets.split.map(&:to_i)}

answer = Array.new(n) { [] }

a.each do |j|
    c, d, e = j
    answer[c-1] << e
end

answer.map!{ |neighbor| neighbor.empty? ? [-1] : neighbor}

answer.each { |neighbor| puts neighbor.join(' ')}