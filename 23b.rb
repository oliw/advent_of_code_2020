input = "872495136"

# Process Input
cups = input.split("").map(&:to_i)
i = cups.max + 1
while cups.length < 1_000_000
  cups << i
  i+=1
end

max_cup = cups.max

class Cup
  def initialize(label)
    @label = label
    @next = nil
  end

  attr_accessor :label
  attr_accessor :next
end


# Maintain a pointers to each node
nodes_by_label = Hash.new

# Turn cups into linked list
head = Cup.new(cups[0])
nodes_by_label[head.label] = head
first = head

(1...cups.length).each do |i|
  next_cup = Cup.new(cups[i])
  nodes_by_label[next_cup.label] = next_cup
  head.next = next_cup
  head = next_cup
end
head.next = first


# What are the variables?
# => Number of Iterations
# i => Current Iteration
# j => Location of 1
# k => Value of j+1
# l => Value of j+2

current_cup = first
10_000_000.times do |i|

  # The crab picks up the three cups that are immediately clockwise of the current cup.
  taken_cups = []
  cup_to_take = current_cup.next
  3.times do
    taken_cups << cup_to_take
    cup_to_take = cup_to_take.next
  end
  current_cup.next = cup_to_take

  # The crab selects a destination cup: the cup with a label equal to the current cup's label minus one.
  target_destination_cup_label = current_cup.label > 1 ? current_cup.label-1 : max_cup
  while taken_cups.any? {|cup| cup.label == target_destination_cup_label}
    target_destination_cup_label -= 1
    if target_destination_cup_label <= 0
      target_destination_cup_label = max_cup
    end
  end
  target_destination_cup = nodes_by_label[target_destination_cup_label]

  # The crab places the cups it just picked up so that they are immediately clockwise of the destination cup.
  old_next = target_destination_cup.next
  target_destination_cup.next = taken_cups.first
  taken_cups.last.next = old_next

  # The crab selects a new current cup: the cup which is immediately clockwise of the current cup.
  current_cup = current_cup.next
end

# Find the label values of the two cups that lie after the cup labelled 1.
one_cup = nodes_by_label[1]
result = 1
result *= one_cup.next.label
result *= one_cup.next.next.label

puts "Part 2"
puts result