def find_loop_size(public_key, subject_number)
  value = 1
  (1..).each do |loop_size|
    value = value * subject_number % 20201227
    return loop_size if value == public_key
  end
end

def transform(loop_size, subject_number)
  value = 1
  loop_size.times do 
    value = value * subject_number % 20201227
  end
  value
end

# find the cards public key
card_public_key = 10943862
card_loop_size = find_loop_size(10943862, 7)

puts "The card public key is #{card_public_key}, the loop size is #{card_loop_size}"

# find the doors public key
door_public_key = 12721030
door_loop_size = find_loop_size(12721030, 7)

puts "The door public key is #{door_public_key}, the loop size is #{door_loop_size}"

encryption_key = transform(card_loop_size, door_public_key)
puts "Part 1"
puts encryption_key