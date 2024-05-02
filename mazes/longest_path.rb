require 'distance_grid'
require 'binary_tree'

grid = DistanceGrid.new(5, 5)
BinaryTree.on(grid)

start = grid[0, 0]
distances = start.distances_bfs
new_start, distance = distances.max

new_distances = new_start.distances_bfs
goal, distance = new_distances.max

grid.distances = new_distances.path_to(goal)
puts grid
