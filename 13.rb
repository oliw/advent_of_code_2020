input = <<~INPUT
1001798
19,x,x,x,x,x,x,x,x,41,x,x,x,x,x,x,x,x,x,859,x,x,x,x,x,x,x,23,x,x,x,x,13,x,x,x,17,x,x,x,x,x,x,x,x,x,x,x,29,x,373,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,37
INPUT

input =  input.split("\n")
target = input[0].to_i
buses  = input[1].split(",").select{|i| i != "x"}.map(&:to_i)

def smallest_over_number(x, target)
  result = (target / x)*x
  result += x if result != target
  result
end

bus_id = nil
bus_number =  nil

buses.each do |b|
  curr_bus_number =  smallest_over_number(b, target)
  if bus_number.nil? || curr_bus_number < bus_number
    bus_id = b
    bus_number = curr_bus_number
  end
end

answer  =  (bus_number-target)*bus_id

puts "Part 1"
puts "first bus = #{bus_number} first bus id =  #{bus_id}  #{answer}"

# input = <<~INPUT
# foo
# 17,x,13,19
# INPUT
# input =  input.split("\n")

### Part 2
raw_buses = input[1].split(",")
Bus =  Struct.new(:id, :offset, :remainder)

buses =[]
raw_buses.each_with_index do |b, idx|
  next if b == "x"
  buses << Bus.new(b.to_i,idx,b.to_i - idx)
end

def extended_gcd(a, b)
  last_remainder, remainder = a.abs, b.abs
  x, last_x, y, last_y = 0, 1, 1, 0
  while remainder != 0
    last_remainder, (quotient, remainder) = remainder, last_remainder.divmod(remainder)
    x, last_x = last_x - quotient*x, x
    y, last_y = last_y - quotient*y, y
  end
  return last_remainder, last_x * (a < 0 ? -1 : 1)
end
 
def invmod(e, et)
  g, x = extended_gcd(e, et)
  if g != 1
    raise 'Multiplicative inverse modulo does not exist!'
  end
  x % et
end
 
def chinese_remainder(mods, remainders)
  max = mods.inject( :* )  # product of all moduli
  series = remainders.zip(mods).map{ |r,m| (r * max * invmod(max/m, m) / m) }
  series.inject( :+ ) % max 
end
 
mods = buses.map(&:id)
remainders = buses.map(&:remainder)

puts "Part 2"
puts chinese_remainder(mods, remainders)