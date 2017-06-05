require_relative 'board.rb'
class Knight
  

  def knight_moves(start, finish)
    #If one of the first two are not arrays then ruby wont get to the .length statements
    #Meaning I wont get a error for calling .length on !array object.. :))
    if (start.is_a? Array) && (finish.is_a? Array) && (start.length == 2) && (finish.length == 2)
      moves = generate_moves_tree start
      puts "You went from start([#{start[0]},#{start[1]}] to finish([#{finish[0]},#{finish[1]}] in: #{bfs_moves(moves,finish).length-1} move(s)!"
      puts bfs_moves(moves,finish)

    else
      puts "Please input a valid input."
    end
  end

  def generate_moves_tree start
    moves = Board.new(start, start)
  end

  def bfs_moves(moves, finish)
    q = Queue.new
    q << moves
    x = []
    until q.empty?
      current = q.pop
      if current.pos == finish
        while current != nil
          x.unshift("[#{current.pos[0]},#{current.pos[1]}]")
          current = current.parent
        end
        return x
      end
      current.valid_moves.each_with_index do |value, index|
        if current.valid_moves[index] != nil
          q<<current.valid_moves[index]
          current.valid_moves[index].parent = current
        end
      end

    end
    return nil
  end
end
