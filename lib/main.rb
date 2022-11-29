require_relative 'board'

knight = Knight.new([3, 4])

p knight.position
next_moves = knight.next_moves
p next_moves
