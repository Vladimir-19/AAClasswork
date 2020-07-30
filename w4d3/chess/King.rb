require_relative 'piece'
require_relative 'stepable'

class King < Piece
  include Stepable

  def symbol
    '♚'.colorize(color)
  end

  protected
  def move_diffs
    # return an array of diffs representing where a King can step to
    [[-1, -1], [-1, 0], [-1, 1], [0, -1], [0, 1], [1, -1], [1, 0], [1, 1]]
  end
end

  # KING = ["UL"[1, -1], "U"[1, 0], "UR"[1, 1], "R"[0, 1],
  #         "DR"[-1, 1], "D"[-1, 0], "DL"[-1, -1], "L"[0, -1]]