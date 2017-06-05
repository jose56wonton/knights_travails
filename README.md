# Knights_travails

This Project is based off the concept of finding the shortest path for a knight
to travel in a game of chess. As you probably know knights can and must travel
2 spaces in one direction and 1 space in the other direction when the player moves
them. This is where the complexity comes in.

The project has four files:
* `board.rb` is the foundation of what this project was based on. I would compare
it to the Node class for a linked list or binary tree. When a Board object is created
a method called `generate_valid_moves` created a tree of valid moves(not the original
  and within the grid)
* `knight.rb` has a main method(knight_moves) which firstly get the tree of valid moves
described above for its starting location, and then secondly does a Breadth First
Search of this tree for the final location to get the shortest route possible.
* `test.rb` can be edited easily but comes with three default demonstrations.

Use `ruby test.rb` to start the project.

This project is part of [TheOdinProject's](http://www.theodinproject.com) Ruby track.
The project itself can be seen [here](https://www.theodinproject.com/courses/ruby-programming/lessons/data-structures-and-algorithms)!
