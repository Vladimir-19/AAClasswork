module Slideable


  def moves
    #this method is adding moves to the full moves array
    possible_moves = []
    #depending on the piece, we will take the appropriate DIR_ARRAY and iterate
    #through each direction adding it to the full moves array until we hit an
    #invalid move, then we will go to the next element . . . until all possible
    #moves have been found
    dx, dy = dir
    grow_unblocked_moves_in_dir(dx, dy)
  end

  HORIZONTAL_DIRS = ["L"[0, -1], "U"[1, 0], "R"[0, 1], "D"[-1, 0]]
  DIAGONAL_DIRS = ["DL"[-1, -1], "DR"[-1, 1], "UR"[1, 1], "UL"[1, -1]]
  possible_moves = []


  private 

  def move_dirs(subclass)
    #if rook 
#      HORIZONTAL_DIRS
#   elsif bishop 
#     DIAGONAL_DIRS
#   else 
#     HORIZONTAL_DIRS + DIAGONAL_DIRS
#   end
  end

  def grow_unblocked_moves_in_dir(dx, dy)
    #keep adding the array in the direction until pos is not valid
    valid_moves = []

    cur_x, cur_y = pos
    library.each do |(dx, dy)|
      new_pos = [cur_x + dx, cur_y + dy]

      if new_pos.all? { |coord| coord.between?(0, 7) }
        valid_moves << new_pos
      end
    end

    valid_moves
  end

end