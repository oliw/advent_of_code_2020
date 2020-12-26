testinput = <<~INPUT
1,20,11,6,12,0
INPUT

input = testinput.split(",").map(&:to_i)

last_seen = Hash.new{|h,k| h[k] = []}

turn = 1
last_spoken = nil
1.upto(30000000) do |turn_number|
  if turn_number <= input.length
    # Use starting number
    number = input[turn_number-1]
  elsif last_seen[last_spoken].length < 2
    # Number we've never seen before
    number = 0
  else
    # we've seen this before
    previous_places = last_seen[last_spoken]
    number = previous_places[-1] - previous_places[-2]
  end
  last_seen[number] << turn_number
  last_spoken = number
end

puts "Part 2"
puts last_spoken