input = <<~INPUT
LLLLLLLL.LLLLLLLLL.LL.LLLLLLL.LLLLL.LLLLLLLL.LLLLL.LLLL.LLLLL.LLLLLLLLLLLLLLLLLLLLLLL.LLLLLLLLLL
LLLLLLLL.LLLLLLLLLLLLLL.L.LLL..LLLL.LLLLLLLLLLLLLLL.LLLLLLLLLL.LLLLLLLLLLLLLLL.LLLLL..LLLLLLLLLL
LLLLLLLL.LLLLLLLLL.LLLL.LLLLL.LL.LL.LLLLLLLLLLLLLLL.LLLLLLLLL.LLLLL.L.LLL.LLLL.L.LLLLLLL.LLLLLLL
LLLLLLLL.LLLLLLL.L.LLLL.LLLLL.LLLLL.LLLLLLLLLLLLLLL..LLLLLL.LLLLLLLLL.LLLLLLLL..LLLLLLLLLLLLLL.L
LLLLLLLL.LLLLLLLLL.LLLL.LLLLLLLLL.LLLLLLLLLLLLLLLLL.LLLLLLLLL.LLLL.LL.LLLLLLLL.LLLLLL.LLLLLL.LLL
LLLLLLLL.LLLLLLLLL.LLLLLLLLLL.LLL.LLLLLLLLLL.L.LLL..LLLLLLLLL.LLLLLLL.LLLLLLLL.LLLLLL.LLLL.LLLLL
LLLL.LLL.LLLLLL.LL.LLLLL..LLL.LLLL..LL.L.LLLLLLLLLLL.LLLLLLLL.LLLLLLL..LLLLLLL.LLL.LLLLLLLLLLLLL
LLLLLLLL.LLLLLLLLL.LLLLLLLLLL.LLLLLLLLLLLLLL.LLLLLL.LLLLLLLLL.LLLLLLL.LLLLLLLL.LLLLLL.LLLLLLLLLL
LL...L......L.L.L......L....L.....LLLL..L.L.L.L................LL........L..L...L......L..L.LL..
L.LLLLLLLLLLLLLL.L.LLLLLLLLLLLLLLLL.LLLLLLLLL.LLLLL.LLLLLLLLLLL.LLLLLLLLLLLLLLLLLLLLLLLLLLLLL.LL
LLLLLLLL.L.LLLLLLLLLLLL.LLLLLLLLLLL.LLLLLLLLLLLLLLLLLL.LLLLLLLLLL.LLLLLLLLLLLLLLLL.LLLLLLLLLLLLL
LLLLLLLL..L.LLLLLL.LLLL.LLLLLLLL.LLLLLL.LL.L.LLLLLL.LLLLLLLLLLLLLLLLL.L.LLLLL..LLLLLLLLLLLLLLLLL
LLLLLLLL.LLLL.LLLL.LLLL.LLLLL.LLLLLLLLLLLLLLLLLLLLL.LLLLLLLLL.LLLLLLL.LLLLLL.LLLLLL.L.LLLLLLL.LL
LLLLLLLL.LLLLLLLLL.LLLL.LLLLL.LLLLL.LLLLLLLL.LLLLLLLLLLLLL.LL.LLLLLLLLL.LLLLLL.LLLLLLLLLLLLLLLLL
LLLLLLLL.LLLL.LLLL.LLLL.LLLLL.LLLLL.LL.LLLL..L.LLLL.LLLLLLLLL.LLLLLLL.LLLLLLLL.LLLLL..LLLLL.LLLL
.L...L.....L.........L.L..L...LL.....L.L.L..L.L.....L..L.L.L........L...L..L.......L....L...LL.L
LLLLLLLLLLL.LLL.LL.LLLL.LLL.L.LLLLLLLLLLLLL..LLLLLLLLLLLLLLLL.LL.LLLL.LLLLLLLLLLLLLLLLLLLLL.LLLL
LLLLLLLL.LLLLLLLLLLLLLLLLLLL..LL.LLLLLLLLLLL.LLLLLL.LLLLLLLL..LLLLLLL.LLLLLLLL.LLLLLLLLLLLLLLLLL
LLLLLLLL.LLLLLLLLLLLLLL.LLLL..LLLLLLLLLLLLL.LLLLLLLLLLLLLLL.LLLLLLLLLLLLLLLL.L.LLLLLL.LLLLLLLLLL
LLLLLLLL...LLLLLLL.LLLLLLLLLL.LLLLLLLLLLLLLLLLL.L.LLLLLLLLLLL.LLLLLLL.LL..LLLLLLLLLLL.LLLLLLLLLL
L...LL.L........L..LLL.L.LL..L..L.L.L..L..L.........L.....LLL.....LLL........LLL...LL..L.L...LL.
LLLLLLLLLLLLLLLLLL.LLLL.LLLLL.LLLLL.L.LLLLL...LLL.L.L.LLLLLLLLLLLL.LLLLLLLLLLL.LLLLLLLLLLLLLLLLL
LLL.LLLL.LLLLLLLLL.LLLLLLLLL..L.L.L.LLLLLLLL.LLLLLL.LLLLLLL.L.LLLLLLL.LLL.LLLLLLLLLLL.LLLLLLLLLL
LLLLLLLL.LLLL.LLLLLLLLL.LLLLLLLLLLL.LLL.LLLL.LLLLLL.LLLLLLLLL.LLLLLLLLLLLLLLLL.LLLLLLLLLLLLLLLL.
LLLLLLLL.LLLLLLLLL.LLLL.LLLLL..LLLL.LLLLLLLL.LLLLLL.LLLLLLLLL.LL.LLLL.LLLLLLLL.LLLLLL.LLLLLLLLLL
...L.L.L..LL.......L.LL.L..LL........LLLL.....LL.LLL.L.LL...L.L.......LL....L..L..LL.L....L..LLL
L...LLLLLLLLLLLLLLLLLLLLLLLLL.LLLLL.LLLLLLLL.L.LLLL.LLLLL.LLL.LLLLLLL.LLLLLLLLLLLLLLL.LL.LLLLLLL
LLLLLLLL.LLL.LLLLL.LLLLLLLLLL.LLLLL.LLLLLLLLLLL.LLL.LLLLLLLLLLLLLLLLL.LLLLLLLL.LLLLL.LLLLLLLLLLL
LLLLLLLL.L.LLLLLLL.LLLL.LLLLL.LLLLLLLLLLLLLL..LLLLL.LLLLLL.L..LLLLLLL.LL.L.LLL.LLLLLL.LLLLLLLLLL
LLLLLLLL.LLLLLL.LL.LLLL.LLLLL.L.LLL.LLLLLLLL.LLLLLL.LLLL.LLLLLLLLLLLLLLLLL.LLL.LLLLLL.LLLLLLLLLL
LLLLLLLLLLLLLLLLLL.LL.L.LLLLL.LLLLL.LLLLLLLLLLLLLLL.LLLLLLLLL.LLLLL.L.LLLLLLLL.LLLLLL.LLLL.LLLLL
..LL...LL..LLL.L...L....L.L...L.L.L...L.LL.L........L.L..L...L..L.L.LL.L.L..L..LLLL..L..L..L...L
LL.LLLLL.LLLLLLL.LLLL.L.LLLLL.LLLLL.LLLL.LLLLLLLLLL.LLLLLLLLLLLLLLLLL.L.LLLLLLLLLLLLL.LL.LLLLLLL
LLLLLLLLLLLLLLLLLL.LLLL.LLLLLLLLLLLLLLLLLLLL.LLLLLL.LLLLLLLLLLLLLLLLL.LLLLLLLL.LLLLLL.LLL.L.LLLL
LLLLLLLLLLLL.LLLLLLLLLL.LLLLL.LLLLL.LLLLLLLL.LLLLLL.LLLLLLLLL.LLLLLLLL.LLLLLLL.LLLLLLLLLLLLLLLLL
LLLL.LLL.LLLLLLLLL.LL...LLL.L.LLLLLLLLLLLLLL.LLLLLL.LLLLLLLLLLLLLLLLL.LLLLLLLL.LLLLLL.LLLLLLLLLL
LLLLLLL.L.LLLLLLLL.LLLL.LLLL.LLLLLLLLLLLLLL...LLLLL.LLLLLLLLL.LLLLLLL.LLLL.LLLLLLLLLL.LLLLLLLLLL
LLLLLLLLLLLLLLLLLL.LL.L.LLLLL.LLLLL.LLLLLLLL.LLLLLLLLLLLLLLLLLLLL.L.L.LLLLLLLL.LLLL.LLLLLLLLLL.L
LLLLLLLL.LLLLLLLL..LLLL.LLLLLLLLLLLLLLLLLLLL.LLLLLL.LL.LLLLLLLL.LLLLLLLLLLLLLL.LLLLLLLLLLLLLLLL.
...L......L....L...LLLL.LLLLL.L..LL.L........LL...L.L.LLLLLLLLLL.LL.LLLL...L....L.....L....LL...
LLLL.LLLLLLLLLLLLL..L.L.LLLLLLLLLLLLLLLLLL.L.LLLLLL.LLLLLLL.L.LLLLLLL.LL.LLLLL.LLLLLL.LLLLLLLLLL
LLLLLLLL.LLLLL.LLL.LLLL.LLLLLLLLLLL.LLLLLLLL.LLLLLLLLLLLLLLLL.LLLLLLL.LLLLL.LL.LLLLLLLLLLLLLLLLL
LLLLLLLLLLL.LLLLLL.LLLL.LLLLLLLLL.L.LLLLLLLL.LLLLLLLLLLLLLLLL..LLLLLL.LLLLLLLLLLLLLLLLLLLLLL.LLL
LLLLLLLLL.LLLLLLLL.LLL..LLLLLLLLLLL.LLLLLLLLLLLLLLL.LLLLLLLLL.LLLLLLL.LLLLLLLL.LLLLLL.L.LLLLLLLL
LLL.LLLL.LLLLL.LLL..LLL.LLLL..LLLLL.LLLLLLLL.LLLLLLLLLLLLLLLLLLLLLLL...LLL.LLL.LLLLLL.LLLLLLLLLL
LLLLLLLL.LLLLLLLLL.LLLL.LLLLL.LLLLL.LLLLLLLLLLLLLLL.LLLLLLLLL.LLLLLLL.LLLLLL.LLLLLLLL.LLLLLLL.LL
L.L.L.L.L.L....L.LL.L...LL......LL.LL...LLL....L..L..LL.LL.L.L..L..LL.L...LLL.....LLLL.....L....
LLLLLL...LLLLLLLLL..LLL.LLLLL.LLL.LLLL.LLLLL.LLLLLLLLLLLLLLLL.LLLLLLL.LLLLLLLL.LLLLLL.LLLLLLL.LL
LLLLLLLLLLLLLLLLLL.LLLLLLLLLL.LLLLL.LLLLLLLL.LLLLL..LLLLLL.LL.LLLL..L.LLLLLLLL.LLLLL.LLLLLLLLLLL
LLLLLLLL.LLLLLLLLL.LLLL.LLLLL.L.LLL.LLLLLLLL.LLLL.L.LLLLLLLLL.LLLLLLL.LLLLLLLL.LLLLLLLLLLLLLLLLL
LLLLLLLL.LLLLL.LL..LLLL.LLLLL.LLLLLLLLLLLLLL.LLLLLLLLLLLLLLLL.LL.LLLL.LLLLL..L.L.LLLL.LLLLLL.LLL
LLLLLLLL.LLL.LLLLL.LLLLLL.LLL.LLLLLLLLLLLLLLLLLLLLL.LLLLLLLLL.LLLLLLL.LLLLLLLL.L.LLLLL..LLLLLLLL
LLLLLLLLLLLLLL.LLL..LLL.LLLLLLLLLLLLLLLLLLLL.LLLLLL.LLLLLLL.L.LLLLLLL.LLLLLLLL.LLLLLLLLLLLLLLLLL
L.LLLLLL.LLLLLLLLL.LLLL.LLLLLLLLLLL.LLL.LLLL.LLLLLL.LLLLLLLLLLLLLLLLL.LLLLLLLL..LLLLL.LLLL.LLLLL
LLLL.L....L.L.LL.LLLL...LL....L.L..L....L...LLL..L..LLLL...L..L.L.L....L..L.LL.L.L...L...L....L.
L.LLLLLL.LLLLLLLLL.LLL..LLLLL.LLLLL.LLLLLLLLLLLLLLL.LLLLLLLLL.LLLLLLLLLLLLLLLL.LLLLLLLLLLLLLLLLL
LLLLLLLL.LLLLLLL.LLLLLL.LLLLL.LLLLL.LLLLLLLL.LL.LLLL.LLLLL.LL.L.LL.LL.LLLLLLLLLLLLLLL.LLLLLLLLLL
LLLLLLLLLLLLLLLLLL..LLL.LLLLL.LLLLL.LLLLLLLLLLLLLLL.LLLLLLLLLLLLLLLLL.LLLLLLLLLLLLLLL.LLLLLLLLLL
LLLLLLLL.LLLLLLLLL.LLLL..LLLLLLLLLLLLLLLLLLLLLLLLLL.LLLLLLLLLLLLLL.LL.LLLL.LLLLLLLLLLL.LLLLLLLLL
LLLLLLLL.LLLLLL.LL.LLLL.LLLLLL.L.LL.LLLLLLLL.LLLL.L.LLLLLLLLL.LLLLLLL.LLLLLLLLLLLLLL.LLLLLLLLLLL
LLLLLLLL.LLL.LLLLL.LLLLLLLLLLLLLLLL.LLLLLL.LLLLLL.LLLLLLLLLLL.LLLLLLL.LLLLLLL..LLLLLLLLLLLLLLLLL
.L.L..L....L...........L.LL....L.......L..L.LL..L.L........L..L.............L.L....LL.LLL..L.LL.
LLLLLLLL.LLLLLL.LL.LLLL.LLLLL.LLLLL.LLLLLLLL.LLLLLLLLLL.LLLLLLLLLLLLL.LLLLLLLLLLLLLLLLLLLLLLLLLL
LLLLLLLL.LLLLLLLLLLLLLL.LLLLL.LLLLL.LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL.LLLLLL.L.LLL.LL.LLLLLLLLLL
LLLLLLLLLLLL.LLLLL.LLLL.LLLLLLLLLLL.LLLLLLLLLLLLLL..LLLLL.LLL.LL.LLLL.LLLLLLLL.LLL.LLLLLLLLLLLLL
LLLLLLLLLLLLLLLLLL.LLLL.LL.LLL..LLLLLLLLLLLL.LLLLLLLLLL.LLLLL.LLLLLLL.LLLLLLLL..LL.LL.LLL.LL.LLL
........L...L....LL.....LL..L.....LL.LLLL.LL.LLL.....LLL.....LL.L..LLL.....LL.............L....L
LLL.LLLL.LLLLLLLLLL.LLL.LLLLL.LLLLLLLLLLLLLLLLLLLLL.LLLLLLLLL.LLLLLLL...LLLLLL.L.L.LL..LLLLLLLLL
LLLLLLLLLL.LL.LLLLLLLLL.L.LLL.LLLLL.LLLLLLLL..LLLLLLLLLLLLLLLLLLLLL...LLLLLLLL.LLLLLL.LLLLLLLLLL
.LLLLLLL.LLLLLLLLL.LLLL.LLLLLLL.LLLL.LL..LLL.LLLLLLLLL.LLLLLL.LL.L.LL.LLLLLLLLLLLLLLLLLLLLLLLLLL
LLLLLLLL.LLLLL.LLL.LLLLL.LLL.LLLLLL.LLLLL.LL.LLLLLL.LLLLLLLLLLLLLLLLLLLLLLLLLL.LLLLLLLL.LLLL.LLL
LLLLLLLL.LLLLLLLLL.LLLLLLLLLLLLLLLL.LLLLLLLL.LL.LLL.LLLLLLLL..LLLLLLL.LLLLLLLL.LLLLLL.LLLLLLLLLL
LLLL.LLL.LLLLLLLLLLLLLLLLLLL.LLLL.L.LLL..LLLL.L.LLL.LL.L.LL.L.LLLLLLL.LLLLLLLL.LLLL.L.L.LLLLLLLL
LLLLLLLL.LLLLLLLLL.LLLLLLLLLL.LLLLL.LLLLLLLLLLLLL.L.LL.LLLLLL.L.LLLLLLLLLLLLLL.LLLLLL.LLLLLLLLLL
LLL.LLLL.LLLLLLL.L.LLLLLLLLLL.LLLLL..LLL.LL..LLLLLL.LL.LLLLLL.LLLLLLL.LL.LLLLLLLLLLLL.LLLLLLLLLL
.L.....L...L.......L...L....L....L..L..LLL.....L............L..LL.L...L.L.L..LL...LLL..L.L.L....
LLLLLLLL.LLLLL.LLLLLLLLLLLLLLLLLLLL.LLLLLLLLLLLLLLL.LLLLLLLLL.LLLLLLL.LLLLLLLL.LLLLLL.LLLLLLLLLL
.L.LLLLLLLLLLLLLLL.LLLL.LLLLLLLLLLLLLLLLLLL.LLLLLLLLLL..LLLLL.LLLLLLL.LLLLLLLL.LLLLLLLLLLLLLLLLL
LLLLLLLLLLLLLLLL.L.LLLLLLLLLL.LLLLLLLLL.LLLL.LLLLLL.LLLLLLL.L.LLLLLL.LLLLLL.LL.LLLLLL.LLLLLL.LLL
LL.LLLLL.LLLLLLLLL..LLL.L.LLL.LLLLL.L.LLL.LL.LLLLLL.LLLLLLLLL.LLLLLL..LLL.LLLL.LLLLL.LLLLLLLLLLL
.L...LLL.....L.....LLL....LLLL.L.LL....L...L...L.L.L....L.LLLL...L.L....L.....LL.L.....L..L.L...
LLLLL.L...LLLLLLLL.LLLLLLLLLL.LLLLLL.LLLLLLL.LLLLLLLLLLLLLLLL.LL.LLLL.L.LLLLLL.LLLLLL.LLLL.LLLLL
LLLL.LLL.LLLLLLLLLLLLLLLL.LLL.LLLLL.LLLLLLLLLLLLLLL.LLLLLLLLLLL.LLLLL.L.LLLLLL.LLLLLLLLLLLLLLLLL
LLLLLLLLLLLLLLLLLLLL.LLLLLLLL.LLLLLLLLLLLLLLLLLLL.L.LLLLLLL.L.LLLLLLL.LLLLLLLLLLLLLLLLLLLLLLLLLL
LLLLLLLLLLLLLLLLLL.LLLL.LLLLLLLLLLLLLLLLLLLL.LLLLLLLLLLLLLLLLLLLL.LLLLLLLLLLLL.LLL.LL.LLLLLLLLL.
..L..................LL..LL....L.....L..L..L.L...LLLL......L.L.L......L..L....LLLL.L...L....LL..
LLLLLLLL.LLLLLLL..LLLLL.LLLL.LLLLLL.LLLLLLLL.LLLLLL.L.LLLLLLL.LLL.LLLLLLLLLLLL.LLLLLL.LLLLLLLLLL
LLLLLLLL.LLLLLLLL.LLLLL.LLLLL.LLLLLLLLLLLL.L.LLLLLL..LLLLLLLL.LLLLLLL.LLLLLLLL.LLLLLL.LLLLLLLLLL
LLLLLLLL.LLLLLLLLL.LLLL.LLLLLLLLLLLLLLLLLLLL.LLLLLL.LLLLLLLLLLLL.LLLLLLLLL.LLL.LLLLLL..LLLLLLL.L
LLLLLLLLLLLLLLLLLL.LLLL.LLLLL.LL.LLLLLLLLLLL.LLLLLL..LLLLLL.LLLLLLLLL..LL.LLLL.LLLL.L.LLLLLLLLLL
LLLLLLLL.LLLLLLL.LLLLLL.LLLLLLLL.LLLLLLLLLLL.LLL.LLLLLLLLLL.LLLLLLLLL.LLLLLLLL.LLLLLLLLLLLLLLLLL
L.LLL.LL.LLLL.LLL..LLLL.LLLLLLLLLLL.LLLLLLLL.LLLLLLLLLLLLLLLL.LLLLLLLLLLLLLLLL.L.LL.LLLL.LLLLLLL
LLLLLLLL.LLLLLLLLL.LLLL.LLLLLL..LLL.LLLLL.LL.LLLLLL.LLLLLLLLL.LLLLLLL.LLLLLLLLLL.LLLL.LLLLLLLLLL
LLLLLLLL.LLLLLLLLL..LLLLL.LL..LLLLLLLLLLL.LLLLLLLLLLL.LLLLLLLLL.LLLLL.LLLLLLLLLLLLLLLLLLLLLLLLLL
LLLLLLLLLLLLLLLLLL..LLL.LLLLL.LLLLL.LLLLLLLL.LLLLLL..L.LLLLLLLLLLLLLL.LLLLLLLL.LLLLLLLLLLLLLLLLL
LLLLLLLLLLLLLLLLLLLLLL.LLLLLL.LLLLL.LLLLLLLL.LLLLLL.LLLLL.LLL.LLLLLLL.LLLLL.LL.LLLL.L.LLLLLLLLLL
LLL.LLLL.LL.LLLLLLLLLLL.LLLLLLLLLL..LLLLLLLL.LL.LLLLL.LL.LLLLLLLLLLLLLLLLLLLLLLLLLLL..LLLLLLLLLL
LLLLLLLL.LLLLLLLLL.LLLL.LLLL..LLLLL.LLLLLLLL.LLLLLL.LLLLLLLLL.LLLLLLLLLLLLLLLL.LLLLLLLLLL.LLLLLL
INPUT

