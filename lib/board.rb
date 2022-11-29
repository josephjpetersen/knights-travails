# frozen_string_literal: true

require_relative 'knight'


# Class defining the chess board
class Board
  def initialize
  end

  def knight_moves(start, destination)
    current = make_tree(start, destination)
    path = []
    make_path(current, path, start)
  end

  def make_tree(start, destination)
    queue = [Knight.new(start)]
    current = queue.shift
  end
end
