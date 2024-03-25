n = gets.to_i
s = []

start_count = 0
goal_count = 0
mid_count = 0

indegree = Hash.new(0)
outdegree = Hash.new(0)

('a'..'z').each do |c|
  indegree[c] = 0
  outdegree[c] = 0
end

n.times do
  input = gets.chomp
  s << input

  outdegree[input[0]] += 1
  indegree[input[-1]] += 1
end

('a'..'z').each do |c|
  start_count += 1 if indegree[c] == outdegree[c] + 1
  goal_count += 1 if indegree[c] + 1 == outdegree[c]
  mid_count += 1 if indegree[c] == outdegree[c]
end

if start_count == 0 && goal_count == 0 && mid_count == 26
  puts 1
elsif start_count == 1 && goal_count == 1 && mid_count == 26 - 2
  puts 1
else
  puts 0
end