EMPTY = 'L'
OCCUPIED = '#'
FLOOR = '.'

map = input.split("\n").map {|r| r.split("")}

def adjacent_seats(map, r, c)
	max_r = map.length
	max_c = map[0].length
	adj = []
	((r-1)..(r+1)).each do |curr_r|
		((c-1)..(c+1)).each do |curr_c|
			next if curr_c < 0 || curr_c >= max_c
			next if curr_r < 0 || curr_r >= max_r
			next if curr_r == r && curr_c == c
			seat = map[curr_r][curr_c]
			adj << seat
		end
	end
	adj
end

def duplicate_map(map)
	new_map = []
	map.each do |row|
		new_map << row.dup
	end
	new_map
end

def can_be_occupied?(map, r, c)
	seat = map[r][c]
	return false unless seat == EMPTY
	adjacent_seats(map,r,c).none?{|s| s == OCCUPIED}
end

def can_be_emptied?(map, r, c)
	seat = map[r][c]
	return false unless seat == OCCUPIED
	adjacent_seats(map,r,c).count{|s| s == OCCUPIED} >= 4
end

def equal?(map1, map2)
	map1.each_with_index do |row, r_idx|
		row.each_with_index do |col, c_idx|
			return false if map2[r_idx][c_idx] != map1[r_idx][c_idx]
		end
	end
	true
