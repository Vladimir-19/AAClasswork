require "colorize"
require_relative "cursor"

class Display
     attr_reader :board, :cursor

    def initialize(board)
        @board = board
        @cursor = Cursor.new(cursor_pos, board)
    end

    def render 

    end

end