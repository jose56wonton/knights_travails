class Board
  attr_accessor :original, :pos, :valid_moves, :parent

  def initialize (arr, original, count = 0)

    @pos = arr
    @original = original

    @parent = nil
    @count = count
    @valid_moves = generate_valid_moves
  end

  def generate_valid_moves
    if @count > 4

      return [nil,nil,nil,nil,nil,nil,nil,nil]
    else
      row = @pos[0]
      col = @pos[1]

      list = []

      list[0] = Board.new([row + 2,col + 1],@original,@count+1) if [row + 2,col + 1] != @original && row + 2 < 8 && col + 1 < 8
      list[1] = Board.new([row + 1,col + 2],@original,@count+1) if [row + 1,col + 2] != @original && row + 1 < 8 && col + 2 < 8
      list[2] = Board.new([row - 2,col + 1],@original,@count+1) if [row - 2,col + 1] != @original && row - 2 > 0 && col + 1 < 8
      list[3] = Board.new([row - 1,col + 2],@original,@count+1) if [row - 1,col + 2] != @original && row - 1 > 0 && col + 2 < 8
      list[4] = Board.new([row + 2,col - 1],@original,@count+1) if [row + 2,col - 1] != @original && row + 2 < 8 && col - 1 > 0
      list[5] = Board.new([row + 1,col - 2],@original,@count+1) if [row + 1,col - 2] != @original && row + 1 < 8 && col - 1 > 0
      list[6] = Board.new([row - 2,col - 1],@original,@count+1) if [row - 2,col - 1] != @original && row - 2 > 0 && col - 1 > 0
      list[7] = Board.new([row - 1,col - 2],@original,@count+1) if [row - 1,col - 2] != @original && row - 1 > 0 && col - 1 > 0

      list

    end
  end


end
