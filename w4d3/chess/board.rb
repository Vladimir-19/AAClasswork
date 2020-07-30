require_relative "piece"

class Board 

    def initialize
        @rows = Array.new(8){Array.new(8)}
    end

    def [](pos)
        row, col = pos 
        @rows[row][col]
    end

    def []=(pos, arg)
        row, col = pos 
        @rows[row][col] = arg
    end

    def add_piece(piece, pos) 
        self[pos] = Piece.new(piece)
    end

    def valid_pos?(pos)
      row, col = pos
      row.between?(0, 7) && col.between?(0, 7) 
    end

    def move_piece(start_pos, end_pos)
      if !valid_pos?(start_pos)
        raise "not valid starting position"
      elsif !valid_pos?(end_pos)
        raise "not valid ending position"
      else
        self[end_pos] = self[start_pos] 
        self[start_pos] = nil
      end
    end

    def dup
      array =  
      self.each_index { |i| array << self[i].dup }
      array
    end

end

a = Board.new
a.add_piece(:Q,[0,0])
a.add_piece(:K,[7,7])

