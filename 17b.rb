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
  Hash.new {|h,k| h[k] = Hash.new {|h2,k2| h2[k2] = Hash.new {|h3,k3| h3[k3] = Hash.new(INACTIVE) } }}
end

def neighbors(x,y,z,w)
  ns = []
  xs = [x-1,x,x+1]
  ys = [y-1,y,y+1]
  zs = [z-1,z,z+1]
  ws = [w-1,w,w+1]
  xs.each do |xx|
    ys.each do |yy|
      zs.each do |zz|
        ws.each do |ww|
          next if xx == x && yy == y && zz == z && ww == w
          ns << [xx,yy,zz,ww]
        end
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
w = 0
input.each_with_index do |row, y|
  row.each_with_index do |val, x|
    grid[x][y][z][w] = val
    neighbors(x,y,z,w).each do |nx,ny,nz,nw|
      grid[nx][ny][nz][nw] = INACTIVE unless grid[nx][ny][nz][nw] == ACTIVE
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
      y_grid.each_pair do |z, z_grid|
        z_grid.each_pair do |w, _|
          coords << [x,y,z,w]
        end
      end
    end
  end

  coords.each do |x,y,z,w|
    value = grid[x][y][z][w]
    neighbors = neighbors(x,y,z,w)
    num_neighbors_active = neighbors.count do |n| 
      grid[n[0]][n[1]][n[2]][n[3]] == ACTIVE
    end
    is_active = value == ACTIVE
    if is_active && (num_neighbors_active == 2 || num_neighbors_active == 3)
      new_grid[x][y][z][w] = ACTIVE
      neighbors(x,y,z,w).each do |nx,ny,nz,nw|
        new_grid[nx][ny][nz][nw] = INACTIVE unless new_grid[nx][ny][nz][nw] == ACTIVE
      end
    elsif is_active
      new_grid[x][y][z][w] = INACTIVE
    elsif !is_active && num_neighbors_active == 3
      new_grid[x][y][z][w] = ACTIVE
      neighbors(x,y,z,w).each do |nx,ny,nz,nw|
        new_grid[nx][ny][nz][nw] = INACTIVE unless new_grid[nx][ny][nz][nw] == ACTIVE
      end
    else
      new_grid[x][y][z][w] = INACTIVE
    end
  end
  grid = new_grid
end

# count num active
num_active = 0
grid.each_pair do |x, x_grid|
  x_grid.each_pair do |y, y_grid|
    y_grid.each_pair do |z, z_grid|
      z_grid.each_pair do |w, value|
        num_active += 1 if value == ACTIVE
      end
    end
  end
end

puts "Part 2"
puts num_active