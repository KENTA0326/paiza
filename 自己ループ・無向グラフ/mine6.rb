n, m = gets.split.map(&:to_i)
a = Array.new(m)
m.times{|i| a[i] = gets.split.map(&:to_i)}

count = 0
edges = {}
answer = []

a.each do |i|
    c, d = i
    c, d = d, c if c > d
    key = [c, d]
    edges[key] = edges[key].to_i + 1
end

edges.each do |key, value|
  answer << key if value >= 2
end

puts answer.length

answer.each do |edge|
  puts edge.join(' ')
end