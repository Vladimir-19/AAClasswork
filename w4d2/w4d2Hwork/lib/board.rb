class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2
    @cups = Array.new(14){Array.new}
  end

  def place_stones
     @cups.each_with_index do |cup, idx| 
      while idx != 6 || idx != 13
      4.times do
        cup << :stone
      end 
    end
    end# helper method to #initialize every non-store cup with four stones each
  end

  def valid_move?(start_pos)
    raise "Not valid move" if start_pos > 12 || start_pos < 0
    raise "Starting cup is empty" if @cups[start_pos].empty?
  end

  def make_move(start_pos, current_player_name)
    i = start_pos
    until @cups[start_pos].empty?
      i += 1
      i = 0 if i > 13
      if i == 6 
        @cups[6] << @cups[start_pos].pop if current_player_name == @name1
      elsif i == 13 
        @cup[13] << @cups[start_pos].pop if current_player_name == @name2
      else
         @cups[cup_idx] << @cups[start_pos].pop
      end
    end
    next_turn(cup_idx)
  end

  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
     if ending_cup_idx == 6 || ending_cup_idx == 13
      :prompt
    elsif @cups[ending_cup_idx].count == 1
      :switch
    else
      ending_cup_idx
    end

  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    @cups.take(6).all? {|sub| sub.empty?} || @cups[7..12].all? {|sub| sub.empty?}

  end

  def winner
    count1 = @cups[6].count 
    count2 = @cups[13].count 
    if player1_count == player2_count
      return "drw"
    else 
      player1_count > player2_count ? @name1 : @name2
    end
  end
end
