input = <<~INPUT
##...#.#
####.#.#
#...####
..#.#.#.
####.#..
#.#.#..#
.####.##
..#...##
INPUT

ACTIVE = '#'
INACTIVE = '.' 

def init_grid
  Hash.new {|h,k| h[k] = Hash.new {|h2,k2| h2[k2] = Hash.new(INACTIVE) }}
end

def neighbors(x,y,z)
  ns = []
  xs = [x-1,x,x+1]
  ys = [y-1,y,y+1]
  zs = [z-1,z,z+1]
  xs.each do |xx|
    ys.each do |yy|
      zs.each do |zz|
        next if xx == x && yy == y && zz == z
        ns << [xx,yy,zz]
      end
    end
  end 
  ns
end

# initialize grid
grid = init_grid

# fill with starting amounts
input = input.split("\n").map {|r| r.split("")}
z = 0
input.each_with_index do |row, y|
  row.each_with_index do |val, x|
    grid[x][y][z] = val
    neighbors(x,y,z).each do |nx,ny,nz|
      grid[nx][ny][nz] = INACTIVE unless grid[nx][ny][nz] == ACTIVE
    end
  end
end

require 'pry'

# do cycles
6.times do |i|
  puts "Cycle #{i+1}"
  new_grid = init_grid

  coords = []

  grid.each_pair do |x, x_grid|
    x_grid.each_pair do |y, y_grid|
      y_grid.each_pair do |z, value|
        coords << [x,y,z]
      end
    end
  end

  coords.each do |x,y,z|
    value = grid[x][y][z]
    neighbors = neighbors(x,y,z)
    num_neighbors_active = neighbors.count do |n| 
      grid[n[0]][n[1]][n[2]] == ACTIVE
    end
    is_active = value == ACTIVE
    if is_active && (num_neighbors_active == 2 || num_neighbors_active == 3)
      new_grid[x][y][z] = ACTIVE
      neighbors(x,y,z).each do |nx,ny,nz|
        new_grid[nx][ny][nz] = INACTIVE unless new_grid[nx][ny][nz] == ACTIVE
      end
    elsif is_active
      new_grid[x][y][z] = INACTIVE
    elsif !is_active && num_neighbors_active == 3
      new_grid[x][y][z] = ACTIVE
      neighbors(x,y,z).each do |nx,ny,nz|
        new_grid[nx][ny][nz] = INACTIVE unless new_grid[nx][ny][nz] == ACTIVE
      end
    else
      new_grid[x][y][z] = INACTIVE
    end
  end
  grid = new_grid
end

# count num active
num_active = 0
grid.each_pair do |x, x_grid|
  x_grid.each_pair do |y, y_grid|
    y_grid.each_pair do |z, value|
      num_active += 1 if value == ACTIVE
    end
  end
end

puts "Part 1"
puts num_active