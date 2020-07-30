require_relative "piece"
require_relative "null_piece"

class Board 

  attr_reader :grid

  def initialize(fill_board = true)
    @sentinel = NullPiece.instance
    make_starting_grid(fill_board)
  end

  def [](pos)
    raise 'invalid pos' unless valid_pos?(pos)

    row, col = pos 
    @grid[row][col]
  end

  def []=(pos, piece)
    raise 'invalid pos' unless valid_pos?(pos)
    
    row, col = pos 
    @grid[row][col] = piece
  end
  
  def empty?(pos)
    self[pos].empty?
  end

  def add_piece(piece, pos)
    raise "position is occupied" unless empty?(pos)

    self[pos] = piece
  end
  
  def valid_pos?(pos)
    row, col = pos
    row.between?(0, 7) && col.between?(0, 7)
  end
  
  def dup
    duped = Board.new(false)

    pieces.each do |piece|
      piece.class.new(piece.color, duped, piece.pos)
    end

    duped
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

  private

  attr_reader :sentinel

  def fill_back_row(color)
    back_pieces = [
      Rook, Knight, Bishop, Queen, King, Bishop, Knight, Rook
    ]

    i = color == :white ? 7 : 0
    back_pieces.each_with_index do |piece_class, j|
      piece_class.new(color, self, [i, j])
    end
  end

  def fill_pawns_row(color)
    i = color == :white ? 6 : 1
    8.times { |j| Pawn.new(color, self, [i, j]) }
  end

  def make_starting_grid(fill_board)
    @rows = Array.new(8) { Array.new(8, sentinel) }
    return unless fill_board
    %i(white black).each do |color|
      fill_back_row(color)
      fill_pawns_row(color)
    end
  end
end

# a = Board.new
# a.add_piece(:black, self.grid, [0,0])
# a.add_piece(:white, self.grid, [7,7])

