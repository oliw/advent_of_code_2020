input = "872495136"

cups = input.split("").map(&:to_i)

idx = 0

100.times do |i|
  puts "Move #{i+1}"
  current_cup = cups[idx]
  puts "Cups #{cups.join(" ")}"
  puts "Idx = #{idx}"

  # The crab picks up the three cups that are immediately clockwise of the current cup.
  taken_cups = []
  3.times do
    taken_cups << cups.delete_at((cups.index(current_cup)+1) % cups.length)
  end

  puts "Picked up #{taken_cups.join(",")}"

  # The crab selects a destination cup
  target_destination_cup = current_cup > 1 ? current_cup-1 : cups.max
  while taken_cups.include? target_destination_cup
    target_destination_cup -= 1
    if target_destination_cup <= 0
      target_destination_cup = cups.max
    end
  end

  puts "Destination Cup #{target_destination_cup}"
  target_destination_cup_idx = cups.index(target_destination_cup)

  # The crab places the cups it just picked up so that they are immediately clockwise of the destination cup.
  cups.insert((target_destination_cup_idx+1)%cups.length, *taken_cups)

  # The crab selects a new current cup: the cup which is immediately clockwise of the current cup.
  idx = (cups.index(current_cup) + 1) % cups.length
end

one_position = cups.index(1)
result = ""
idx = (one_position + 1) % cups.length
while (idx != one_position)
  result += cups[idx].to_s
  idx = (idx+1)%cups.length
end

puts "Part 1"
puts result