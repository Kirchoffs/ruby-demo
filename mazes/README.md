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

## Maze Generation Algorithms
### Binary Tree
#### Description
Iterate over each cell in the grid. For each cell, randomly decide to carve a passage either north or east.

### Sidewinder
#### Description
Iterate over each row in the grid. For each row, iterate over each cell. Make a random decision about whether to continue carving to the east. If not, choose a cell from the current run and carve north. A run is a sequence of previous cells in the row that have been carved to the east.
