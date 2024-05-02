# Notes
Powered by the excellent book __Mazes for Programmers__ by Jamis Buck.

## Build
First, initialize the project with bundler.
```
>> bundle init
```

Then, add the following dependencies to the __Gemfile__.
```
gem 'rspec'
```

Finally, run the command:
```
>> bundle install
```

## Run
```
>> ruby -I . binary_tree_demo.rb
```
`-I .` is used to add the current directory to the load path.

## Project
- `Cell` is the basic unit of the maze. It has a row and column index, and it can be linked to other cells in the maze. `Cell` can call `distance_` methods to calculate the distance to other cells.
- `Grid` is a collection of cells. It can be used to generate a maze. It has `to_s` and `to_png` methods to visualize the maze.  
- `DistanceGrid` is a subclass of `Grid` that can visualize the distances of the cells in the maze. It has `distances` field (of type `Distances`) to store the distances.
- `Distances` is a collection of distances from a root cell to other cells in the maze. It does not care how the distances are calculated. It has `path_to` and `max` methods to get the path to a cell and the maximum distance, respectively.
- `BinaryTree` and `Sidewinder` are maze generation algorithms that can be used to generate mazes.

## Maze Generation Algorithms
### Basic Concepts
- Perfect maze  
A perfect maze is a type of maze that has exactly one path between any two points within it. This means there are no loops or multiple paths to the same point, ensuring that there is a single, unambiguous solution.

### Binary Tree
#### Description
Iterate over each cell in the grid. For each cell, randomly decide to carve a passage either north or east.

#### Texture
- The northern row and eastern column are always unbroken corridors.
- Starting from southwest to northeast is easier than starting from northwest to southeast.

### Sidewinder
#### Description
Iterate over each row in the grid. For each row, iterate over each cell. Make a random decision about whether to continue carving to the east. If not, randomly choose a cell from the current run and carve north. A run is a sequence of previous cells in the row that have been carved to the east.

#### Texture
- The northern row is always an unbroken corridor.
- Starting from south to north is easier than starting from north to south.
