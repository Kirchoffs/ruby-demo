require 'distance_grid'
require 'binary_tree'

grid = DistanceGrid.new(5, 5)
BinaryTree.on(grid)

start = grid[0, 0]
distances = start.distances_bfs

puts "distances:"
grid.distances = distances
puts grid
puts

puts "path from northwest corner to southwest corner:"
grid.distances = distances.path_to(grid[grid.rows - 1, 0])
puts grid
puts

puts "reversed distances:"
grid.distances_bfs(4, 4)
puts grid
