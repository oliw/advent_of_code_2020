input = <<~INPUT
99
3
1
11
48
113
131
43
82
19
4
153
105
52
56
109
27
119
147
31
34
13
129
17
61
10
29
24
12
104
152
103
80
116
79
73
21
133
44
18
74
112
136
30
146
100
39
130
91
124
70
115
81
28
151
2
122
87
143
62
7
126
95
75
20
123
63
125
53
45
141
14
67
69
60
114
57
142
150
42
78
132
66
88
140
139
106
38
85
37
51
94
98
86
68
INPUT

# input = <<~INPUT
# 16
# 10
# 15
# 5
# 1
# 11
# 7
# 19
# 6
# 12
# 4
# INPUT

adapters = input.split("\n").map(&:to_i).sort

# use all the adapters, and always favor the smallest match
one_diffs = 0
three_diffs = 0

prev = 0
adapters.each do |adapter|
	diff = adapter - prev
	one_diffs += 1 if diff == 1
	three_diffs += 1 if diff == 3
	prev = adapter
end
three_diffs += 1

puts "Part 1"
puts "#{one_diffs} 1-diffs * #{three_diffs} 3-diffs = #{one_diffs*three_diffs}"


max_amount = adapters.max
def num_ways(current_amount, target_amount, remaining_adapters, memory)
	cached_value = memory[current_amount][target_amount]
	return cached_value if !cached_value.nil?

	return 1 if current_amount == target_amount
	return 0 if remaining_adapters.empty?

	# pick all the adapters within reach of the current one (assume sorted)
	ways = 0
	i = 0
	while (i < remaining_adapters.length)
		next_amount = remaining_adapters[i]
		break if next_amount > current_amount+3
		rest = remaining_adapters[(i+1)..-1]
		ways += num_ways(next_amount, target_amount, rest, memory)
		i += 1
	end
	memory[current_amount][target_amount] = ways
	ways
end

puts "Part 2"
memory = Hash.new { |h,k| h[k] = Hash.new }
puts num_ways(0, max_amount, adapters, memory)
