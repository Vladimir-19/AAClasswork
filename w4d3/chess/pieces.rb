class Piece
    attr_reader :piece

    def initialize(color, board, position)
        @color = color
        @board = Board.new
        @position = position
    end

    def to_s
      self.symbol
    end

    def empty?
        
    end

    def valid_moves
    
    end

    def pos=(val)

    end

    def symbol

    end

    def move_into_check?(end_pos)
    
    end

end