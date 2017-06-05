require_relative 'knight.rb'

Lancalot = Knight.new

#easy
Lancalot.knight_moves([0,0],[0,0])
#medium
Lancalot.knight_moves([3,3],[4,3])
#hard
Lancalot.knight_moves([0,0],[6,7])