end

def part1(map)
	new_map = nil
	while true
		new_map = duplicate_map(map)
		map.each_with_index do |row, r_idx|
			row.each_with_index do |col, c_idx|
				if can_be_occupied?(map, r_idx, c_idx)
					new_map[r_idx][c_idx] = OCCUPIED
				elsif can_be_emptied?(map, r_idx, c_idx)
					new_map[r_idx][c_idx] = EMPTY
				else
					new_map[r_idx][c_idx] = map[r_idx][c_idx]
				end	
			end
		end
		break if equal?(map, new_map)
		map = new_map
	end

	occ = 0
	map.each do |row|
		puts row.join("")
		row.each do |val|
			occ += 1 if val == OCCUPIED
		end
	end

	puts "#{occ} occupied seats"
end

puts "Part 1"
part1(map)


def occupied_seats_seen(map, r, c)
	seen = 0
	%w(N NE E SE S SW W NW).each do |direction|
		seen += 1 if occupied_seat_seen_in_direction?(map, r, c, direction)
	end
	seen
end

def valid_coords?(map, r, c)
	max_r = map.length
	max_c = map[0].length
	r >= 0 && c >= 0 && r < max_r && c < max_c
end

def occupied_seat_seen_in_direction?(map, r, c, direction)
	while true
		r = r - 1 if direction.include? "N"
		r = r + 1 if direction.include? "S"
		c = c + 1 if direction.include? "E"
		c = c - 1 if direction.include? "W"
		break if !valid_coords?(map, r, c)
		if map[r][c] == OCCUPIED
			return true
		elsif map[r][c] == EMPTY
			return false
		end
	end
	false
end


def part2(map)
	new_map = nil
	while true
		new_map = duplicate_map(map)
		map.each_with_index do |row, r_idx|
			row.each_with_index do |col, c_idx|
				current_seat = map[r_idx][c_idx]
				if current_seat == OCCUPIED
					if occupied_seats_seen(map, r_idx, c_idx) >= 5
						new_map[r_idx][c_idx] = EMPTY
					end
				end
				if current_seat == EMPTY
					if occupied_seats_seen(map, r_idx, c_idx) == 0
						new_map[r_idx][c_idx] = OCCUPIED
					end
				end
			end
		end
		break if equal?(map, new_map)
		map = new_map
	end

	occ = 0
	map.each do |row|
		row.each do |val|
			occ += 1 if val == OCCUPIED
		end
	end

	puts "#{occ} occupied seats"
end

puts "Part 2"
part2(map)
