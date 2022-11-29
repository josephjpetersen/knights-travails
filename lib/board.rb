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
    print_knight_moves(path, start, destination)
  end

  def make_tree(start, destination)
    queue = [Knight.new(start)]
    current = queue.shift
    until current.position == destination
      current.next_moves.each do |move|
        current.children << knight = Knight.new(move, current)
        queue << knight
      end
      current = queue.shift
    end
    current
  end

  def make_path(current, path, start)
    until current.position == start
      path << current.position
      current = current.parent
    end
    path << current.position
  end

  def print_knight_moves(path, start, destination)
    puts "You made it in #{path.size} moves."
    puts "To get from #{start} to #{destination} you must traverse the following positions:"
    path.reverse.each { |move| puts move.to_s }
  end
end
