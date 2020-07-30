module Stepable
  #require 'buybug'
 # KING 
  # KNIGHT 
  def moves(pos)
    valid_moves = []
    move_diffs.each do |(dx, dy)| #???????
    cur_x, cur_y = pos
    new_pos = [cur_x + dx, cur_y + dy]

    while board.valid_pos?(new_pos)
      if board.empty?(new_pos)
        valid_moves << new_pos
      elsif board[pos].color != color
        valid_moves << pos
      end
    end
  end
  
    valid_moves
  end

  private

  def move_diffs
    # subclass implements this
    raise NotImplementedError
  end
 
end