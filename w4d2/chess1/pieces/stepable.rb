module Stepable

  def self.valid_moves(pos)
    valid_moves = []

    cur_x, cur_y = pos
    MOVES.each do |(dx, dy)|
      new_pos = [cur_x + dx, cur_y + dy]

      if new_pos.all? { |coord| coord.between?(0, 7) }
        valid_moves << new_pos
      end
    end

    valid_moves
  end


  private


  KING = ["UL"[1, -1], "U"[1, 0], "UR"[1, 1], "R"[0, 1],
          "DR"[-1, 1], "D"[-1, 0], "DL"[-1, -1], "L"[0, -1]]

  KNIGHT = [
    [-2, -1],
    [-2,  1],
    [-1, -2],
    [-1,  2],
    [ 1, -2],
    [ 1,  2],
    [ 2, -1],
    [ 2,  1]
  ]

end