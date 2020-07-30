module Slideable

  HORIZONTAL_DIRS = [
    [ 0, -1], # left
    [ 0,  1], # right
    [ 1,  0], # up (vertical)
    [-1,  0]  # down (vertical)
  ].freeze

  DIAGONAL_DIRS = [
    [:dy, :dx], # up + left
    [:dy, :dx], # up + right
    [:dy, :dx], # down + left
    [:dy, :dx]  # down + right
  ].freeze

  def horizontal_dirs
    # getter for HORIZONTAL_DIRS
    HORIZONTAL_DIRS
  end

  def diagonal_dirs
    # getter for DIAGONAL_DIRS
    DIAGONAL_DIRS
  end

  def moves
    possible_moves = []
    .each do |dx, dy|
      possible_moves << self.grow_unblocked_moves_in_dir(dx, dy)
    end
    possible_moves
  end
#this method is adding moves to the full moves array
    #depending on the piece, we will take the appropriate DIR_ARRAY and iterate
    #through each direction adding it to the full moves array until we hit an
    #invalid move, then we will go to the next element . . . until all possible
    #moves have been found

  private 

  def move_dirs
    raise NotImplementedError
  end

  def grow_unblocked_moves_in_dir(dx, dy)
    #keep adding the array in the direction until pos is not valid
    valid_moves = []
     
    move_dirs.each do |(x, y)|
      new_pos = [x + dx, y + dy]

      while board.valid_pos?(new_pos)
        
      if board.empty?(new_pos)
        valid_moves << new_pos
      elsif board[pos].color != color
        valid_moves << pos
      end
    end
    valid_moves
    end

    valid_moves
  end

end