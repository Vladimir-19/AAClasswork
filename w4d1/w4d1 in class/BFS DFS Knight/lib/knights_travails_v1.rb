require_relative './00_tree_node.rb'

class KnightPathFinder

    attr_writer :starting_pos, :considered_pos

    def self.valid_moves(pos)
        row, col = pos
        valid_moves_arr = []

        var1 = [(row - 1), (col - 2)] 
        valid_moves_arr << var1 if (var1[0] >= 0 && var1[0]<= 7) && (var1[1] >= 0 && var1[1] <= 7) 
        var2 = [(row + 1), (col - 2)] 
        valid_moves_arr << var2 if (var2[0] >= 0 && var2[0]<= 7) && (var2[1] >= 0 && var2[1] <= 7) 
        var3 = [(row + 2), (col - 1)] 
        valid_moves_arr << var3 if (var3[0] >= 0 && var3[0]<= 7) && (var3[1] >= 0 && var3[1] <= 7) 
        var4 = [(row + 2), (col + 1)] 
        valid_moves_arr << var4 if (var4[0] >= 0 && var4[0]<= 7) && (var4[1] >= 0 && var4[1] <= 7) 
        var5 = [(row + 1), (col + 2)] 
        valid_moves_arr << var5 if (var5[0] >= 0 && var5[0]<= 7) && (var5[1] >= 0 && var5[1] <= 7) 
        var6 = [(row - 1), (col + 2)] 
        valid_moves_arr << var6 if (var6[0] >= 0 && var6[0]<= 7) && (var6[1] >= 0 && var6[1] <= 7) 
        var7 = [(row - 2), (col + 1)] 
        valid_moves_arr << var7 if (var7[0] >= 0 && var7[0]<= 7) && (var7[1] >= 0 && var7[1] <= 7) 
        var8 = [(row - 2), (col - 1)] 
        valid_moves_arr << var8 if (var8[0] >= 0 && var8[0]<= 7) && (var8[1] >= 0 && var8[1] <= 7) 

        valid_moves_arr
        

    end


    def initialize(starting_pos)
        @starting_pos = PolyTreeNode.new(starting_pos)
        @considered_pos = [starting_pos]
    end

    def new_move_positions(pos)
        #new_move = KnightPathFinder.valid_moves
        move = self.class.valid_moves(pos)
        new_move = move.reject {|sub| considered_pos.include?(sub)}
        new_move.each {|sub| considered_pos << sub}
        new_move #might need to chenge it
    end
   
    def build_move_tree
        arr = [starting_pos]

        until arr.length == 0
        el = arr.shift 
            new_move_positions(el.value).each do |new_pos| 
                node = PolyTreeNode.new(new_pos)
                el.add_child(node)
                arr.push(new_pos)
            end
        end
    end
end

p KnightPathFinder.valid_moves([1, 1])

# def bfs(target_value)
#         arr = [self]
        
#         until arr.length == 0
#             el = arr.shift 
#             if el.value != target_value 
#                 if !el.children.empty?
#                     el.children.each {|child| arr << child}
#                 end
#             else 
#                 return el
#             end
#         end
#         nil 
#     end